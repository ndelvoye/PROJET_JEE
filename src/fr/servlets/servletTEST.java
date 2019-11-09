package fr.servlets;

import fr.gestconge.demande.DemandeService;
import fr.gestconge.demande.DemandeServiceImpl;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;

public class servletTEST extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        /*this.getServletContext().getRequestDispatcher( "/web/vues/jspTEST.jsp" ).forward( req, resp );
         */
        /*resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();
        out.println("<html><body><h1>Hello</h1></body></html>");*/



        String message = "Transmission de variables : OK !";
        req.setAttribute( "test", message );

        DemandeService DemandeService;
        DemandeService = new DemandeServiceImpl();


        List l = DemandeService.getAllDemande();
        //req.setAttribute( "liste_demande", l );

        this.getServletContext().getRequestDispatcher( "/jspTEST.jsp" ).forward( req, resp);





    }
}