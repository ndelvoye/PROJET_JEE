package fr.gestconge.servlet;

import fr.gestconge.bean.Demande;
import fr.gestconge.bean.Employe;
import fr.gestconge.dao.DemandeDAO;
import fr.gestconge.utils.Vues;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet("/MesDemandes")
public class MesDemandesServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Employe utilisateur = (Employe) session.getAttribute("utilisateur");
        if (utilisateur != null) {
            DemandeDAO demandeDAO = new DemandeDAO();
            List<Demande> listeDemandes = demandeDAO.getByEmailEmploye(utilisateur.getEmail());
            if (!listeDemandes.isEmpty()) request.setAttribute("listeDemandes", listeDemandes);
            this.getServletContext().getRequestDispatcher(Vues.MesDemandes.getLien()).forward(request, response);
        } else {
            response.sendRedirect("Connexion");
        }
    }
}