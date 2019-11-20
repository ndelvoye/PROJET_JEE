package fr.gestconge.compteur;

import java.util.List;

public interface CompteurService {
    List<Compteur> getAllCompteurs();

    List<Compteur> getCompteursByEmailEmploye(String emailEmploye);
}

