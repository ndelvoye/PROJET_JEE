package fr.gestconge.servlets.RH;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class ProfilServlet extends HttpServlet {

    public static final String VUE_PROFIL                 = "/vues_RH/VueGlobale_Profil_Standard.jsp";

    public void doGet(HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
        /* À la réception d'une requête GET, simple affichage du formulaire */
        this.getServletContext().getRequestDispatcher( VUE_PROFIL ).forward( request, response );
    }
}
