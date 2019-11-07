package fr.gestconge.demande;


//import fr.gestconge.demande.Demande;

import java.time.LocalDate;
import java.util.List;

public interface DemandeService {
    List<Demande> getAllDemande();
    List<Demande> getDemandeById(Integer id);
    List<Demande> getDemandeByEtat(Integer etat);
    List<Demande> getDemandeByDateDebut(LocalDate dateDebut);
}

