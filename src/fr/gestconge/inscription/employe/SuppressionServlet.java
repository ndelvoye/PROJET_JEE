package fr.gestconge.inscription.employe;

import fr.gestconge.demande.Demande;
import fr.gestconge.demande.DemandeServiceImpl;
import fr.gestconge.rhoom.Rhoom;
import fr.gestconge.rhoom.RhoomImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

public class SuppressionServlet extends HttpServlet {
    private static final String PARAM_DATE_DEMANDE = "dtCreation";
    private static final String SESSION_DEMANDES = "demandes";

    private static final String VUE = "/vues_Standard/VueGlobale_MesDemandes_Standard.jsp";

    /*
     * Méthode utilitaire qui retourne null si un paramètre est vide, et son
     * contenu sinon.
     */
    private static String getValeurParametre(HttpServletRequest request, String nomChamp) {
        String valeur = request.getParameter(nomChamp);
        if (valeur == null || valeur.trim().length() == 0) {
            return null;
        } else {
            return valeur;
        }
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Rhoom rhoom = new RhoomImpl();
        DemandeServiceImpl demandeService = new DemandeServiceImpl();

        /* Récupération du paramètre */
        String dtCreation = getValeurParametre(request, PARAM_DATE_DEMANDE);

        /* Récupération de la Map des demandes enregistrées en session */
        HttpSession session = request.getSession();
        Map<String, Demande> demandes = (HashMap<String, Demande>) session.getAttribute(SESSION_DEMANDES);

        /* Si la date de la demande et la Map des demandes ne sont pas vides */
        if (dtCreation != null && demandes != null) {
            /* Alors suppression de la demande de la Map */
            demandes.remove(dtCreation);
            /* Et remplacement de l'ancienne Map en session par la nouvelle */
            session.setAttribute(SESSION_DEMANDES, null);
            rhoom.removeDemandes(demandes.get(dtCreation));
        }

        /* Redirection vers la fiche récapitulative */
        response.sendRedirect(request.getContextPath() + VUE);
    }
}
