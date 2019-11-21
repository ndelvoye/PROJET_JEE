package fr.gestconge.employe;

import java.util.List;

public interface EmployeDAO {
    void save(Employe employe);

    void update(Employe employe, String[] params);

    void delete(Employe employe);

    List<Employe> findAll();

    List<Employe> findByNomPrenom(String nom, String prenom);

    List<Employe> findByEmail(String email);
}
