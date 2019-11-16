package fr.gestconge.DAO.Mock;

import fr.gestconge.classes.beans.Employe;

import java.util.List;

public class CompanyImpl implements Company {
    private EmployeDAO employeDAO = new EmployeDAOMockImpl();
    @Override
    public List<Employe> getAllUsers() {
        return employeDAO.findAllUsers();
    }
    public List<Employe> getUserByMail(String searchText,List<Employe> listeEmployes) {
        return employeDAO.findByUserMail(searchText, listeEmployes );
    }

    @Override
    public List<Employe> getUserByPwd(String searchText, List<Employe> listeEmployes) {
        return employeDAO.findByUserPwd(searchText,listeEmployes);
    }
}
