package fr.gestconge.demande;

import java.time.LocalDate;
import java.util.List;

public interface DemandeDAO {
    List<Demande> findAll();

    List<Demande> findById(Integer id);

    List<Demande> findByEtat(Integer etat);

    List<Demande> findByDateDebut(LocalDate dateDebut);
}
