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
        List<Demande> listeDemandes = new ArrayList<>();
        try {
            Statement statement = connexion.createStatement();
            ResultSet rs;
            rs = statement.executeQuery("select * from gestionconges.demande");
            while (rs.next()) {
                Demande demande = new Demande();
                demande.setId(rs.getInt("id"));
                demande.setType(rs.getString("type"));
                demande.setEtat(rs.getInt("etat"));
                demande.setDateDebut(rs.getDate("dateDebut").toLocalDate());
                demande.setDateFin(rs.getDate("dateFin").toLocalDate());
                demande.setDateCreation(rs.getDate("dateCreation").toLocalDate());
                demande.setEmailEmploye(rs.getString("emailEmploye"));
                listeDemandes.add(demande);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return listeDemandes;
    }

    public List<Demande> findById(Integer idDemande) {
        Connection connexion = DBManager.getInstance().getConnection();
        List<Demande> listeDemandes = new ArrayList<>();
        try {
            Statement statement = connexion.createStatement();
            ResultSet rs;
            String rq = "select * from gestionconges.demande where gestionconges.demande.id = '" + idDemande + "'";

            rs = statement.executeQuery(rq);
            while (rs.next()) {
                Demande demande = new Demande();
                demande.setId(idDemande);
                demande.setType(rs.getString("type"));
                demande.setEtat(rs.getInt("etat"));
                demande.setDateDebut(rs.getDate("dateDebut").toLocalDate());
                demande.setDateFin(rs.getDate("dateFin").toLocalDate());
                demande.setDateCreation(rs.getDate("dateCreation").toLocalDate());
                demande.setEmailEmploye(rs.getString("emailEmploye"));
                listeDemandes.add(demande);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return listeDemandes;
    }

    public List<Demande> findByEtat(Integer etatDemande) {
        Connection connexion = DBManager.getInstance().getConnection();
        List<Demande> listeDemandes = new ArrayList<>();
        try {
            Statement statement = connexion.createStatement();
            ResultSet rs;
            String rq = "select * from gestionconges.demande where gestionconges.demande.etat = '" + etatDemande + "'";

            rs = statement.executeQuery(rq);
            while (rs.next()) {
                Demande demande = new Demande();
                demande.setId(rs.getInt("id"));
                demande.setType(rs.getString("type"));
                demande.setEtat(etatDemande);
                demande.setDateDebut(rs.getDate("dateDebut").toLocalDate());
                demande.setDateFin(rs.getDate("dateFin").toLocalDate());
                demande.setDateCreation(rs.getDate("dateCreation").toLocalDate());
                demande.setEmailEmploye(rs.getString("emailEmploye"));
                listeDemandes.add(demande);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return listeDemandes;
    }

    public List<Demande> findByDateDebut(LocalDate dateDebut) {
        Connection connexion = DBManager.getInstance().getConnection();
        List<Demande> listeDemandes = new ArrayList<>();
        try {
            Statement statement = connexion.createStatement();
            ResultSet rs;

            String rq = "select * from gestionconges.demande where gestionconges.demande.dateDebut = '" + dateDebut + "'";
            rs = statement.executeQuery(rq);

            while (rs.next()) {
                Demande demande = new Demande();
                demande.setId(rs.getInt("id"));
                demande.setType(rs.getString("type"));
                demande.setEtat(rs.getInt("etat"));
                demande.setDateDebut(dateDebut);
                demande.setDateFin(rs.getDate("dateFin").toLocalDate());
                demande.setDateCreation(rs.getDate("dateCreation").toLocalDate());
                demande.setEmailEmploye(rs.getString("emailEmploye"));
                listeDemandes.add(demande);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return listeDemandes;
    }
}