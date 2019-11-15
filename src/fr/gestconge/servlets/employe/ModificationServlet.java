package fr.gestconge.servlets.employe;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import fr.gestconge.classes.beans.Demande;

public class ModificationServlet extends HttpServlet {

    public static final String PARAM_DATE_DEMANDE = "dtCreation";
    public static final String ATT_DEMANDE = "old";
    public static final String SESSION_DEMANDES   = "demandes";

    public static final String VUE                 = "/modif.jsp";

    public void doGet( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
        /* Récupération du paramètre */
        String dtCreation = getValeurParametre( request, PARAM_DATE_DEMANDE );

        /* Récupération de la Map des demandes enregistrées en session */
        HttpSession session = request.getSession();
        Map<String, Demande> demandes = (HashMap<String, Demande>) session.getAttribute(SESSION_DEMANDES);

        /* Si la date de la demande et la Map des demandes ne sont pas vides */
        if ( dtCreation != null && demandes != null ) {
            Demande old;
            old = demandes.get( dtCreation );
            /* Et remplacement de l'ancienne Map en session par la nouvelle */
            session.setAttribute( SESSION_DEMANDES, demandes );
            request.setAttribute(ATT_DEMANDE, old);
        }

        /* Redirection vers la fiche récapitulative */

        response.sendRedirect( request.getContextPath() + VUE );
        //this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );
    }

    /*
     * Méthode utilitaire qui retourne null si un paramètre est vide, et son
     * contenu sinon.
     */
    private static String getValeurParametre( HttpServletRequest request, String nomChamp ) {
        String valeur = request.getParameter(ModificationServlet.PARAM_DATE_DEMANDE);
        if ( valeur == null || valeur.trim().length() == 0 ) {
            return null;
        } else {
            return valeur;
        }
    }
}
