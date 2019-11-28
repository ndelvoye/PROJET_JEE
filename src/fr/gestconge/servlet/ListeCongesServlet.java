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
import java.util.stream.Collectors;

@WebServlet("/ListeConges")
public class ListeCongesServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Employe utilisateur = (Employe) session.getAttribute("utilisateur");
        if (utilisateur != null) {
            DemandeDAO demandeDAO = new DemandeDAO();
            // On récupère toutes les demandes ayant un état "VALIDEES" en base de données
            List<Demande> listeConges = demandeDAO.getAll().stream().filter(d -> d.getEtat() == 1).collect(Collectors.toList());
            if (!listeConges.isEmpty()) request.setAttribute("listeConges", listeConges);
            this.getServletContext().getRequestDispatcher(Vues.ListeDemandes.getLien()).forward(request, response);
        } else {
            response.sendRedirect("Connexion");
        }
    }
}