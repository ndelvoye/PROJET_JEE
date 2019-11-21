package fr.gestconge.compteur;

import java.util.List;

public interface CompteurDAO {
    void save(Compteur compteur);

    void update(Compteur compteur, String[] params);

    void delete(Compteur compteur);

    List<Compteur> findAll();

    List<Compteur> findByEmailEmploye(String emailEmploye);
}
