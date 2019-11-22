package fr.gestconge.bean;

import javax.persistence.*;
import java.time.LocalDate;

@Entity
public class Demande {
    @Id
    private Integer id;
    private String type;
    private int etat;
    private LocalDate dateDebut;
    private LocalDate dateFin;
    private LocalDate dateCreation;
    private String emailEmploye;

    // Constructeur
    public Demande(String type, int etat, LocalDate dateDebut, LocalDate dateFin, LocalDate dateCreation, String emailEmploye) {
        this.type = type;
        this.etat = etat;
        this.dateDebut = dateDebut;
        this.dateFin = dateFin;
        this.dateCreation = dateCreation;
        this.emailEmploye = emailEmploye;
    }

    public Demande() {
    }

    // Getters & setters
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public int getEtat() {
        return etat;
    }

    public void setEtat(int etat) {
        this.etat = etat;
    }

    public LocalDate getDateDebut() {
        return dateDebut;
    }

    public void setDateDebut(LocalDate dateDebut) {
        this.dateDebut = dateDebut;
    }

    public LocalDate getDateFin() {
        return dateFin;
    }

    public void setDateFin(LocalDate dateFin) {
        this.dateFin = dateFin;
    }

    public LocalDate getDateCreation() {
        return dateCreation;
    }

    public void setDateCreation(LocalDate dateCreation) {
        this.dateCreation = dateCreation;
    }

    public String getEmailEmploye() {
        return emailEmploye;
    }

    public void setEmailEmploye(String emailEmploye) {
        this.emailEmploye = emailEmploye;
    }

    // Autres fonctions
    @Override
    public String toString() {
        return "Demande{" +
                "id=" + id +
                ", type='" + type + '\'' +
                ", etat=" + etat +
                ", dateDebut=" + dateDebut +
                ", dateFin=" + dateFin +
                ", dateCreation=" + dateCreation +
                ", emailEmploye='" + emailEmploye + '\'' +
                '}';
    }
}