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
            rs = statement.executeQuery("select * from gestconge.employe");
            while (rs.next()) {
                Employe employe = new Employe();
                employe.setId(rs.getInt("id"));
                employe.setPassword(rs.getString("password"));
                employe.setNom(rs.getString("nom"));
                employe.setPrenom(rs.getString("prenom"));
                employe.setDtRecrutement(rs.getDate("dtRecrutement").toLocalDate());
                employe.setPoste(rs.getString("poste"));
                employe.setEquipe(rs.getString("equipe"));
                employe.setService(rs.getString("service"));
                listeEmployes.add(employe);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return listeEmployes;
    }

    public List<Employe> findByIdEmploye(Integer idEmploye) {
        Connection connexion = DBManager.getInstance().getConnection();
        List<Employe> listeEmployes = new ArrayList<>();
        try {
            Statement statement = connexion.createStatement();
            ResultSet rs;
            String rq = "select * from gestconge.demande where gestconge.employe.id = '" + idEmploye + "'";
            rs = statement.executeQuery(rq);
            while (rs.next()) {
                Employe employe = new Employe();
                employe.setId(rs.getInt("id"));
                employe.setPassword(rs.getString("password"));
                employe.setNom(rs.getString("nom"));
                employe.setPrenom(rs.getString("prenom"));
                employe.setDtRecrutement(rs.getDate("dtRecrutement").toLocalDate());
                employe.setPoste(rs.getString("poste"));
                employe.setEquipe(rs.getString("equipe"));
                employe.setService(rs.getString("service"));
                listeEmployes.add(employe);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return listeEmployes;
    }
}