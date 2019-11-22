package fr.gestconge.dao;

import fr.gestconge.bean.Employe;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import static fr.gestconge.dao.DAOUtilitaire.fermeturesSilencieuses;
import static fr.gestconge.dao.DAOUtilitaire.initialisationRequetePreparee;

public class EmployeDAOImpl implements EmployeDAO {
    private DAOFactory DAOFactory;
    private static final String SQL_INSERT = "INSERT INTO Employe (email, password, nom, prenom, adresse, fonction, equipe, service, dateRecrutement) " +
            "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";

    public EmployeDAOImpl(DAOFactory DAOFactory) {
        this.DAOFactory = DAOFactory;
    }

    @Override
    public void creer(Employe employe) throws DAOException {
        Connection connexion = null;
        PreparedStatement preparedStatement = null;

        try {
            // Récupération d'une connexion depuis la Factory
            connexion = DAOFactory.getConnection();
            preparedStatement = initialisationRequetePreparee(connexion, SQL_INSERT, true, employe.getEmail(), employe.getPassword(), employe.getNom());
            int statut = preparedStatement.executeUpdate();

            // Analyse du statut retourné par la requête d'insertion
            if (statut == 0) {
                throw new DAOException("Échec de la création de l'utilisateur, aucune ligne ajoutée dans la table.");
            }
        } catch (SQLException e) {
            throw new DAOException(e);
        } finally {
            fermeturesSilencieuses(preparedStatement, connexion);
        }
    }

    @Override
    public Employe trouver(String email) throws DAOException {
        return null;
    }
}
