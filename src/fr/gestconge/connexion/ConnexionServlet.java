package fr.gestconge.connexion;

import fr.gestconge.employe.Employe;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class ConnexionServlet extends HttpServlet {
    private static final String ATT_USER = "utilisateur";
    private static final String ATT_FORM = "form";
    private static final String ATT_SESSION_USER = "sessionUtilisateur";
    private static final String VUE_FORM = "/index.jsp";
    private static final String VUE_SUCCES = "/accesPublic.jsp";

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /* Affichage de la page de connexion */
        this.getServletContext().getRequestDispatcher(VUE_FORM).forward(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Préparation de l'objet formulaire
        ConnexionFormulaire form = new ConnexionFormulaire();

        // Traitement de la requête et récupération du bean en résultant
        Employe utilisateur = form.connecterUtilisateur(request);

        // Récupération de la session depuis la requête
        HttpSession session = request.getSession();

        /**
         * Si aucune erreur de validation n'a eu lieu, alors ajout du bean
         * Utilisateur à la session, sinon suppression du bean de la session.
         */
        if (form.getErreurs().isEmpty()) {
            session.setAttribute(ATT_SESSION_USER, utilisateur);
        } else {
            session.setAttribute(ATT_SESSION_USER, null);
        }

        // Stockage du formulaire et du bean dans l'objet request
        request.setAttribute(ATT_FORM, form);
        request.setAttribute(ATT_USER, utilisateur);

        RequestDispatcher rd =
                getServletContext().getRequestDispatcher(VUE_FORM);
        RequestDispatcher rd_2 =
                getServletContext().getRequestDispatcher(VUE_SUCCES);

        if (form.getErreurs().isEmpty()) {
            // Si aucune erreur, alors affichage de la fiche récapitulative
            rd_2.forward(request, response);
        } else {
            // Sinon, ré-affichage du formulaire
            // TODO : Afficher message erreur
            rd.forward(request, response);
        }
    }
}




