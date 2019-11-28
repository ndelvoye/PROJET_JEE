package fr.gestconge.servlet;

import fr.gestconge.bean.Compteur;
import fr.gestconge.bean.Employe;
import fr.gestconge.dao.CompteurDAO;
import fr.gestconge.dao.EmployeDAO;
import fr.gestconge.formulaire.InscriptionFormulaire;
import fr.gestconge.utils.Vues;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.text.ParseException;

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
            if (utilisateur.getService().equals("RH") && utilisateur.getFonction().equals("leader")) { // S'il sagit d'un DRH
                InscriptionFormulaire form = new InscriptionFormulaire();

                // Appel au traitement et à la validation de la requête
                // Récupération du nouvel employé
                Employe nouvelEmploye = null;
                try {
                    nouvelEmploye = form.inscrireUtilisateur(request);
                } catch (ParseException e) {
                    e.printStackTrace();
                }

                if (form.getErreurs().isEmpty() && nouvelEmploye != null) { // Si aucune erreur
                    // On enregistre l'employé en BDD
                    EmployeDAO employeDAO = new EmployeDAO();
                    nouvelEmploye.setAdresse("adresseEnDur");
                    employeDAO.save(nouvelEmploye);

                    CompteurDAO compteurDAO = new CompteurDAO();
                    Compteur compteurNouvelEmploye = new Compteur();
                    compteurNouvelEmploye.setEmailEmploye(nouvelEmploye.getEmail());
                    compteurNouvelEmploye.setRtt(10);
                    compteurNouvelEmploye.setCongesAnnuels(10);
                    compteurNouvelEmploye.setEnfantMalade(10);
                    compteurNouvelEmploye.setFamille(10);
                    compteurDAO.save(compteurNouvelEmploye);

                    // On retourne à la liste des employés
                    getServletContext().getRequestDispatcher(Vues.ListeFiche.getLien()).forward(request, response);
                } else {
                    // Sinon, on re-affiche le formulaire avec les erreurs
                    request.setAttribute("form", form);
                    getServletContext().getRequestDispatcher(Vues.CreerFiche.getLien()).forward(request, response);
                }
            } else {
                response.sendRedirect("Agenda");
            }
        } else {
            response.sendRedirect("Connexion");
        }
    }
}
