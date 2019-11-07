package fr.gestconge.demande;

import java.time.LocalDate;

public class Demande {

    // AttributsAC
    private String type;
    private Integer etat;
    private LocalDate dateDebut;
    private LocalDate dateFin;
    private LocalDate dateCreation;

    private Integer id;

    // Constructeur
    public Demande(String type, Integer etat, LocalDate dateDebut, LocalDate dateFin, LocalDate dateCreation, Integer id) {
        this.type = type;
        this.etat = etat;
        this.dateDebut = dateDebut;
        this.dateFin = dateFin;
        this.dateCreation = dateCreation;

        this.id = id;
    }

    // Setters

    public void setType(String type) {
        this.type = type;
    }

    public void setEtat(Integer etat) {
        this.etat = etat;
    }

    public void setDateDebut(LocalDate dateDebut) {
        this.dateDebut = dateDebut;
    }

    public void setDateFin(LocalDate dateFin) {
        this.dateFin = dateFin;
    }

    public void setDateCreation(LocalDate dateCreation) {
        this.dateCreation = dateCreation;
    }


    // Getters

    public String getType() {
        return type;
    }

    public Integer getEtat() {
        return etat;
    }

    public LocalDate getDateDebut() {
        return dateDebut;
    }

    public LocalDate getDateFin() {
        return dateFin;
    }

    public LocalDate getDateCreation() {
        return dateCreation;
    }



}


/*
CREATE TABLE Demande
(
    id SERIAL PRIMARY KEY,
    type      CHAR(30) PRIMARY KEY,
    etat    TINYINT,
    dateDebut DATE,
    dateFin DATE,
    dateCreation DATE

);

 */