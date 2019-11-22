package fr.gestconge.dao;

import fr.gestconge.bean.Employe;
import fr.gestconge.dao.DAOException;

public interface EmployeDAO {
    void creer(Employe employe) throws DAOException;
    Employe trouver(String email) throws DAOException;
}
