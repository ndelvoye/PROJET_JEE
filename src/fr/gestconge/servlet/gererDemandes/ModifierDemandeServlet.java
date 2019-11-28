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

@WebServlet("/ModifierDemande")
public class ModifierDemandeServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Employe utilisateur = (Employe) session.getAttribute("utilisateur");
        if (utilisateur != null) {
            this.getServletContext().getRequestDispatcher(Vues.ModifierDemande.getLien()).forward(request, response);
        } else {
            response.sendRedirect("Connexion");
        }
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Employe utilisateur = (Employe) session.getAttribute("utilisateur");
        if (utilisateur != null) {
            DemandeFormulaire form = new DemandeFormulaire();

            // Traitement de la requête et récupération du bean en résultant
            DemandeDAO demandeDAO = new DemandeDAO();
            Demande demande = demandeDAO.getById(Integer.parseInt(request.getParameter("idDemande")));
            String[] tableauModifs = new String[5];
            tableauModifs[0] = demande.getType();
            tableauModifs[1] = String.valueOf(demande.getDateDebut());
            tableauModifs[2] = String.valueOf(demande.getDateFin());
            tableauModifs[3] = String.valueOf(demande.getEtat());
            tableauModifs[4] = demande.getCommentaire();

            try {
                tableauModifs = form.getTableauModifsDemande(request);
            } catch (Exception e) {
                e.printStackTrace();
            }

            if (form.getErreurs().isEmpty()) { // S'il n'y a pas eu d'errreurs
                // On modifie la demande en BDD
                demandeDAO.update(demande, tableauModifs);

                // On redirige l'utilisateur vers la liste de ses demandes
                response.sendRedirect("MesDemandes");
            } else { // Sinon
                request.setAttribute("form", form);

                // On redirige l'utilisateur vers le formulaire avec les différentes erreurs obtenues
                this.getServletContext().getRequestDispatcher(Vues.CreerDemande.getLien()).forward(request, response);
            }
        } else {
            response.sendRedirect("Connexion");
        }
    }
}