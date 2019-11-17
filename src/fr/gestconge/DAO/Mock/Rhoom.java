package fr.gestconge.DAO.Mock;

import fr.gestconge.classes.beans.Demande;
import fr.gestconge.classes.beans.Employe;

import java.util.List;

public interface Rhoom {
    List<Demande> getAllDemandes();
    List<Demande> getAllByService(String searchText, List<Employe>listeEmployes, List<Demande>listeDemandes);
    void updateDemandes(Demande demande);
}
