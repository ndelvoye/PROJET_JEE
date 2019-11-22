package fr.gestconge.dao;

import fr.gestconge.bean.Demande;
import fr.gestconge.dao.DAOException;

import java.util.List;

public interface DemandeDAO {
    void creer(Demande demande) throws DAOException;

    Demande trouver(String email) throws DAOException;

    List<String> getAll() throws DAOException;
}
