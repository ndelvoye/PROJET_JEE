package fr.gestconge.DAO.Mock;

import fr.gestconge.classes.beans.Employe;

import java.util.List;

public interface EmployeDAO {
    List<Employe> findAllUsers();
    List<Employe> findByUserMail(String searchText, List<Employe> listeEmployes);
    List<Employe> findByUserPwd(String searchText, List<Employe> listeEmployes);

}
