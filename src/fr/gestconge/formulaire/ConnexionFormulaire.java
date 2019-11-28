package fr.gestconge.formulaire;

import fr.gestconge.bean.Employe;
import fr.gestconge.dao.EmployeDAO;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;


public class ConnexionFormulaire {
    private static final String CHAMP_EMAIL = "email";
    private static final String CHAMP_PASS = "motdepasse";

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

    public String getResultat() {
        return resultat;
    }

    public Map<String, String> getErreurs() {
        return erreurs;
    }

    public Employe connecterUtilisateur(HttpServletRequest request) {
        // Récupération des champs du formulaire
        String email = getValeurChamp(request, CHAMP_EMAIL);
        String motDePasse = getValeurChamp(request, CHAMP_PASS);

        EmployeDAO employeDAO = new EmployeDAO();
        Employe utilisateur = employeDAO.getByEmail(email);

        if (utilisateur != null) { // Si le mail existe en base de donnée
            try {
                validationMotDePasse(motDePasse); // On vérifie si le mot de passe est NULL ou vide
                if (!utilisateur.getPassword().equals(motDePasse)) { // Si le mot de passe est incorrect
                    throw new Exception("L'email ou le mot de passe saisi n'existe pas.");
                }
            } catch (Exception e) {
                setErreur(CHAMP_EMAIL, e.getMessage());
            }
        } else { // Si l'email n'existe pas en base
            setErreur(CHAMP_EMAIL, "L'email ou le mot de passe saisi n'existe pas.");
        }

        // Initialisation du résultat global de la validation.
        if (erreurs.isEmpty()) {
            resultat = "Succès de la connexion.";
        } else {
            resultat = "Échec de la connexion.";
        }

        return utilisateur;
    }

    /**
     * Valide le mot de passe saisi.
     */
    private void validationMotDePasse(String motDePasse) throws Exception {
        if (motDePasse == null || motDePasse.trim().equals("")) {
            throw new Exception("L'email ou le mot de passe saisi n'existe pas.");
        }

    }

    /*
     * Ajoute un message correspondant au champ spécifié à la map des erreurs.
     */
    private void setErreur(String champ, String message) {
        erreurs.put(champ, message);
    }
}
