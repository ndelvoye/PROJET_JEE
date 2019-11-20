package fr.gestconge.employe;


import common.DBManager;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class EmployeDAOImpl implements EmployeDAO {
    public List<Employe> findAll() {
        Connection connexion = DBManager.getInstance().getConnection();
        List<Employe> listeEmployes = new ArrayList<>();
        try {
            Statement statement = connexion.createStatement();
            ResultSet rs;
            rs = statement.executeQuery("select * from gestionconges.employe");
            while (rs.next()) {
                Employe employe = new Employe();
                employe.setEmail(rs.getString("email"));
                employe.setPassword(rs.getString("password"));
                employe.setNom(rs.getString("nom"));
                employe.setPrenom(rs.getString("prenom"));
                employe.setAdresse(rs.getString("adresse"));
                employe.setFonction(rs.getString("fonction"));
                employe.setEquipe(rs.getString("equipe"));
                employe.setService(rs.getString("service"));
                employe.setDateRecrutement(rs.getDate("dateRecrutement").toLocalDate());
                listeEmployes.add(employe);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return listeEmployes;
    }

    public List<Employe> findByEmail(String email) {
        Connection connexion = DBManager.getInstance().getConnection();
        List<Employe> listeEmployes = new ArrayList<>();
        try {
            Statement statement = connexion.createStatement();
            ResultSet rs;
            String rq = "select * from gestionconges.demande where gestionconges.employe.email = '" + email + "'";
            rs = statement.executeQuery(rq);
            while (rs.next()) {
                Employe employe = new Employe();
                employe.setEmail(email);
                employe.setPassword(rs.getString("password"));
                employe.setNom(rs.getString("nom"));
                employe.setPrenom(rs.getString("prenom"));
                employe.setAdresse(rs.getString("adresse"));
                employe.setFonction(rs.getString("fonction"));
                employe.setEquipe(rs.getString("equipe"));
                employe.setService(rs.getString("service"));
                employe.setDateRecrutement(rs.getDate("dateRecrutement").toLocalDate());
                listeEmployes.add(employe);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return listeEmployes;
    }
}