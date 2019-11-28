package fr.gestconge.formulaire;

import fr.gestconge.bean.Compteur;
import fr.gestconge.bean.Demande;
import fr.gestconge.bean.Employe;
import fr.gestconge.dao.CompteurDAO;
import fr.gestconge.utils.TypeConges;

import javax.servlet.http.HttpServletRequest;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;


public final class DemandeFormulaire {
    private String resultat;
    private Map<String, String> erreurs = new HashMap<>();

    /*
     * Méthode utilitaire qui retourne null si un champ est vide, et son contenu
     * sinon.
     */
    private static String getValeurChamp(HttpServletRequest request, String nomChamp) {
        String valeur = request.getParameter(nomChamp);
        if (valeur == null || valeur.trim().length() == 0) {
            return null;
        } else {
            return valeur;
        }
    }

    public Map<String, String> getErreurs() {
        return erreurs;
    }

    public String getResultat() {
        return resultat;
    }

    public Demande creerDemande(HttpServletRequest request) throws Exception {
        Demande demande = new Demande();
        String typeDemande = getValeurChamp(request, "typeDemande");
        String dateDebut = getValeurChamp(request, "dateDebut");
        String demiJourDebut = getValeurChamp(request, "demiJourDebut");
        String dateFin = getValeurChamp(request, "dateFin");
        String demiJourFin = getValeurChamp(request, "demiJourFin");

        // Vérifications
        if (typeDemande != null && dateDebut != null && demiJourDebut != null && dateFin != null && demiJourFin != null) {
            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss.SSS");
            Date parsedDate;
            // Traitement afin de déterminer l'heure de la dateDebut et la dateFin
            if (demiJourDebut.equals("demiJourDebutMatin")) {
                parsedDate = dateFormat.parse(dateDebut + " 11:00:00.000");
            } else if (demiJourDebut.equals("demiJourDebutJournee")) {
                parsedDate = dateFormat.parse(dateDebut + " 23:00:00.000");
            } else {
                throw new Exception("La valeur de demiJourMatin est erronée...");
            }
            Timestamp timestampDebut = new Timestamp(parsedDate.getTime());
            if (demiJourFin.equals("demiJourFinMatin")) {
                parsedDate = dateFormat.parse(dateFin + " 11:00:00.000");
            } else if (demiJourFin.equals("demiJourFinJournee")) {
                parsedDate = dateFormat.parse(dateFin + " 23:00:00.000");
            } else {
                throw new Exception("La valeur de demiJourFin est erronée...");
            }
            Timestamp timestampFin = new Timestamp(parsedDate.getTime());

            // Vérifier que les dates entrées sont > à aujourd'hui
            Timestamp now = new java.sql.Timestamp(Calendar.getInstance().getTime().getTime());
            if (timestampDebut.after(now) && timestampFin.after(now)) {
                if (timestampDebut.before(timestampFin)) {
                } else {
                    throw new Exception("La date de début se situe après la date de fin...");
                }
            } else {
                throw new Exception("Les dates entrées ne sont pas cohérentes avec la date du jour.");
            }

            if (TimeUnit.MILLISECONDS.toHours(timestampDebut.getTime() - now.getTime()) < 48)
                throw new Exception("Un congé doit être posé plus de 48 heures avant son début.");

            // Vérifier si l'employé possède assez de congés dans son compteur
            CompteurDAO compteurDAO = new CompteurDAO();
            Employe utilisateur = (Employe) request.getSession().getAttribute("utilisateur");
            Compteur compteurUser = compteurDAO.getByEmail(utilisateur.getEmail());
            Integer nbCongesDuType;
            if (typeDemande.equals(TypeConges.RTT.getTypeConge())) { // RTT
                nbCongesDuType = compteurUser.getRtt();
            } else if (typeDemande.equals(TypeConges.CongesAnnuels.getTypeConge())) { // Congés annuels
                nbCongesDuType = compteurUser.getCongesAnnuels();
            } else if (typeDemande.equals(TypeConges.EnfantMalade.getTypeConge())) { // Enfant malade
                nbCongesDuType = compteurUser.getEnfantMalade();
            } else if (typeDemande.equals(TypeConges.Famille.getTypeConge())) { // Famille
                nbCongesDuType = compteurUser.getFamille();
            } else {
                throw new Exception("Ce type de congé n'existe pas...");
            }

            long diffMillis = timestampFin.getTime() - timestampDebut.getTime();
            long diffHour = TimeUnit.MILLISECONDS.toHours(diffMillis);

            // Une unité de congé = une demi-journée de congé
            if ((nbCongesDuType - diffHour / 12) < 0) {
                throw new Exception("Vous ne possédez pas assez de congés de ce type.");
            } else {
                demande.setType(typeDemande);
                demande.setDateDebut(timestampDebut);
                demande.setDateFin(timestampFin);
            }
        } else {
            throw new Exception("Une valeur du formulaire est nulle.");
        }

        if (erreurs.isEmpty()) {
            resultat = "Succès de la création de la demande.";
        } else {
            resultat = "Échec de la création de la demande.";
        }
        return demande;
    }

    public String[] getTableauModifsDemande(HttpServletRequest request) throws Exception {
        String[] tableauModifs = new String[5];
        String typeDemande = getValeurChamp(request, "typeDemande");
        String dateDebut = getValeurChamp(request, "dateDebut");
        String demiJourDebut = getValeurChamp(request, "demiJourDebut");
        String dateFin = getValeurChamp(request, "dateFin");
        String demiJourFin = getValeurChamp(request, "demiJourFin");

        // Vérifications
        if (typeDemande != null && dateDebut != null && demiJourDebut != null && dateFin != null && demiJourFin != null) {
            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss.SSS");
            Date parsedDate;
            // Traitement afin de déterminer l'heure de la dateDebut et la dateFin
            if (demiJourDebut.equals("demiJourDebutMatin")) {
                parsedDate = dateFormat.parse(dateDebut + " 11:00:00.000");
            } else if (demiJourDebut.equals("demiJourDebutJournee")) {
                parsedDate = dateFormat.parse(dateDebut + " 23:00:00.000");
            } else {
                throw new Exception("La valeur de demiJourMatin est erronée...");
            }
            Timestamp timestampDebut = new Timestamp(parsedDate.getTime());
            if (demiJourFin.equals("demiJourFinMatin")) {
                parsedDate = dateFormat.parse(dateFin + " 11:00:00.000");
            } else if (demiJourFin.equals("demiJourFinJournee")) {
                parsedDate = dateFormat.parse(dateFin + " 23:00:00.000");
            } else {
                throw new Exception("La valeur de demiJourFin est erronée...");
            }
            Timestamp timestampFin = new Timestamp(parsedDate.getTime());

            // Vérifier que les dates entrées sont > à aujourd'hui
            Timestamp now = new java.sql.Timestamp(Calendar.getInstance().getTime().getTime());
            if (timestampDebut.after(now) && timestampFin.after(now)) {
                if (timestampDebut.before(timestampFin)) {
                } else {
                    throw new Exception("La date de début se situe après la date de fin...");
                }
            } else {
                throw new Exception("Les dates entrées ne sont pas cohérentes avec la date du jour.");
            }

            if (TimeUnit.MILLISECONDS.toHours(timestampDebut.getTime() - now.getTime()) < 48)
                throw new Exception("Un congé doit être posé plus de 48 heures avant son début.");

            // Vérifier si l'employé possède assez de congés dans son compteur
            CompteurDAO compteurDAO = new CompteurDAO();
            Employe utilisateur = (Employe) request.getSession().getAttribute("utilisateur");
            Compteur compteurUser = compteurDAO.getByEmail(utilisateur.getEmail());
            Integer nbCongesDuType;
            if (typeDemande.equals(TypeConges.RTT.getTypeConge())) { // RTT
                nbCongesDuType = compteurUser.getRtt();
            } else if (typeDemande.equals(TypeConges.CongesAnnuels.getTypeConge())) { // Congés annuels
                nbCongesDuType = compteurUser.getCongesAnnuels();
            } else if (typeDemande.equals(TypeConges.EnfantMalade.getTypeConge())) { // Enfant malade
                nbCongesDuType = compteurUser.getEnfantMalade();
            } else if (typeDemande.equals(TypeConges.Famille.getTypeConge())) { // Famille
                nbCongesDuType = compteurUser.getFamille();
            } else {
                throw new Exception("Ce type de congé n'existe pas...");
            }

            long diffMillis = timestampFin.getTime() - timestampDebut.getTime();
            long diffHour = TimeUnit.MILLISECONDS.toHours(diffMillis);

            // Une unité de congé = une demi-journée de congé
            if ((nbCongesDuType - diffHour / 12) < 0) {
                throw new Exception("Vous ne possédez pas assez de congés de ce type.");
            } else {
                tableauModifs[0] = typeDemande;
                tableauModifs[1] = String.valueOf(timestampDebut);
                tableauModifs[2] = String.valueOf(timestampFin);
                tableauModifs[3] = "0";
                tableauModifs[4] = null;
            }
        } else {
            throw new Exception("Une valeur du formulaire est nulle.");
        }

        if (erreurs.isEmpty()) {
            resultat = "Succès de la modification de la demande.";
        } else {
            resultat = "Échec de la modification de la demande.";
        }
        return tableauModifs;
    }
}