package fr.gestconge.servlet;

import fr.gestconge.bean.Employe;
import fr.gestconge.formulaire.ConnexionFormulaire;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/Connexion")
public class ConnexionServlet extends HttpServlet {
    private static final String ATT_FORM = "form";
    private static final String ATT_SESSION_USER = "utilisateur";

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        Employe utilisateur = (Employe) request.getSession().getAttribute(ATT_SESSION_USER);
        if (utilisateur != null) { // Si un utilisateur est déjà connecté
            response.sendRedirect("Agenda"); // On le redirigé vers son agenda
        } else { // Sinon on affiche le formulaire de connexion
            request.getRequestDispatcher("/vues/Connexion.jsp").forward(request, response);
        }
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Préparation de l'objet formulaire
        ConnexionFormulaire form = new ConnexionFormulaire();

        // Traitement de la requête et récupération du bean en résultant
        Employe utilisateur = form.connecterUtilisateur(request);

        if (form.getErreurs().isEmpty()) { // S'il n'y a pas d'erreurs
            // On le redirige vers son agenda
            request.getSession().setAttribute(ATT_SESSION_USER, utilisateur);
            response.sendRedirect("Agenda");
        } else {
            request.setAttribute(ATT_FORM, form);
            request.getRequestDispatcher("/vues/Connexion.jsp").forward(request, response);
        }
    }
}




