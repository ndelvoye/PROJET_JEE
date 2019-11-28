package fr.gestconge.servlet;


import fr.gestconge.bean.Demande;
import fr.gestconge.bean.Employe;
import fr.gestconge.dao.DemandeDAO;
import fr.gestconge.dao.EmployeDAO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class StatistiqueServlet extends javax.servlet.http.HttpServlet {
    public static final String VUE = "/vues/RH/VueGlobale_Statistique_RH.jsp";

    private void doProcess(HttpServletRequest request, HttpServletResponse
            response) {

        EmployeDAO empDAO = new EmployeDAO();
        List<Employe> listeEmployes = empDAO.getAll();
        request.setAttribute("listeEmployes", listeEmployes);

        DemandeDAO demDAO = new DemandeDAO();
        List<Demande> listeDemande = demDAO.getAll();
        request.setAttribute("listeDemande", listeDemande);


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
