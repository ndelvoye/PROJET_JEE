package fr.gestconge.demande;


//import fr.gestconge.demande.Demande;
import fr.gestconge.manager.DBManager;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class DemandeDAOImpl implements DemandeDAO {

    public List<Demande> findByAll(){
        Demande demande;
        Connection connexion = DBManager.getInstance().getConnection();
        List<Demande> liste = new ArrayList<Demande> ();
        try {
            Statement statement = connexion.createStatement();
            ResultSet rs;
            rs = statement.executeQuery("select * from jee.demande");
            while (rs.next()) {

                String type = rs.getString("type");
                Integer etat = rs.getInt("etat");
                LocalDate dateDebut = rs.getDate("dateDebut").toLocalDate();
                LocalDate dateFin = rs.getDate("dateFin").toLocalDate();
                LocalDate dateCreation = rs.getDate("dateCreation").toLocalDate();
                Integer id = rs.getInt("id");

                demande = new Demande(type, etat, dateDebut, dateFin, dateCreation, id);
                liste.add(demande);

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return liste;
    }

    public List<Demande> findById(Integer id_r){
        Demande demande;
        Connection connexion = DBManager.getInstance().getConnection();
        List<Demande> liste = new ArrayList<Demande> ();
        try {
            Statement statement = connexion.createStatement();
            ResultSet rs;
            String rq = "select * from jee.demande where jee.demande.id = '"+id_r+"'";

            rs = statement.executeQuery(rq);
            while (rs.next()) {

                String type = rs.getString("type");
                Integer etat = rs.getInt("etat");
                LocalDate dateDebut = rs.getDate("dateDebut").toLocalDate();
                LocalDate dateFin = rs.getDate("dateFin").toLocalDate();
                LocalDate dateCreation = rs.getDate("dateCreation").toLocalDate();
                Integer id = rs.getInt("id");
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        return liste;
    }

    public List<Demande> findByEtat(Integer etat_r){
        Demande demande;
        Connection connexion = DBManager.getInstance().getConnection();
        List<Demande> liste = new ArrayList<Demande> ();
        try {
            Statement statement = connexion.createStatement();
            ResultSet rs;
            String rq = "select * from jee.demande where jee.demande.etat = '"+etat_r+"'";

            rs = statement.executeQuery(rq);
            while (rs.next()) {

                String type = rs.getString("type");
                Integer etat = rs.getInt("etat");
                LocalDate dateDebut = rs.getDate("dateDebut").toLocalDate();
                LocalDate dateFin = rs.getDate("dateFin").toLocalDate();
                LocalDate dateCreation = rs.getDate("dateCreation").toLocalDate();
                Integer id = rs.getInt("id");
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        return liste;
    }

    public List<Demande> findByDateDebut(LocalDate dateDebut_r){
        Demande demande;
        Connection connexion = DBManager.getInstance().getConnection();
        List<Demande> liste = new ArrayList<Demande> ();
        try {
            Statement statement = connexion.createStatement();
            ResultSet rs;

            String rq = "select * from jee.demande where jee.demande.dateDebut = '"+dateDebut_r+"'";
            rs = statement.executeQuery(rq);

            while (rs.next()) {

                String type = rs.getString("type");
                Integer etat = rs.getInt("etat");
                LocalDate dateDebut = rs.getDate("dateDebut").toLocalDate();
                LocalDate dateFin = rs.getDate("dateFin").toLocalDate();
                LocalDate dateCreation = rs.getDate("dateCreation").toLocalDate();
                Integer id = rs.getInt("id");

            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        return liste;
    }

}