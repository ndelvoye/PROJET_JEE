package fr.gestconge.servlets.RH;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class StatistiqueServlet extends HttpServlet {

    public static final String VUE_STATISTIQUE                 = "/vues_RH/VueGlobale_Statistique_RH.jsp";

    public void doGet(HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
        /* À la réception d'une requête GET, simple affichage du formulaire */
        this.getServletContext().getRequestDispatcher( VUE_STATISTIQUE ).forward( request, response );
    }
}
