package fr.gestconge.servlet;

import fr.gestconge.bean.Demande;
import fr.gestconge.bean.Employe;
import fr.gestconge.dao.DemandeDAO;
import fr.gestconge.dao.EmployeDAO;
import fr.gestconge.utils.Vues;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@WebServlet("/ListeConges")
public class ListeCongesServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Employe utilisateur = (Employe) session.getAttribute("utilisateur");
        if (utilisateur != null && (utilisateur.getService().equals("RH") || utilisateur.getFonction().equals("leader"))) {
            DemandeDAO demandeDAO = new DemandeDAO();
            // On récupère toutes les demandes ayant un état "VALIDEES" en base de données
            List<Demande> listeConges = demandeDAO.getAll().stream().filter(d -> d.getEtat() == 1).collect(Collectors.toList());

            // Si la personne qui consulte la liste des congés EST UN CHEF D'EQUIPE mais pas DRH
            if(utilisateur.getFonction().equals("leader") && !utilisateur.getService().equals("RH")) {
                // On affiche que les congés de son équipe
                List<Demande> listeCongesFiltrees = new ArrayList<>();
                listeConges.forEach(c -> { // Pour chaque congé
                    EmployeDAO employeDAO = new EmployeDAO();
                    // Si on trouve la demande d'un membre de la même équipe que le chef d'équipe.
                    Employe employe = employeDAO.getByEmail(c.getEmailEmploye());
                    if(employe.getEquipe().equals(utilisateur.getEquipe())) listeCongesFiltrees.add(c);
                });
                listeConges = listeCongesFiltrees;
            }
            // S'il y a des congés validées qui n'appartiennent pas à la personne qui demande, on affiche
            if (!listeConges.isEmpty()) request.setAttribute("listeConges",  listeConges.stream().filter(c -> !c.getEmailEmploye().equals(utilisateur.getEmail())).collect(Collectors.toList()));

            this.getServletContext().getRequestDispatcher(Vues.ListeDemandes.getLien()).forward(request, response);
        } else {
            response.sendRedirect("Connexion");
        }
    }
}