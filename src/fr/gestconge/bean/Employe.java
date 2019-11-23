package fr.gestconge.bean;

import javax.persistence.*;
import java.sql.Date;
import java.util.Objects;

@Entity
public class Employe {
    private String email;
    private String password;
    private String nom;
    private String prenom;
    private String adresse;
    private String fonction;
    private String equipe;
    private String service;
    private Date dateRecrutement;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Basic
    @Column(name = "password")
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Basic
    @Column(name = "nom")
    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    @Basic
    @Column(name = "prenom")
    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    @Basic
    @Column(name = "adresse")
    public String getAdresse() {
        return adresse;
    }

    public void setAdresse(String adresse) {
        this.adresse = adresse;
    }

    @Basic
    @Column(name = "fonction")
    public String getFonction() {
        return fonction;
    }

    public void setFonction(String fonction) {
        this.fonction = fonction;
    }

    @Basic
    @Column(name = "equipe")
    public String getEquipe() {
        return equipe;
    }

    public void setEquipe(String equipe) {
        this.equipe = equipe;
    }

    @Basic
    @Column(name = "service")
    public String getService() {
        return service;
    }

    public void setService(String service) {
        this.service = service;
    }

    @Basic
    @Column(name = "dateRecrutement")
    public Date getDateRecrutement() {
        return dateRecrutement;
    }

    public void setDateRecrutement(Date dateRecrutement) {
        this.dateRecrutement = dateRecrutement;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Employe employe = (Employe) o;
        return Objects.equals(email, employe.email) &&
                Objects.equals(password, employe.password) &&
                Objects.equals(nom, employe.nom) &&
                Objects.equals(prenom, employe.prenom) &&
                Objects.equals(adresse, employe.adresse) &&
                Objects.equals(fonction, employe.fonction) &&
                Objects.equals(equipe, employe.equipe) &&
                Objects.equals(service, employe.service) &&
                Objects.equals(dateRecrutement, employe.dateRecrutement);
    }

    @Override
    public int hashCode() {
        return Objects.hash(email, password, nom, prenom, adresse, fonction, equipe, service, dateRecrutement);
    }

    @Override
    public String toString() {
        return "Employe{" +
                "email='" + email + '\'' +
                ", password='" + password + '\'' +
                ", nom='" + nom + '\'' +
                ", prenom='" + prenom + '\'' +
                ", adresse='" + adresse + '\'' +
                ", fonction='" + fonction + '\'' +
                ", equipe='" + equipe + '\'' +
                ", service='" + service + '\'' +
                ", dateRecrutement=" + dateRecrutement +
                '}';
    }
}
