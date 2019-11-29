package fr.gestconge.formulaire;

import fr.gestconge.bean.Employe;
import fr.gestconge.dao.EmployeDAO;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

public class ModifierFicheFormulaire {
    private String resultat;
    private List<String> erreurs = new ArrayList<>();

    public String getResultat() {
        return resultat;
    }

    public void setResultat(String resultat) {
        this.resultat = resultat;
    }

    public List getErreurs() {
        return erreurs;
    }

    public void setErreurs(List<String> erreurs) {
        this.erreurs = erreurs;
    }

    private void ajouterErreur(String erreur) {
        if (this.erreurs == null) erreurs = new ArrayList<>();
        erreurs.add(erreur);
    }

    public String[] recupererChamps(HttpServletRequest request) {
        String[] tabModifs = new String[8];
        tabModifs[4] = getValeurChamp(request, "adresse");
        tabModifs[5] = getValeurChamp(request, "fonction");
        tabModifs[6] = getValeurChamp(request, "equipe");
        tabModifs[7] = getValeurChamp(request, "service");
        return tabModifs;
    }

    private static String getValeurChamp(HttpServletRequest request, String nomChamp) {
        String valeur = request.getParameter(nomChamp);
        if (valeur == null || valeur.trim().length() == 0) {
            return null;
        } else {
            return valeur;
        }
    }
}
