package fr.gestconge.utils;

public enum Vues {
    Statistiques("/vues/restreint/Statistiques.jsp"),
    TraiterDemandes("/vues/restreint/TraiterDemandes.jsp"),
    ListeDemandes("/vues/restreint/ListeConges.jsp"),
    CreerFiche("/vues/restreint/CreerFiche.jsp"),
    CreerDemande("/vues/CreerDemande.jsp"),
    ModifierDemande("/vues/ModifierDemande.jsp"),
    ListeFiche("/vues/ListeFiche.jsp"),
    MesDemandes("/vues/MesDemandes.jsp"),
    Agenda("/vues/Agenda.jsp"),
    Connexion("/vues/Connexion.jsp");

    private String lien;

    Vues(String lien) {
        this.lien = lien;
    }

    public String getLien() {
        return lien;
    }

    public void setLien(String lien) {
        this.lien = lien;
    }
}
