package fr.gestconge.demande;

import java.time.LocalDate;
import java.util.List;

public interface DemandeService {
    List<Demande> getAllDemande();
    List<Demande> getDemandeById(Integer id);
    List<Demande> getDemandeByEtat(Integer etat);
    List<Demande> getDemandeByDateDebut(LocalDate dateDebut);
}

