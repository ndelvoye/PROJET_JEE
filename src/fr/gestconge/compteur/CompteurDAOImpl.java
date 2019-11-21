package fr.gestconge.compteur;


import common.DBManager;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class CompteurDAOImpl implements CompteurDAO {
    private Connection connexion = DBManager.getInstance().getConnection();
    private List<Compteur> listeCompteurs = new ArrayList<>();

    @Override
    public void save(Compteur compteur) {
        listeCompteurs.add(compteur);
    }

    @Override
    public void update(Compteur compteur, String[] params) {
        compteur.setRTT(Integer.parseInt(params[0]));
        compteur.setCongesAnnuels(Integer.parseInt(params[1]));
        compteur.setEnfantMalade(Integer.parseInt(params[2]));
        compteur.setFamille(Integer.parseInt(params[3]));
    }

    @Override
    public void delete(Compteur compteur) {
        listeCompteurs.remove(compteur);
    }

    @Override
    public List<Compteur> findAll() {
        Compteur compteur;
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

    @Override
    public List<Compteur> findByEmailEmploye(String emailEmploye) {
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