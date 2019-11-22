package fr.gestconge.formulaire;

import fr.gestconge.bean.Demande;

import javax.servlet.http.HttpServletRequest;
import java.sql.Timestamp;
import java.util.HashMap;
import java.util.Map;


public final class DemandeFormulaire {

    private static final String CHAMP_NOM = "nom_demandeur";
    private static final String CHAMP_PRENOM = "prenom_demandeur";
    private static final String CHAMP_DATE_DEBUT = "dtDebut";
    private static final String CHAMP_DATE_FIN = "dtFin";
    private static final String CHAMP_DATE_CREATION = "dtCreation";
    private static final String CHAMP_TYPE_DEMANDE = "typeDemande";
    private static final String CHAMP_STATUT_DEMANDE = "statutDemande";

    private static final String FORMAT_DATE = "dd-MM-yyyy HH:mm:ss";

    private String resultat;
    private Map<String, String> erreurs = new HashMap<String, String>();

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

    public Demande creerDemande(HttpServletRequest request) {
        String typeDemande = getValeurChamp(request, CHAMP_TYPE_DEMANDE);
        String dtDebut = getValeurChamp(request, CHAMP_DATE_DEBUT);
        String dtFin = getValeurChamp(request, CHAMP_DATE_FIN);
        String nom = getValeurChamp(request, CHAMP_NOM);
        String prenom = getValeurChamp(request, CHAMP_PRENOM);

        // Noter la date de création de la demande
        Demande demande = new Demande();
        demande.setDateCreation(new Timestamp(2000, 10, 10, 10, 10, 10, 10));
        demande.setEtat(true); // statut 0 en cours de validation

        try {
            validationNom(nom);
        } catch (Exception e) {
            setErreur(CHAMP_NOM, e.getMessage());
        }
        try {
            validationPrenom(prenom);
        } catch (Exception e) {
            setErreur(CHAMP_PRENOM, e.getMessage());
        }

        //demande.setEmailEmploye(employeService.getEmployesByNomPrenom(nom, prenom).get(0).getEmail());

       /* try {
            validationDateDebut( dtDebut );
        } catch ( Exception e ) {
            setErreur( CHAMP_DATE_DEBUT, e.getMessage() );
        }*/


        String[] dtDebutInv = dtDebut.split("-");
        String[] res = new String[3];
        String tmp = "";
        for (int i = dtDebutInv.length - 1; i >= 0; i--) {
            res[dtDebutInv.length - 1 - i] = dtDebutInv[i];
        }
        for (int j = 0; j < res.length - 1; j++) {
            tmp = tmp + res[j] + "-";
        }
        tmp = tmp + res[res.length - 1];

        demande.setDateDebut(new Timestamp(2000, 10, 10, 10, 10, 10, 10));

        /*try {
            validationDateFin( dtFin );
        } catch ( Exception e ) {
            setErreur( CHAMP_DATE_FIN, e.getMessage() );
        }*/
        String[] dtFinInv = dtFin.split("-");
        String[] res1 = new String[3];
        String tmp1 = "";
        for (int i = dtFinInv.length - 1; i >= 0; i--) {
            res1[dtFinInv.length - 1 - i] = dtFinInv[i];
        }
        for (int j = 0; j < res1.length - 1; j++) {
            //tmp = join("-",res[j]);
            tmp1 = tmp1 + res1[j] + "-";
        }
        tmp1 = tmp1 + res1[res1.length - 1];
        demande.setDateFin(new Timestamp(2000, 10, 10, 10, 10, 10, 10));

        /*try {
            validationTypeDemande( typeDemande );
        } catch ( Exception e ) {
            setErreur( CHAMP_TYPE_DEMANDE, e.getMessage() );
        }*/
        demande.setType(typeDemande);

        if (erreurs.isEmpty()) {
            resultat = "Succès de la création de la demande.";
        } else {
            resultat = "Échec de la création de la demande.";
        }
        return demande;
    }

    private void validationNom(String nom) throws Exception {
        if (nom != null && nom.length() < 3) {
            throw new Exception("Le nom d'utilisateur doit contenir au moins 3 caractères.");
        }
    }

    private void validationPrenom(String prenom) throws Exception {
        if (prenom != null && prenom.length() < 3) {
            throw new Exception("Le nom d'utilisateur doit contenir au moins 3 caractères.");
        }
    }

    private void validationDateDebut(String dtDebut) throws Exception {
        if (dtDebut != null) {
            throw new Exception("La date de début n'est pas correct");
        }
    }

    private void validationDateFin(String dtFin) throws Exception {
        if (dtFin != null) {
            throw new Exception("La date de fin n'est pas correct");
        }
    }

    private void validationTypeDemande(String typeDemande) throws Exception {
        if (typeDemande != null) {
            throw new Exception("Le type de demande est invalide.");
        }
    }

    /*
     * Ajoute un message correspondant au champ spécifié à la map des erreurs.
     */
    private void setErreur(String champ, String message) {
        erreurs.put(champ, message);
    }
}