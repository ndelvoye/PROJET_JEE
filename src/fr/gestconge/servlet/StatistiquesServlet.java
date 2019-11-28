package fr.gestconge.servlet;


import fr.gestconge.bean.Demande;
import fr.gestconge.bean.Employe;
import fr.gestconge.dao.DemandeDAO;
import fr.gestconge.dao.EmployeDAO;
import fr.gestconge.utils.Vues;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet("/Statistiques")
public class StatistiquesServlet extends javax.servlet.http.HttpServlet {
    private void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Employe utilisateur = (Employe) session.getAttribute("utilisateur");
        if (utilisateur != null) {
            if (utilisateur.getService().equals("RH")) { // S'il s'agit d'un RH ou du DRH
                EmployeDAO employeDAO = new EmployeDAO();
                List<Employe> listeEmployes = employeDAO.getAll();
                request.setAttribute("listeEmployes", listeEmployes);

                DemandeDAO demandeDAO = new DemandeDAO();
                List<Demande> listeDemande = demandeDAO.getAll();
                request.setAttribute("listeDemande", listeDemande);

                // On affiche la page avec les graphiques
                this.getServletContext().getRequestDispatcher(Vues.Statistiques.getLien()).forward(request, response);
            } else {
                response.sendRedirect("Agenda"); // Sinon, on le redirige vers son agenda
            }
        } else {
            response.sendRedirect("Connexion");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doProcess(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doProcess(request, response);
    }
}
