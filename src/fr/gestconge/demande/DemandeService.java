package fr.gestconge.demande;

import java.time.LocalDate;
import java.util.List;

public interface DemandeService {
    List<Demande> getAllDemandes();

    List<Demande> getDemandesById(Integer id);

    List<Demande> getDemandesByEtat(Integer etat);

    List<Demande> getDemandesByDateDebut(LocalDate dateDebut);
}

