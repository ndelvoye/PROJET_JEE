package fr.gestconge.RH;

import fr.gestconge.demande.Demande;
import fr.gestconge.rhoom.Rhoom;
import fr.gestconge.rhoom.RhoomImpl;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class RhoomServlet extends javax.servlet.http.HttpServlet {
    public static final String VUE = "/vues_RH/VueGlobale_Rhoom_RH.jsp";

    private void doProcess(HttpServletRequest request, HttpServletResponse
            response) {
        Rhoom rhoom = new RhoomImpl();
        List<Demande> listeDemandes = rhoom.getAllDemandes();
        request.setAttribute("listeDemandes", listeDemandes);
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
