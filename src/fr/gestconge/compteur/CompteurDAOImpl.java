package fr.gestconge.compteur;


import common.DBManager;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class CompteurDAOImpl implements CompteurDAO {
    public List<Compteur> findAll() {
        Compteur compteur;
        Connection connexion = DBManager.getInstance().getConnection();
        List<Compteur> liste = new ArrayList<>();
        try {
            Statement statement = connexion.createStatement();
            ResultSet rs;
            rs = statement.executeQuery("select * from gestconge.compteur");
            while (rs.next()) {
                compteur = new Compteur();
                compteur.setIdEmploye(rs.getInt("idEmploye"));
                compteur.setRTT(rs.getInt("rtt"));
                compteur.setCP(rs.getInt("cp"));
                liste.add(compteur);

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return liste;
    }

    public List<Compteur> findByIdEmploye(Integer idEmploye) {
        Connection connexion = DBManager.getInstance().getConnection();
        List<Compteur> listeCompteurs = new ArrayList<>();
        try {
            Statement statement = connexion.createStatement();
            ResultSet rs;
            String rq = "select * from gestconge.compteur where gestconge.compteur.idEmploye = '" + idEmploye + "'";

            rs = statement.executeQuery(rq);
            while (rs.next()) {
                Compteur compteur = new Compteur();
                compteur.setRTT(rs.getInt("rtt"));
                compteur.setCP(rs.getInt("cp"));
                listeCompteurs.add(compteur);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return listeCompteurs;
    }
}