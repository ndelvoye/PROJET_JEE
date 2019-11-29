package fr.gestconge.servlet.traiterDemandes;

import fr.gestconge.bean.Compteur;
import fr.gestconge.bean.Demande;
import fr.gestconge.bean.Employe;
import fr.gestconge.dao.CompteurDAO;
import fr.gestconge.dao.DemandeDAO;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.concurrent.TimeUnit;

@WebServlet("/AccepterDemande")
public class AccepterServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession();
        Employe utilisateur = (Employe) session.getAttribute("utilisateur");
        if (utilisateur != null) {
            if (utilisateur.getService().equals("RH")) {
                String commentaire = request.getParameter("commentaire");
                DemandeDAO demandeDAO = new DemandeDAO();
                Demande demande = demandeDAO.getById(Integer.parseInt(request.getParameter("idDemande")));

                // Si le RH ne tente pas de valider sa propre demande (ou que c'est le DRH qui fait ça)
                if (!utilisateur.getEmail().equals(demande.getEmailEmploye()) || utilisateur.getFonction().equals("leader")) {
                    CompteurDAO compteurDAO = new CompteurDAO();
                    Compteur compteur = compteurDAO.getByEmail(demande.getEmailEmploye());
                    int nouveauNbConges = -1;

                    String[] tableauModifsCompteur = new String[5];
                    tableauModifsCompteur[0] = compteur.getEmailEmploye();
                    tableauModifsCompteur[1] = String.valueOf(compteur.getRtt());
                    tableauModifsCompteur[2] = String.valueOf(compteur.getCongesAnnuels());
                    tableauModifsCompteur[3] = String.valueOf(compteur.getEnfantMalade());
                    tableauModifsCompteur[4] = String.valueOf(compteur.getFamille());

                    switch (demande.getType()) {
                        case "RTT":
                            tableauModifsCompteur[1] = String.valueOf(Integer.parseInt(tableauModifsCompteur[1]) - (TimeUnit.MILLISECONDS.toHours((demande.getDateFin().getTime() - demande.getDateDebut().getTime())) / 12));
                            nouveauNbConges = Integer.parseInt(tableauModifsCompteur[1]);
                            break;
                        case "CONGANNU":
                            tableauModifsCompteur[2] = String.valueOf(Integer.parseInt(tableauModifsCompteur[2]) - (TimeUnit.MILLISECONDS.toHours((demande.getDateFin().getTime() - demande.getDateDebut().getTime())) / 12));
                            nouveauNbConges = Integer.parseInt(tableauModifsCompteur[2]);
                            break;
                        case "ENFMALAD":
                            tableauModifsCompteur[3] = String.valueOf(Integer.parseInt(tableauModifsCompteur[3]) - (TimeUnit.MILLISECONDS.toHours((demande.getDateFin().getTime() - demande.getDateDebut().getTime())) / 12));
                            nouveauNbConges = Integer.parseInt(tableauModifsCompteur[3]);
                            break;
                        case "FAMILLE":
                            tableauModifsCompteur[4] = String.valueOf(Integer.parseInt(tableauModifsCompteur[4]) - (TimeUnit.MILLISECONDS.toHours((demande.getDateFin().getTime() - demande.getDateDebut().getTime())) / 12));
                            nouveauNbConges = Integer.parseInt(tableauModifsCompteur[4]);
                            break;
                    }
                    if (nouveauNbConges >= 0) {
                        compteurDAO.update(compteur, tableauModifsCompteur);
                        String[] tableauModifsDemande = new String[5];
                        tableauModifsDemande[0] = demande.getType();
                        tableauModifsDemande[1] = String.valueOf(demande.getDateDebut());
                        tableauModifsDemande[2] = String.valueOf(demande.getDateFin());
                        tableauModifsDemande[3] = String.valueOf(1); // On passe à l'état "Validé"
                        tableauModifsDemande[4] = commentaire; // On insère le commentaire
                        demandeDAO.update(demande, tableauModifsDemande);

                    } else {
                        // Le nombre de congés disponible dans le compte de l'utilisateur est insuffisant...")
                    }
                    response.sendRedirect("TraiterDemandes");
                } else {
                    // un RH standard cherche à valider sa propre demande...
                    response.sendRedirect("TraiterDemandes");
                }
            } else {
                // un employé n'appartenant pas au service RH cherche à valider sa demande...
                response.sendRedirect("Agenda");
            }
        } else {
            response.sendRedirect("Connexion");
        }
    }
}