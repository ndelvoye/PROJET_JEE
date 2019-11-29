package fr.gestconge.utils;

public enum Vues {
    // DRH
    CreerFiche("/vues/restreint/CreerFiche.jsp"),
    ModifierFiche("/vues/restreint/ModifierFiche.jsp"),
    ListeFiches("/vues/restreint/ListeFiches.jsp"),

    // RH
    TraiterDemandes("/vues/restreint/TraiterDemandes.jsp"),
    Statistiques("/vues/restreint/Statistiques.jsp"),

    // RH & Chef équipe
    ListeConges("/vues/restreint/ListeConges.jsp"),

    // Pour tous
    CreerDemande("/vues/CreerDemande.jsp"),
    ModifierDemande("/vues/ModifierDemande.jsp"),
    MesDemandes("/vues/MesDemandes.jsp"),
    MonAgenda("/vues/MonAgenda.jsp"),
    MonProfil("/vues/MonProfil.jsp"),
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
