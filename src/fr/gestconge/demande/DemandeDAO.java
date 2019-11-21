package fr.gestconge.demande;

import java.time.LocalDate;
import java.util.List;

public interface DemandeDAO {
    void save(Demande demande);

    void update(Demande demande, String[] params);

    void delete(Demande demande);

    List<Demande> findAll();

    List<Demande> findById(Integer id);

    List<Demande> findByType(String type);

    List<Demande> findByEtat(Integer etat);

    List<Demande> findByDates(LocalDate date1, LocalDate date2);

    List<Demande> findByEmail(String email);

    List<Demande> findByEquipe(String equipe);
}
