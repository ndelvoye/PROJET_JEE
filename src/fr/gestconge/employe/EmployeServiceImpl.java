package fr.gestconge.employe;

import java.util.List;

public class EmployeServiceImpl implements EmployeService {
    private EmployeDAO employeDAO = new EmployeDAOImpl();

    public List<Employe> getEmployes() {
        return employeDAO.findAll();
    }

    public List<Employe> getEmployesByNomPrenom(String nom, String prenom) {
        return employeDAO.findByNomPrenom(nom, prenom);
    }

    public List<Employe> getEmployesByEmail(String email) {
        return employeDAO.findByEmail(email);
    }
}
