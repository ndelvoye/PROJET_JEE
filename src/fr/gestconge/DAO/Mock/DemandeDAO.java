package fr.gestconge.DAO.Mock;

import fr.gestconge.classes.beans.Demande;
import fr.gestconge.classes.beans.Employe;

import java.util.List;

public interface DemandeDAO {
    List<Demande> findByAll();
    List<Demande> findByName(String searchText);
    List<Demande> findByService(String searchText, List<Employe> listeEmployes, List<Demande> listeDemandes);
    void update(Demande demande);
}
