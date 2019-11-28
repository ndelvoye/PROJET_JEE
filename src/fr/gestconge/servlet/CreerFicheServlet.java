package fr.gestconge.servlet;

import fr.gestconge.bean.Employe;
import fr.gestconge.formulaire.InscriptionFormulaire;
import fr.gestconge.utils.Vues;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/CreerFiche")
public class CreerFicheServlet extends javax.servlet.http.HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Employe utilisateur = (Employe) session.getAttribute("utilisateur");
        if (utilisateur != null) {
            this.getServletContext().getRequestDispatcher(Vues.CreerFiche.getLien()).forward(request, response);
        } else {
            response.sendRedirect("Connexion");
        }
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Employe utilisateur = (Employe) session.getAttribute("utilisateur");
        if (utilisateur != null) {
            InscriptionFormulaire form = new InscriptionFormulaire();

            // Appel au traitement et à la validation de la requête
            // Récupération du nouvel employé
            Employe nouvelEmploye = form.inscrireUtilisateur(request);

            if (form.getErreurs().isEmpty()) {
                // Si aucune erreur, on retourne à la liste des employés
                getServletContext().getRequestDispatcher(Vues.ListeFiche.getLien()).forward(request, response);
            } else {
                // Sinon, on re-affiche le formulaire avec les erreurs
                request.setAttribute("form", form);
                getServletContext().getRequestDispatcher(Vues.CreerFiche.getLien()).forward(request, response);
            }
        } else {
            response.sendRedirect("Connexion");
        }
    }
}
