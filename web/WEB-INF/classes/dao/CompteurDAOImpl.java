package fr.gestconge.dao;

import fr.gestconge.bean.Compteur;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import static fr.gestconge.dao.DAOUtilitaire.*;

public class CompteurDAOImpl implements CompteurDAO {
    private DAOFactory DAOFactory;
    private static final String SQL_INSERT = "INSERT INTO Compteur (emailEmploye, RTT, congesAnnuels, enfantMalade, famille) " +
            "VALUES (?, ?, ?, ?, ?)";

    public CompteurDAOImpl(DAOFactory DAOFactory) {
        this.DAOFactory = DAOFactory;
    }

    @Override
    public void creer(Compteur compteur) throws DAOException {
        Connection connexion = null;
        PreparedStatement preparedStatement = null;

        try {
            // Récupération d'une connexion depuis la Factory
            connexion = DAOFactory.getConnection();
            preparedStatement = initialisationRequetePreparee(connexion, SQL_INSERT, true, compteur.getEmail(), compteur.getRTT(), compteur.getCongesAnnuels(), compteur.getEnfantMalade(), compteur.getFamille());
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
    public Compteur trouver(String email) throws DAOException {
        return null;
    }
}
