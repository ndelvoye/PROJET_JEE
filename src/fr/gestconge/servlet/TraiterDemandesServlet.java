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

@WebServlet("/TraiterDemandes")
public class TraiterDemandesServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Employe utilisateur = (Employe) session.getAttribute("utilisateur");
        if (utilisateur != null && utilisateur.getFonction().equals("RH")) {
            DemandeDAO demandeDAO = new DemandeDAO();
            // On récupère toutes les demandes ayant un état "EN ATTENTE" en base de données
            List<Demande> listeDemandesNonTraitees = demandeDAO.getAll().stream().filter(d -> d.getEtat() == 0).collect(Collectors.toList());
            if (!listeDemandesNonTraitees.isEmpty()) request.setAttribute("listeDemandes", listeDemandesNonTraitees);
            this.getServletContext().getRequestDispatcher(Vues.TraiterDemandes.getLien()).forward(request, response);
        } else {
            response.sendRedirect("Connexion");
        }
    }
}