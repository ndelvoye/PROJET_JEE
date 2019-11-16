package fr.gestconge.DAO.Mock;



import fr.gestconge.DAO.Mock.EmployeDAO;
import fr.gestconge.classes.beans.Employe;

import java.util.ArrayList;
import java.util.List;

public class EmployeDAOMockImpl implements EmployeDAO {


    @Override
    public List<Employe> findAllUsers() {
        List<Employe> listeEmployes = new ArrayList<Employe>();

        Employe employe = new Employe();
            employe.setNom("toto");
            employe.setPrenom("toto");
            employe.setEmail("toto@yopmail.com");
            employe.setMotDePasse("toto");
            employe.setEquipe("echo");
            employe.setService("ia");
            employe.setPoste("standard");
            employe.setDtRecrutement("10-11-1990");
        Employe employe1 = new Employe();
            employe1.setNom("tata");
            employe1.setPrenom("tata");
            employe1.setEmail("tata@yopmail.com");
            employe1.setMotDePasse("tata");
            employe1.setEquipe("dream");
            employe1.setService("iot");
            employe1.setPoste("leader");
            employe1.setDtRecrutement("10-09-1997");
        Employe employe2 = new Employe();
            employe2.setNom("tutu");
            employe2.setPrenom("tutu");
            employe2.setEmail("tutu@yopmail.com");
            employe2.setMotDePasse("tutu");
            employe2.setEquipe("hola");
            employe2.setService("rh");
            employe2.setPoste("standard");
            employe2.setDtRecrutement("07-02-1995");
        Employe employe3 = new Employe();
            employe3.setNom("titi");
            employe3.setPrenom("titi");
            employe3.setEmail("titi@yopmail.com");
            employe3.setMotDePasse("titi");
            employe3.setEquipe("jawa");
            employe3.setService("rh");
            employe3.setPoste("leader");
            employe3.setDtRecrutement("15-03-2005");

        //ajout des utilisateurs dans la liste
        listeEmployes.add(employe);
        listeEmployes.add(employe1);
        listeEmployes.add(employe2);
        listeEmployes.add(employe3);
        return listeEmployes;
    }

    @Override
    public List<Employe> findByUserMail(String searchText, List<Employe> listeEmployes) {
        List<Employe> resultat = new ArrayList<Employe>();
        for (Employe pivot : listeEmployes) {
            if (pivot.getEmail().equals(searchText)) {
                resultat.add(pivot);
            }
        }
        return resultat;
    }

    @Override
    public List<Employe> findByUserPwd(String searchText, List<Employe> listeEmployes) {
        List<Employe> resultat = new ArrayList<Employe>();
        for (Employe pivot : listeEmployes) {
            if (pivot.getMotDePasse().equals(searchText)) {
                resultat.add(pivot);

            }
        }
        return resultat;
    }


}
