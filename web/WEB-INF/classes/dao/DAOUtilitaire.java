package fr.gestconge.dao;

import java.sql.*;

public final class DAOUtilitaire {
    /*
     * Constructeur caché par défaut (car c'est une classe finale utilitaire,
     * contenant uniquement des méhodes appelées de manière statique)
     */
    private DAOUtilitaire() {
    }

    // Fermeture silencieuse du ResultSet
    public static void fermetureSilencieuse(ResultSet resultSet) {
        if (resultSet != null) {
            try {
                resultSet.close();
            } catch (SQLException e) {
                System.out.println("Échec de la fermeture du ResultSet : " + e.getMessage());
            }
        }
    }

    // Fermeture silencieuse du Statement
    public static void fermetureSilencieuse(Statement statement) {
        if (statement != null) {
            try {
                statement.close();
            } catch (SQLException e) {
                System.out.println("Échec de la fermeture du Statement : " + e.getMessage());
            }
        }
    }

    // Fermeture silencieuse de la Connexion
    public static void fermetureSilencieuse(Connection connexion) {
        if (connexion != null) {
            try {
                connexion.close();
            } catch (SQLException e) {
                System.out.println("Échec de la fermeture de la connexion : " + e.getMessage());
            }
        }
    }

    // Fermetures silencieuses du Statement et de la Connexion
    public static void fermeturesSilencieuses(Statement statement, Connection connexion) {
        fermetureSilencieuse(statement);
        fermetureSilencieuse(connexion);
    }

    // Fermetures silencieuses du ResultSet, du Statement et de la Connexion
    public static void fermeturesSilencieuses(ResultSet resultSet, Statement statement, Connection connexion) {
        fermetureSilencieuse(resultSet);
        fermetureSilencieuse(statement);
        fermetureSilencieuse(connexion);
    }

    /*
     * Initialise la requête préparée basée sur la connexion passée en argument,
     * avec la requêe SQL et les objets donnés.
     */
    public static PreparedStatement initialisationRequetePreparee(Connection connexion, String sql, boolean returnGeneratedKeys, Object... objets) throws SQLException {
        PreparedStatement preparedStatement = connexion.prepareStatement(sql, returnGeneratedKeys ? Statement.RETURN_GENERATED_KEYS : Statement.NO_GENERATED_KEYS);
        for (int i = 0; i < objets.length; i++) {
            preparedStatement.setObject(i + 1, objets[i]);
        }
        return preparedStatement;
    }
}
