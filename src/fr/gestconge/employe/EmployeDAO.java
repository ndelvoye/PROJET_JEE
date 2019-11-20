package fr.gestconge.employe;

import java.util.List;

public interface EmployeDAO {
    List<Employe> findAll();

    List<Employe> findByEmail(String email);
}
