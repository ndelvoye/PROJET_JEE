package fr.gestconge.demande;

import fr.gestconge.demande.Demande;

import java.time.LocalDate;
import java.util.List;

public interface DemandeDAO {
    List<Demande> findByAll();
    List<Demande> findById(Integer id);
    List<Demande> findByEtat(Integer etat);
    List<Demande> findByDateDebut(LocalDate dateDebut);


}
