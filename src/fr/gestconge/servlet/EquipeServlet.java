package fr.gestconge.servlet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class EquipeServlet extends javax.servlet.http.HttpServlet {
    public static final String ATT_SESSION_USER = "sessionUtilisateur";
    private static final String VUE = "/vues/leader/VueGlobale_Equipe_TeamLeader.jsp";

    private void doProcess(HttpServletRequest request, HttpServletResponse
            response) {
        HttpSession session = request.getSession();
        //session.getAttribute(ATT_SESSION_USER, "sessionUtilisateur");

        //List<Demande>teamDemandes=rhoom.getAllByService();
        //request.setAttribute("teamDemandes", teamDemandes);
        RequestDispatcher rd =
                getServletContext().getRequestDispatcher(VUE);
        try {
            rd.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doProcess(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doProcess(request, response);
    }
}
