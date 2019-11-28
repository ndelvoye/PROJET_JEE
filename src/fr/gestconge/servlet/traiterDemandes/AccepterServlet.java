package fr.gestconge.servlet.traiterDemandes;

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

@WebServlet("/AccepterDemande")
public class AccepterServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Employe utilisateur = (Employe) session.getAttribute("utilisateur");
        if(utilisateur != null) {
            String commentaire = request.getParameter("commentaire");
            DemandeDAO demandeDAO = new DemandeDAO();
            Demande demande = demandeDAO.getById(Integer.parseInt(request.getParameter("idDemande")));
            if (demande != null) {
                String[] tableauModifs = new String[5];
                tableauModifs[0] = demande.getType();
                tableauModifs[1] = String.valueOf(demande.getDateDebut());
                tableauModifs[2] = String.valueOf(demande.getDateFin());
                tableauModifs[3] = String.valueOf(1);
                tableauModifs[4] = commentaire;
                demandeDAO.update(demande, tableauModifs);
            }
            response.sendRedirect("TraiterDemandes");
        } else {
            response.sendRedirect("Connexion");
        }
    }
}