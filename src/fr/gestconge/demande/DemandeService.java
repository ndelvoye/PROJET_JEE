package fr.gestconge.demande;

import java.util.List;

public interface DemandeService {
    List<Demande> getAllDemandes();

    List<Demande> getDemandesByEmail(String email);
}

