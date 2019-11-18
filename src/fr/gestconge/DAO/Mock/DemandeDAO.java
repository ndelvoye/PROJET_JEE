package fr.gestconge.DAO.Mock;

import fr.gestconge.classes.beans.Demande;
import fr.gestconge.classes.beans.Employe;

import java.util.List;

public interface DemandeDAO {
    List<Demande> findByAll();
    List<Demande> findByName(String searchText);
    List<Demande> findByEquipe(String searchText);
    List<Demande> findByEmail(String searchText);
    void update(Demande demande);
}
