package fr.gestconge.employe;

import java.util.List;

public interface EmployeService {
    List<Employe> getEmployes();

    List<Employe> getEmployesByEmail(String email);
}

