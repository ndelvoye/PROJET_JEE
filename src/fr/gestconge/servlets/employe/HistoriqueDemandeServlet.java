package fr.gestconge.servlets.employe;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HistoriqueDemandeServlet extends HttpServlet {
    public static final String ATT_DEMANDE = "demande";
    public static final String ATT_FORM     = "form";
    public static final String VUE          = "/VueGlobale_MesDemandes_Standard.jsp";

    public void doGet( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
        /* À la réception d'une requête GET, affichage de la liste des commandes */
        this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );
    }
}