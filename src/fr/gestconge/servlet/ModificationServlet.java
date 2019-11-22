package fr.gestconge.servlet;

import fr.gestconge.bean.Demande;
import fr.gestconge.formulaire.DemandeFormulaire;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

public class ModificationServlet extends HttpServlet {

    public static final String PARAM_DATE_DEMANDE = "dtCreation";
    public static final String ATT_DEMANDE = "old";
    public static final String SESSION_DEMANDES = "demandes";
    public static final String ATT_FORM = "form";
    public static final String VUE_SUCCES = "/vues/standard/VueGlobale_ConfirmationFormulaire_Standard.jsp";
    public static final String VUE = "/modif.jsp";

    /*
     * Méthode utilitaire qui retourne null si un paramètre est vide, et son
     * contenu sinon.
     */
    private static String getValeurParametre(HttpServletRequest request, String nomChamp) {
        String valeur = request.getParameter(ModificationServlet.PARAM_DATE_DEMANDE);
        if (valeur == null || valeur.trim().length() == 0) {
            return null;
        } else {
            return valeur;
        }
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /* Récupération du paramètre */
        String dtCreation = getValeurParametre(request, PARAM_DATE_DEMANDE);

        /* Récupération de la Map des demandes enregistrées en session */
        HttpSession session = request.getSession();
        Map<String, Demande> demandes = (HashMap<String, Demande>) session.getAttribute(SESSION_DEMANDES);

        /* Si la date de la demande et la Map des demandes ne sont pas vides */
        if (dtCreation != null && demandes != null) {
            Demande old;
            old = demandes.get(dtCreation);

            /* Et remplacement de l'ancienne Map en session par la nouvelle */
            session.setAttribute(SESSION_DEMANDES, demandes);
            request.setAttribute(ATT_DEMANDE, old);
        }

        /* Redirection vers la fiche récapitulative */

        response.sendRedirect(request.getContextPath() + VUE);
        //this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /* Préparation de l'objet formulaire */
        DemandeFormulaire form = new DemandeFormulaire();

        /* Traitement de la requête et récupération du bean en résultant */
        Demande demande = form.creerDemande(request);

        /* Ajout du bean et de l'objet métier à l'objet requête */
        request.setAttribute(ATT_DEMANDE, demande);
        request.setAttribute(ATT_FORM, form);

        if (form.getErreurs().isEmpty()) {
            HttpSession session = request.getSession();
            /* Ensuite récupération de la map des demandes dans la session */
            Map<String, Demande> demandes = (HashMap<String, Demande>) session.getAttribute(SESSION_DEMANDES);
            /* Si aucune map n'existe, alors initialisation d'une nouvelle map */
            if (demandes == null) {
                demandes = new HashMap<>();
            }
            /* Puis ajout de la commande courante dans la map */
            demandes.put(demande.getDateCreation().toString(), demande);
            /* Et enfin (ré)enregistrement de la map en session */
            session.setAttribute(SESSION_DEMANDES, demandes);

            /* Si aucune erreur, alors affichage de la fiche récapitulative */
            this.getServletContext().getRequestDispatcher(VUE_SUCCES).forward(request, response);
        } else {
            /* Sinon, ré-affichage du formulaire de création avec les erreurs */
            this.getServletContext().getRequestDispatcher(VUE).forward(request, response);
        }
    }
}
