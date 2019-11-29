package fr.gestconge.servlet;

import fr.gestconge.bean.Employe;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/Agenda")
public class MonAgendaServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Employe utilisateur = (Employe) session.getAttribute("utilisateur");
        if (utilisateur != null) {
            this.getServletContext().getRequestDispatcher("/vues/MonAgenda.jsp").forward(request, response);
        } else {
            response.sendRedirect("Connexion");
        }
    }
}