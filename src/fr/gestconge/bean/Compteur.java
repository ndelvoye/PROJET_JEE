package fr.gestconge.bean;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.util.Objects;

@Entity
public class Compteur {
    private String emailEmploye;
    private Integer rtt;
    private Integer congesAnnuels;
    private Integer enfantMalade;
    private Integer famille;

    @Id
    @Column(name = "emailEmploye")
    public String getEmailEmploye() {
        return emailEmploye;
    }

    public void setEmailEmploye(String emailEmploye) {
        this.emailEmploye = emailEmploye;
    }

    @Basic
    @Column(name = "RTT")
    public Integer getRtt() {
        return rtt;
    }

    public void setRtt(Integer rtt) {
        this.rtt = rtt;
    }

    @Basic
    @Column(name = "congesAnnuels")
    public Integer getCongesAnnuels() {
        return congesAnnuels;
    }

    public void setCongesAnnuels(Integer congesAnnuels) {
        this.congesAnnuels = congesAnnuels;
    }

    @Basic
    @Column(name = "enfantMalade")
    public Integer getEnfantMalade() {
        return enfantMalade;
    }

    public void setEnfantMalade(Integer enfantMalade) {
        this.enfantMalade = enfantMalade;
    }

    @Basic
    @Column(name = "famille")
    public Integer getFamille() {
        return famille;
    }

    public void setFamille(Integer famille) {
        this.famille = famille;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Compteur compteur = (Compteur) o;
        return Objects.equals(emailEmploye, compteur.emailEmploye) &&
                Objects.equals(rtt, compteur.rtt) &&
                Objects.equals(congesAnnuels, compteur.congesAnnuels) &&
                Objects.equals(enfantMalade, compteur.enfantMalade) &&
                Objects.equals(famille, compteur.famille);
    }

    @Override
    public int hashCode() {
        return Objects.hash(emailEmploye, rtt, congesAnnuels, enfantMalade, famille);
    }
}
