package fr.gestconge.servlet.gererFiches;

import fr.gestconge.bean.Employe;
import fr.gestconge.dao.CompteurDAO;
import fr.gestconge.dao.DemandeDAO;
import fr.gestconge.dao.EmployeDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/SupprimerFiche")
public class SupprimerFicheServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Employe utilisateur = (Employe) session.getAttribute("utilisateur");

        if (utilisateur != null) {
            if (utilisateur.getService().equals("RH") && utilisateur.getFonction().equals("leader")) { // S'il s'agit du DRH
                EmployeDAO employeDAO = new EmployeDAO();
                DemandeDAO demandeDAO = new DemandeDAO();
                CompteurDAO compteurDAO = new CompteurDAO();
                String email = request.getParameter("email");

                // On supprime toutes les demandes de l'employé
                demandeDAO.getByEmailEmploye(email).forEach(demandeDAO::delete);

                // On supprime le compteur de l'employé
                compteurDAO.delete(compteurDAO.getByEmail(email));

                // On supprime l'employé
                employeDAO.delete(employeDAO.getByEmail(email));

                response.sendRedirect("ListeFiches");
            } else {
                response.sendRedirect("Agenda");
            }
        } else {
            response.sendRedirect("Connexion");
        }
    }
}
