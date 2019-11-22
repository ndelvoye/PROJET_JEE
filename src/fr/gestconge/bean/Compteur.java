package fr.gestconge.bean;

import javax.persistence.*;

@Entity
@Table(name="Compteur")
public class Compteur {
    @Id
    @GeneratedValue( strategy = GenerationType.IDENTITY )
    private String email;

    @Column(name = "rtt")
    private int RTT;

    @Column(name = "congesAnnuels")
    private int congesAnnuels;

    @Column(name = "enfantMalade")
    private int enfantMalade;

    @Column(name = "famille")
    private int famille;

    // Constructeur
    public Compteur() {
    }

    // Getters & setters
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getRTT() {
        return RTT;
    }

    public void setRTT(int RTT) {
        this.RTT = RTT;
    }

    public int getCongesAnnuels() {
        return congesAnnuels;
    }

    public void setCongesAnnuels(int congesAnnuels) {
        this.congesAnnuels = congesAnnuels;
    }

    public int getEnfantMalade() {
        return enfantMalade;
    }

    public void setEnfantMalade(int enfantMalade) {
        this.enfantMalade = enfantMalade;
    }

    public int getFamille() {
        return famille;
    }

    public void setFamille(int famille) {
        this.famille = famille;
    }
}