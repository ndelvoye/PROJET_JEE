package fr.gestconge.compteur;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Compteur {
    @Id
    private int idEmploye;
    private int RTT;
    private int CP;

    // Constructeur
    public Compteur() {
    }

    // Getters & setters
    public int getIdEmploye() {
        return idEmploye;
    }

    public void setIdEmploye(int idEmploye) {
        this.idEmploye = idEmploye;
    }

    public int getRTT() {
        return RTT;
    }

    public void setRTT(int RTT) {
        this.RTT = RTT;
    }

    public int getCP() {
        return CP;
    }

    public void setCP(int CP) {
        this.CP = CP;
    }
}