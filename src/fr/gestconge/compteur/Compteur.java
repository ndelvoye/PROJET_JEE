package fr.gestconge.compteur;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Compteur {
    @Id
    private String email;
    private int RTT;
    private int congesAnnuels;
    private int enfantMalade;
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