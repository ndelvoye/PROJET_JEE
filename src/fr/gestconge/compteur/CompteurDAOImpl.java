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
        List<Compteur> listeCompteurs = new ArrayList<>();
        try {
            Statement statement = connexion.createStatement();
            ResultSet rs;
            rs = statement.executeQuery("select * from gestionconges.compteur");
            while (rs.next()) {
                compteur = new Compteur();
                compteur.setEmail(rs.getString("email"));
                compteur.setRTT(rs.getInt("RTT"));
                compteur.setCongesAnnuels(rs.getInt("congesAnnuels"));
                compteur.setEnfantMalade(rs.getInt("enfantMalade"));
                compteur.setFamille(rs.getInt("famille"));
                listeCompteurs.add(compteur);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return listeCompteurs;
    }

    public List<Compteur> findByEmailEmploye(String emailEmploye) {
        Connection connexion = DBManager.getInstance().getConnection();
        List<Compteur> listeCompteurs = new ArrayList<>();
        try {
            Statement statement = connexion.createStatement();
            ResultSet rs;
            String rq = "select * from gestionconges.compteur where gestionconges.compteur.emailemploye = '" + emailEmploye + "'";

            rs = statement.executeQuery(rq);
            while (rs.next()) {
                Compteur compteur = new Compteur();
                compteur.setEmail(rs.getString("email"));
                compteur.setRTT(rs.getInt("RTT"));
                compteur.setCongesAnnuels(rs.getInt("congesAnnuels"));
                compteur.setEnfantMalade(rs.getInt("enfantMalade"));
                compteur.setFamille(rs.getInt("famille"));
                listeCompteurs.add(compteur);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return listeCompteurs;
    }
}