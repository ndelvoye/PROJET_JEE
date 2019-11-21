package fr.gestconge.demande;

import common.DBManager;
import fr.gestconge.employe.EmployeDAOImpl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.stream.Collectors;

public class DemandeDAOImpl implements DemandeDAO {
    private Connection connexion = DBManager.getInstance().getConnection();
    private List<Demande> listeDemandes = new ArrayList<>();

    @Override
    public void save(Demande demande) {
        listeDemandes.add(demande);
    }

    @Override
    public void update(Demande demande, String[] params) {
        demande.setType(Objects.requireNonNull(params[0], "Le type ne peut pas être null"));
        demande.setEtat(Integer.parseInt(params[1]));
        demande.setDateDebut(Objects.requireNonNull(LocalDate.parse(params[2]), "La date de début ne peut pas être null"));
        demande.setDateFin(Objects.requireNonNull((LocalDate.parse(params[3])), "La date de fin ne peut pas être null"));
        demande.setDateCreation(Objects.requireNonNull((LocalDate.parse(params[4])), "La date de création ne peut pas être null"));
        listeDemandes.add(demande);
    }

    @Override
    public void delete(Demande demande) {
        listeDemandes.remove(demande);
    }

    @Override
    public List<Demande> findAll() {
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

    @Override
    public List<Demande> findById(Integer idDemande) {
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

    @Override
    public List<Demande> findByType(String type) {
        try {
            Statement statement = connexion.createStatement();
            ResultSet rs;
            String rq = "select * from gestionconges.demande where gestionconges.demande.type = '" + type + "'";

            rs = statement.executeQuery(rq);
            while (rs.next()) {
                Demande demande = new Demande();
                demande.setId(rs.getInt("id"));
                demande.setType(type);
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

    @Override
    public List<Demande> findByEtat(Integer etatDemande) {
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

    @Override
    public List<Demande> findByDates(LocalDate date1, LocalDate date2) {
        try {
            Statement statement = connexion.createStatement();
            ResultSet rs;

            String rq = "select * from gestionconges.demande where gestionconges.demande.dateCreation BETWEEN '" + date1 + "' AND '" + date2 + "'";
            rs = statement.executeQuery(rq);

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

    @Override
    public List<Demande> findByEmail(String email) {
        try {
            Statement statement = connexion.createStatement();
            ResultSet rs;
            String rq = "select * from gestionconges.demande where gestionconges.demande.emailEmploye = '" + email + "'";

            rs = statement.executeQuery(rq);
            while (rs.next()) {
                Demande demande = new Demande();
                demande.setId(rs.getInt("id"));
                demande.setType(rs.getString("type"));
                demande.setEtat(rs.getInt("etat"));
                demande.setDateDebut(rs.getDate("dateDebut").toLocalDate());
                demande.setDateFin(rs.getDate("dateFin").toLocalDate());
                demande.setDateCreation(rs.getDate("dateCreation").toLocalDate());
                demande.setEmailEmploye(email);
                listeDemandes.add(demande);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return listeDemandes;
    }

    @Override
    public List<Demande> findByEquipe(String equipe) {
        EmployeDAOImpl employeDAO = new EmployeDAOImpl();
        employeDAO.findAll().stream().filter(e -> e.getEquipe().equals(equipe)).forEach(e -> {
            listeDemandes.addAll(findAll().stream().filter(d -> d.getEmailEmploye().equals(e.getEmail())).collect(Collectors.toList()));
        });
        return listeDemandes;
    }
}