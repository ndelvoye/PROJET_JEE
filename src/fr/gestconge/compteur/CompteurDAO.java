package fr.gestconge.compteur;

import java.util.List;

public interface CompteurDAO {
    List<Compteur> findAll();

    List<Compteur> findByIdEmploye(Integer idEmploye);
}
