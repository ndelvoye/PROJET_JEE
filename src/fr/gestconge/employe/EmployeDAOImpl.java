package fr.gestconge.employe;


import common.DBManager;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

public class EmployeDAOImpl implements EmployeDAO {
    private Connection connexion = DBManager.getInstance().getConnection();
    private List<Employe> listeEmployes = new ArrayList<>();

    @Override
    public void save(Employe employe) {
        listeEmployes.add(employe);
    }

    @Override
    public void update(Employe employe, String[] params) {
        employe.setEmail(Objects.requireNonNull(params[0], "L'email ne peut pas être null"));
        employe.setPassword(Objects.requireNonNull(params[1], "Le mot de passe ne peut pas être null"));
        employe.setNom(Objects.requireNonNull(params[2], "Le nom ne peut pas être null"));
        employe.setPrenom(Objects.requireNonNull(params[3], "Le prénom ne peut pas être null"));
        employe.setFonction(Objects.requireNonNull(params[4], "La fonction ne peut pas être null"));
        employe.setEquipe(Objects.requireNonNull(params[5], "L'équipe ne peut pas être null"));
        employe.setService(Objects.requireNonNull(params[6], "Le service ne peut pas être null"));
        employe.setDateRecrutement(Objects.requireNonNull(LocalDate.parse(params[7]), "La date de recrutement ne peut pas être null"));
        listeEmployes.add(employe);
    }

    @Override
    public void delete(Employe employe) {
        listeEmployes.remove(employe);
    }

    @Override
    public List<Employe> findAll() {
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

    @Override
    public List<Employe> findByNomPrenom(String nom, String prenom) {
        try {
            Statement statement = connexion.createStatement();
            ResultSet rs;
            rs = statement.executeQuery("select * from gestionconges.employe where nom = '" + nom + "' and prenom = '" + prenom + "'");
            while (rs.next()) {
                Employe employe = new Employe();
                employe.setEmail(rs.getString("email"));
                employe.setPassword(rs.getString("password"));
                employe.setNom(nom);
                employe.setPrenom(prenom);
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

    @Override
    public List<Employe> findByEmail(String email) {
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