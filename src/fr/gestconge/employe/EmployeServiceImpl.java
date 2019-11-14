package fr.gestconge.employe;

import java.util.List;

public class EmployeServiceImpl implements EmployeService {

    private EmployeDAO employeDAO = new EmployeDAOImpl();

    public List<Employe> getEmployes() {
        return employeDAO.findAll();
    }

    public List<Employe> getEmployesById(Integer idEmploye) {
        return employeDAO.findByIdEmploye(idEmploye);
    }
}
