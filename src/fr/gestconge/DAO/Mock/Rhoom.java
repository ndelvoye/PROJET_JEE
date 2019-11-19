package fr.gestconge.DAO.Mock;

import fr.gestconge.classes.beans.Demande;
import fr.gestconge.classes.beans.Employe;

import java.util.List;

public interface Rhoom {
    List<Demande> getAllDemandes();
    List<Demande> getByEquipe(String searchText);
    List<Demande> getByEmail(String searchText);
    void updateDemandes(Demande demande);
    void removeDemandes(Demande demande);
}
