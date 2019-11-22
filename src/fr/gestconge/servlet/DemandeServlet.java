package fr.gestconge.servlet;

import fr.gestconge.bean.Demande;
import fr.gestconge.bean.Employe;
import fr.gestconge.formulaire.DemandeFormulaire;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

public class DemandeServlet extends HttpServlet {
    private static final String ATT_DEMANDE = "demande";
    private static final String ATT_FORM = "form";
    private static final String SESSION_DEMANDES = "demandes";
    private static final String ATT_SESSION_USER = "sessionUtilisateur";
    private static final String VUE_SUCCES_STANDARD = "/vues/standard/VueGlobale_ConfirmationFormulaire_Standard.jsp";
    private static final String VUE_STANDARD = "/vues/standard/VueGlobale_Formulaire_Standard.jsp";


    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /* À la réception d'une requête GET, simple affichage du formulaire */
        this.getServletContext().getRequestDispatcher(VUE_STANDARD).forward(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        /* Préparation de l'objet formulaire */
        DemandeFormulaire form = new DemandeFormulaire();

        /* Traitement de la requête et récupération du bean en résultant */
        Demande demande = form.creerDemande(request);
        Employe employe = (Employe) session.getAttribute(ATT_SESSION_USER);
        demande.setEmailEmploye(employe.getEmail());
        /* Ajout du bean et de l'objet métier à l'objet requête */
        request.setAttribute(ATT_DEMANDE, demande);
        request.setAttribute(ATT_FORM, form);


        if (form.getErreurs().isEmpty()) {

            //session.getAttribute( ATT_SESSION_USER, demande. );
            /* Ensuite récupération de la map des demandes dans la session */
            Map<String, Demande> demandes = (HashMap<String, Demande>) session.getAttribute(SESSION_DEMANDES);
            /* Si aucune map n'existe, alors initialisation d'une nouvelle map */
            if (demandes == null) {
                demandes = new HashMap<>();
            }
            /* Puis ajout de la demande courante dans la map */
            demandes.put(demande.getDateCreation().toString(), demande);
            /* Et enfin (ré)enregistrement de la map en session */
            session.setAttribute(SESSION_DEMANDES, demandes);

            /* Si aucune erreur, alors affichage de la fiche récapitulative */
            this.getServletContext().getRequestDispatcher(VUE_SUCCES_STANDARD).forward(request, response);
        } else {
            /* Sinon, ré-affichage du formulaire de création avec les erreurs */
            this.getServletContext().getRequestDispatcher(VUE_STANDARD).forward(request, response);
        }
    }
}