package fr.gestconge.servlets.leader;
import fr.gestconge.DAO.Mock.Company;
import fr.gestconge.DAO.Mock.CompanyImpl;
import fr.gestconge.DAO.Mock.Rhoom;
import fr.gestconge.DAO.Mock.RhoomImpl;
import fr.gestconge.classes.beans.Demande;
import fr.gestconge.classes.beans.Employe;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class EquipeServlet extends javax.servlet.http.HttpServlet{
    public static final String VUE    = "/vues_Leader/VueGlobale_Equipe_TeamLeader.jsp";
    public static final String ATT_SESSION_USER         = "sessionUtilisateur";

    private void doProcess(HttpServletRequest request, HttpServletResponse
            response) {
        HttpSession session = request.getSession();
        //session.getAttribute(ATT_SESSION_USER, "sessionUtilisateur");
        Rhoom rhoom = new RhoomImpl();
        List<Demande>listeDemandes= rhoom.getAllDemandes();
        Company company = new CompanyImpl();
        List<Employe>listeEmployes=company.getAllUsers();

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
