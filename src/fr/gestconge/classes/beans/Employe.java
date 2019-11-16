package fr.gestconge.classes.beans;

import java.time.LocalDate;

public class Employe {
    // Attributs
    private String nom;
    private String prenom;
    private String dtRecrutement;
    private String motDePasse;
    private String email;
    private String poste;

    private String equipe;
    private String service;



    public String getEquipe() {
        return equipe;
    }

    public void setEquipe(String equipe) {
        this.equipe = equipe;
    }

    public String getMotDePasse() {
        return motDePasse;
    }

    public void setMotDePasse(String motDePasse) {
        this.motDePasse = motDePasse;
    }

    public String getService() {
        return service;
    }

    public void setService(String service) {
        this.service = service;
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

    public String getDtRecrutement() {
        return dtRecrutement;
    }

    public void setDtRecrutement(String dateRecrutement) {
        this.dtRecrutement = dtRecrutement;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPoste() {
        return poste;
    }

    public void setPoste(String poste) {
        this.poste = poste;
    }
}
