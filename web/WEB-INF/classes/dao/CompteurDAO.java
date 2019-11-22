package fr.gestconge.dao;

import fr.gestconge.bean.Compteur;
import fr.gestconge.dao.DAOException;

public interface CompteurDAO {
    void creer(Compteur compteur) throws DAOException;
    Compteur trouver(String email) throws DAOException;
}
