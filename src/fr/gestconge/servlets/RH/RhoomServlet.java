package fr.gestconge.servlets;
import fr.gestconge.DAO.Rhoom;
import fr.gestconge.DAO.RhoomImpl;
import fr.gestconge.classes.beans.Demande;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class RhoomServlet extends javax.servlet.http.HttpServlet{
    public static final String VUE    = "/rhoom.jsp";

    private void doProcess(HttpServletRequest request, HttpServletResponse
            response) {
        Rhoom rhoom = new RhoomImpl();
        List<Demande>listeDemandes= rhoom.getAllDemandes();
        request.setAttribute("listeDemandes", listeDemandes);
        RequestDispatcher rd =
                getServletContext().getRequestDispatcher(VUE);
        try {
            rd.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
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
