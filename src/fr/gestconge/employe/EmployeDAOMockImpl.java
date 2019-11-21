package fr.gestconge.employe;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class EmployeDAOMockImpl implements EmployeDAO {
    private EmployeDAOImpl employeDAO = new EmployeDAOImpl();

    @Override
    public void save(Employe employe) {

    }

    @Override
    public void update(Employe employe, String[] params) {

    }

    @Override
    public void delete(Employe employe) {

    }

    @Override
    public List<Employe> findAll() {
        List<Employe> listeEmployes = new ArrayList<>();

        Employe employe = new Employe();
        employe.setNom("toto");
        employe.setPrenom("toto");
        employe.setEmail("toto@yopmail.com");
        employe.setPassword("toto");
        employe.setFonction("standard");
        employe.setEquipe("echo");
        employe.setService("ia");
        employe.setDateRecrutement(LocalDate.parse("10-11-1990"));
        Employe employe1 = new Employe();
        employe1.setNom("tata");
        employe1.setPrenom("tata");
        employe1.setEmail("tata@yopmail.com");
        employe1.setPassword("tata");
        employe1.setFonction("leader");
        employe1.setEquipe("dream");
        employe1.setService("iot");
        employe1.setDateRecrutement(LocalDate.parse("10-09-1997"));
        Employe employe2 = new Employe();
        employe2.setNom("tutu");
        employe2.setPrenom("tutu");
        employe2.setEmail("tutu@yopmail.com");
        employe2.setPassword("tutu");
        employe2.setFonction("standard");
        employe2.setEquipe("hola");
        employe2.setService("rh");
        employe2.setDateRecrutement(LocalDate.parse("07-02-1995"));
        Employe employe3 = new Employe();
        employe3.setNom("titi");
        employe3.setPrenom("titi");
        employe3.setEmail("titi@yopmail.com");
        employe3.setPassword("titi");
        employe3.setFonction("leader");
        employe3.setEquipe("jawa");
        employe3.setService("rh");
        employe3.setDateRecrutement(LocalDate.parse("15-03-2005"));

        // Ajout des utilisateurs dans la liste
        listeEmployes.add(employe);
        listeEmployes.add(employe1);
        listeEmployes.add(employe2);
        listeEmployes.add(employe3);
        return listeEmployes;
    }

    @Override
    public List<Employe> findByNomPrenom(String nom, String prenom) {
        return null;
    }

    @Override
    public List<Employe> findByEmail(String email) {
        List<Employe> listeEmployes = new ArrayList<>();
        for (Employe employe : employeDAO.findAll()) {
            if (employe.getEmail().equals(email)) {
                listeEmployes.add(employe);
            }
        }
        return listeEmployes;
    }
}
