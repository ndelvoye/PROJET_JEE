package fr.gestconge.servlet;

import fr.gestconge.bean.Compteur;
import fr.gestconge.bean.Employe;
import fr.gestconge.dao.CompteurDAO;
import fr.gestconge.formulaire.ModifierProfilFormulaire;
import fr.gestconge.utils.Vues;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/MonProfil")
public class MonProfilServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Employe utilisateur = (Employe) session.getAttribute("utilisateur");
        if (utilisateur != null) {
            CompteurDAO compteurDAO = new CompteurDAO();
            Compteur compteur = compteurDAO.getByEmail(utilisateur.getEmail());
            request.setAttribute("compteur", compteur);
            this.getServletContext().getRequestDispatcher(Vues.MonProfil.getLien()).forward(request, response);
        } else {
            response.sendRedirect("Connexion");
        }
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession();
        Employe utilisateur = (Employe) session.getAttribute("utilisateur");
        if (utilisateur != null) {
            ModifierProfilFormulaire form = new ModifierProfilFormulaire();

            form.modifierMotDePasse(utilisateur, request.getParameter("password"), request.getParameter("passwordConfirm"));

            request.setAttribute("form", form);

            CompteurDAO compteurDAO = new CompteurDAO();
            Compteur compteur = compteurDAO.getByEmail(utilisateur.getEmail());
            request.setAttribute("compteur", compteur);

            response.sendRedirect("MonProfil");
        } else {
            response.sendRedirect("Connexion");
        }
    }
}