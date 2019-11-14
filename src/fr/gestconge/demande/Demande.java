package fr.gestconge.demande;

import javax.persistence.Entity;
import javax.persistence.Id;
import java.time.LocalDate;

@Entity
public class Demande {
    @Id
    private Integer id;
    private String type;
    private Integer etat;
    private Integer idEmploye;
    private LocalDate dateDebut;
    private LocalDate dateFin;
    private LocalDate dateCreation;

    // Constructeur
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

    public Integer getEtat() {
        return etat;
    }

    public void setEtat(Integer etat) {
        this.etat = etat;
    }

    public Integer getIdEmploye() {
        return idEmploye;
    }

    public void setIdEmploye(Integer idEmploye) {
        this.idEmploye = idEmploye;
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

    // Autres fonctions

    @Override
    public String toString() {
        return "Demande{" +
                "id=" + id +
                ", type='" + type + '\'' +
                ", etat=" + etat +
                ", idEmploye=" + idEmploye +
                ", dateDebut=" + dateDebut +
                ", dateFin=" + dateFin +
                ", dateCreation=" + dateCreation +
                '}';
    }
}