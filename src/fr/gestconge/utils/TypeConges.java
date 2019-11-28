package fr.gestconge.utils;

public enum TypeConges {
    RTT("RTT"),
    CongesAnnuels("CONGANNU"),
    EnfantMalade("ENFMALAD"),
    Famille("FAMILLE");

    private String typeConge;

    TypeConges(String typeConge) {
        this.typeConge = typeConge;
    }

    public String getTypeConge() {
        return typeConge;
    }
}
