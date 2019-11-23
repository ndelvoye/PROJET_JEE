package fr.gestconge.servlet;

import fr.gestconge.dao.CompteurDAO;
import fr.gestconge.dao.DemandeDAO;
import fr.gestconge.dao.EmployeDAO;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class TestServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            req.setAttribute("compteurDAO", new CompteurDAO());
            req.setAttribute("employeDAO", new EmployeDAO());
            req.setAttribute("demandeDAO", new DemandeDAO());
        } catch (Exception e) {
            e.printStackTrace();
        }

        this.getServletContext().getRequestDispatcher("/vues/test.jsp").forward(req, resp);
    }
}