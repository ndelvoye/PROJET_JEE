package fr.gestconge.servlet.gererDemandes;

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

@WebServlet("/SupprimerDemande")
public class SupprimerDemandeServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Employe utilisateur = (Employe) session.getAttribute("utilisateur");

        if (utilisateur != null) { // Si l'utilisateur est connecté
            DemandeDAO demandeDAO = new DemandeDAO();

            // On va chercher en base la demande qu'il souhaite supprimer
            Demande demande = demandeDAO.getById(Integer.parseInt(request.getParameter("idDemande")));

            // On vérifie qu'elle est bien en état "en cours de validation" et qu'elle lui appartient bien
            if (demande.getEtat() == 0 && demande.getEmailEmploye().equals(utilisateur.getEmail())) {
                // On la supprime
                demandeDAO.delete(demande);
            } else { // Sinon, on le déconnecte
                session.invalidate();
            }

            // On redirige l'utilisateur vers la liste de ses demandes
            response.sendRedirect("MesDemandes");
        } else { // Sinon on affiche le formulaire de connexion
            this.getServletContext().getRequestDispatcher(Vues.Connexion.getLien()).forward(request, response);
        }
    }
}
