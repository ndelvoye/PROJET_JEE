package fr.gestconge.servlet;

import fr.gestconge.bean.Employe;
import fr.gestconge.dao.EmployeDAO;
import fr.gestconge.utils.Vues;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet("/ListeFiches")
public class ListeFichesServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Employe utilisateur = (Employe) session.getAttribute("utilisateur");
        if (utilisateur != null) {
            EmployeDAO employeDAO = new EmployeDAO();
            List<Employe> listeEmployes = employeDAO.getAll();
            if (!listeEmployes.isEmpty()) request.setAttribute("listeEmployes", listeEmployes);
            this.getServletContext().getRequestDispatcher(Vues.ListeFiche.getLien()).forward(request, response);
        } else {
            response.sendRedirect("Connexion");
        }
    }
}