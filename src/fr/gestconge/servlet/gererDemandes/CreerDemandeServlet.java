package fr.gestconge.servlet.gererDemandes;

import fr.gestconge.bean.Demande;
import fr.gestconge.bean.Employe;
import fr.gestconge.dao.DemandeDAO;
import fr.gestconge.formulaire.DemandeFormulaire;
import fr.gestconge.utils.Vues;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Calendar;

@WebServlet("/CreerDemande")
public class CreerDemandeServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Employe utilisateur = (Employe) session.getAttribute("utilisateur");
        if (utilisateur != null) {
            this.getServletContext().getRequestDispatcher(Vues.CreerDemande.getLien()).forward(request, response);
        } else {
            response.sendRedirect("Connexion");
        }
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Employe utilisateur = (Employe) session.getAttribute("utilisateur");
        DemandeFormulaire form = new DemandeFormulaire();

        // Traitement de la requête et récupération du bean en résultant
        Demande demande = null;
        try {
            demande = form.creerDemande(request);
        } catch (Exception e) {
            e.printStackTrace();
        }

        if (form.getErreurs().isEmpty() && demande != null) { // S'il n'y a pas eu d'errreurs
            // On termine les complétions
            demande.setEtat((short) 0);
            demande.setDateCreation(new java.sql.Timestamp(Calendar.getInstance().getTime().getTime()));
            demande.setEmailEmploye(utilisateur.getEmail());

            // On insère la nouvelle demande en BDD
            DemandeDAO demandeDAO = new DemandeDAO();
            demandeDAO.save(demande);

            // On redirige l'utilisateur vers la liste de ses demandes
            response.sendRedirect("MesDemandes");
        } else { // Sinon
            request.setAttribute("form", form);

            // On redirige l'utilisateur vers le formulaire avec les différentes erreurs obtenues
            this.getServletContext().getRequestDispatcher(Vues.CreerDemande.getLien()).forward(request, response);
        }
    }
}