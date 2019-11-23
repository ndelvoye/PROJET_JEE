package fr.gestconge.bean;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.sql.Timestamp;
import java.util.Objects;

@Entity
public class Demande {
    private long id;
    private String type;
    private short etat;
    private Timestamp dateDebut;
    private Timestamp dateFin;
    private Timestamp dateCreation;
    private String emailEmploye;

    @Id
    @Column(name = "id")
    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    @Basic
    @Column(name = "type")
    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    @Basic
    @Column(name = "etat")
    public short getEtat() {
        return etat;
    }

    public void setEtat(short etat) {
        this.etat = etat;
    }

    @Basic
    @Column(name = "dateDebut")
    public Timestamp getDateDebut() {
        return dateDebut;
    }

    public void setDateDebut(Timestamp dateDebut) {
        this.dateDebut = dateDebut;
    }

    @Basic
    @Column(name = "dateFin")
    public Timestamp getDateFin() {
        return dateFin;
    }

    public void setDateFin(Timestamp dateFin) {
        this.dateFin = dateFin;
    }

    @Basic
    @Column(name = "dateCreation")
    public Timestamp getDateCreation() {
        return dateCreation;
    }

    public void setDateCreation(Timestamp dateCreation) {
        this.dateCreation = dateCreation;
    }

    @Basic
    @Column(name = "emailEmploye")
    public String getEmailEmploye() {
        return emailEmploye;
    }

    public void setEmailEmploye(String emailEmploye) {
        this.emailEmploye = emailEmploye;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Demande demande = (Demande) o;
        return id == demande.id &&
                etat == demande.etat &&
                Objects.equals(type, demande.type) &&
                Objects.equals(dateDebut, demande.dateDebut) &&
                Objects.equals(dateFin, demande.dateFin) &&
                Objects.equals(dateCreation, demande.dateCreation);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, type, etat, dateDebut, dateFin, dateCreation);
    }

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
