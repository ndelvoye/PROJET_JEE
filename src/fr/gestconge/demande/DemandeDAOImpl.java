package fr.gestconge.demande;

import common.DBManager;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class DemandeDAOImpl implements DemandeDAO {

    public List<Demande> findAll() {
        Connection connexion = DBManager.getInstance().getConnection();
        List<Demande> liste = new ArrayList<>();
        try {
            Statement statement = connexion.createStatement();
            ResultSet rs;
            rs = statement.executeQuery("select * from gestconge.demande");
            while (rs.next()) {
                Demande demande = new Demande();
                demande.setId(rs.getInt("id"));
                demande.setType(rs.getString("type"));
                demande.setEtat(rs.getInt("etat"));
                demande.setDateDebut(rs.getDate("dtDebut").toLocalDate());
                demande.setDateFin(rs.getDate("dtFin").toLocalDate());
                demande.setDateCreation(rs.getDate("dtCreation").toLocalDate());
                demande.setIdEmploye(rs.getInt("idEmploye"));
                liste.add(demande);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return liste;
    }

    public List<Demande> findById(Integer idDemande) {
        Connection connexion = DBManager.getInstance().getConnection();
        List<Demande> liste = new ArrayList<>();
        try {
            Statement statement = connexion.createStatement();
            ResultSet rs;
            String rq = "select * from gestconge.demande where gestconge.demande.id = '" + idDemande + "'";

            rs = statement.executeQuery(rq);
            while (rs.next()) {
                Demande demande = new Demande();
                demande.setId(idDemande);
                demande.setType(rs.getString("type"));
                demande.setEtat(rs.getInt("etat"));
                demande.setDateDebut(rs.getDate("dateDebut").toLocalDate());
                demande.setDateFin(rs.getDate("dateFin").toLocalDate());
                demande.setDateCreation(rs.getDate("dateCreation").toLocalDate());
                demande.setIdEmploye(rs.getInt("idEmploye"));
                liste.add(demande);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return liste;
    }

    public List<Demande> findByEtat(Integer etatDemande) {
        Connection connexion = DBManager.getInstance().getConnection();
        List<Demande> liste = new ArrayList<>();
        try {
            Statement statement = connexion.createStatement();
            ResultSet rs;
            String rq = "select * from gestconge.demande where gestconge.demande.etat = '" + etatDemande + "'";

            rs = statement.executeQuery(rq);
            while (rs.next()) {
                Demande demande = new Demande();
                demande.setId(rs.getInt("id"));
                demande.setType(rs.getString("type"));
                demande.setEtat(etatDemande);
                demande.setDateDebut(rs.getDate("dateDebut").toLocalDate());
                demande.setDateFin(rs.getDate("dateFin").toLocalDate());
                demande.setDateCreation(rs.getDate("dateCreation").toLocalDate());
                demande.setIdEmploye(rs.getInt("idEmploye"));
                liste.add(demande);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return liste;
    }

    public List<Demande> findByDateDebut(LocalDate dateDebut) {
        Connection connexion = DBManager.getInstance().getConnection();
        List<Demande> liste = new ArrayList<>();
        try {
            Statement statement = connexion.createStatement();
            ResultSet rs;

            String rq = "select * from gestconge.demande where gestconge.demande.dtDebut = '" + dateDebut + "'";
            rs = statement.executeQuery(rq);

            while (rs.next()) {
                Demande demande = new Demande();
                demande.setId(rs.getInt("id"));
                demande.setType(rs.getString("type"));
                demande.setEtat(rs.getInt("etat"));
                demande.setDateDebut(dateDebut);
                demande.setDateFin(rs.getDate("dateFin").toLocalDate());
                demande.setDateCreation(rs.getDate("dateCreation").toLocalDate());
                demande.setIdEmploye(rs.getInt("idEmploye"));
                liste.add(demande);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return liste;
    }

}