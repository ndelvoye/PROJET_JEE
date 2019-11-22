package fr.gestconge.dao;

import fr.gestconge.bean.Demande;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import static fr.gestconge.dao.DAOUtilitaire.fermeturesSilencieuses;
import static fr.gestconge.dao.DAOUtilitaire.initialisationRequetePreparee;

public class DemandeDAOImpl implements DemandeDAO {
    private DAOFactory DAOFactory;
    private static final String SQL_INSERT = "INSERT INTO Demande (id, type, etat, dateDebut, dateFin, dateCreation, emailEmploye) VALUES (?, ?, ?, ?, ?, NOW(), ?)";

    public DemandeDAOImpl(DAOFactory DAOFactory) {
        this.DAOFactory = DAOFactory;
    }

    @Override
    public void creer(Demande demande) throws DAOException {
        Connection connexion = null;
        PreparedStatement preparedStatement = null;
        ResultSet valeursAutoGenerees = null;

        try {
            // Récupération d'une connexion depuis la Factory
            connexion = DAOFactory.getConnection();
            preparedStatement = initialisationRequetePreparee(connexion, SQL_INSERT, true, demande.getId(), demande.getType(), demande.getEtat(), demande.getDateDebut(), demande.getDateFin(), demande.getDateCreation(), demande.getEmailEmploye());
            int statut = preparedStatement.executeUpdate();
            // Analyse du statut retourné par la requête d'insertion
            if (statut == 0) {
                throw new DAOException("Échec de la création de l'utilisateur, aucune ligne ajoutée dans la table.");
            }

            // Récupération de l'id auto-généré par la requête d'insertion
            valeursAutoGenerees = preparedStatement.getGeneratedKeys();
            if (valeursAutoGenerees.next()) {
                // Puis initialisation de la propriété id du bean Utilisateur avec sa valeur
                demande.setId((int) valeursAutoGenerees.getLong(1));
            } else {
                throw new DAOException("Échec de la création de l'utilisateur en base, aucun ID auto-généré retourné.");
            }
        } catch (SQLException e) {
            throw new DAOException(e);
        } finally {
            fermeturesSilencieuses(valeursAutoGenerees, preparedStatement, connexion);
        }
    }

    @Override
    public Demande trouver(String id) throws DAOException {
        return null;
    }

    @Override
    public List<String> getAll() throws DAOException {
        Connection connexion = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        List<String> listeDemandes = new ArrayList<>();

        try {
            // Récupération d'une connexion depuis la Factory
            connexion = DAOFactory.getConnection();
            preparedStatement = initialisationRequetePreparee(connexion, "SELECT * FROM Demande", false);
            resultSet = preparedStatement.executeQuery();
            // Parcours de la ligne de données de l'éventuel ResulSet retourné
            if (resultSet.next()) {
                listeDemandes.add(
                        resultSet.getInt(0) + " "
                                + resultSet.getString(1) + " "
                                + resultSet.getInt(2) + " "
                                + resultSet.getDate(3) + " "
                                + resultSet.getDate(4) + " "
                                + resultSet.getDate(5) + " "
                                + resultSet.getString(6));
            }
        } catch (SQLException e) {
            throw new DAOException(e);
        } finally {
            fermeturesSilencieuses(resultSet, preparedStatement, connexion);
        }

        return listeDemandes;
    }
}
