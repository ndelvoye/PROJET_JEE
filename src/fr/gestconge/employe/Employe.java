package fr.gestconge.employe;

import javax.persistence.Entity;
import javax.persistence.Id;
import java.time.LocalDate;

@Entity
public class Employe {
    @Id
    private Integer id;
    private String password;
    private String nom;
    private String prenom;
    private LocalDate dtRecrutement;
    private String poste;
    private String equipe;
    private String service;

    // Constructeur
    public Employe() {
    }

    // Getters & Setters
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public LocalDate getDtRecrutement() {
        return dtRecrutement;
    }

    public void setDtRecrutement(LocalDate dtRecrutement) {
        this.dtRecrutement = dtRecrutement;
    }

    public String getPoste() {
        return poste;
    }

    public void setPoste(String poste) {
        this.poste = poste;
    }

    public String getEquipe() {
        return equipe;
    }

    public void setEquipe(String equipe) {
        this.equipe = equipe;
    }

    public String getService() {
        return service;
    }

    public void setService(String service) {
        this.service = service;
    }
}