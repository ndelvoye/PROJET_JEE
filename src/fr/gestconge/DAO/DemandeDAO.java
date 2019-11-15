package fr.gestconge.DAO;

import fr.gestconge.classes.beans.Demande;

import java.util.List;

public interface DemandeDAO {
    List<Demande> findByAll();
    List<Demande> findByName(String searchText);
    List<Demande> findByPoste(String searchText);
}
