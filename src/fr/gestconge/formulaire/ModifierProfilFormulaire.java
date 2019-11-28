package fr.gestconge.formulaire;

import fr.gestconge.bean.Employe;
import fr.gestconge.dao.EmployeDAO;

import java.util.ArrayList;
import java.util.List;

public class ModifierProfilFormulaire {
    private String resultat;
    private List<String> errors = new ArrayList<>();

    public String getResultat() {
        return resultat;
    }

    public void setResultat(String resultat) {
        this.resultat = resultat;
    }

    public List getErrors() {
        return errors;
    }

    public void setErrors(List<String> errors) {
        this.errors = errors;
    }

    private void ajouterErreur(String erreur) {
        if (this.errors == null) errors = new ArrayList<>();
        errors.add(erreur);
    }

    public void modifierMotDePasse(Employe utilisateur, String password, String passwordConfirm) {
        if (!"".equals(password) && !"".equals(passwordConfirm)) {
            if (password.equals(passwordConfirm)) {
                EmployeDAO employeDAO = new EmployeDAO();
                String[] tabModifs = new String[8];
                tabModifs[0] = utilisateur.getEmail();
                tabModifs[1] = password;
                tabModifs[2] = utilisateur.getNom();
                tabModifs[3] = utilisateur.getPrenom();
                tabModifs[4] = utilisateur.getAdresse();
                tabModifs[5] = utilisateur.getFonction();
                tabModifs[6] = utilisateur.getEquipe();
                tabModifs[7] = utilisateur.getService();
                employeDAO.update(utilisateur, tabModifs);

                setResultat("Votre mot de passe a bien été modifié.");
            } else {
                ajouterErreur("Les deux mots de passe ne sont pas identiques.");
            }
        } else {
            ajouterErreur("Un mot de passe ne peut pas être vide.");
        }
    }
}
