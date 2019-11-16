package fr.gestconge.DAO.Mock;

import fr.gestconge.classes.beans.Employe;

import java.util.List;

public interface Company {
    List<Employe> getAllUsers();
    List<Employe> getUserByMail(String searchText, List<Employe> listeEmployes);
    List<Employe> getUserByPwd(String searchText, List<Employe> listeEmployes);
}
