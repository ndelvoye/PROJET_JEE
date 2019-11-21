package fr.gestconge.rhoom;

import fr.gestconge.demande.Demande;

import java.util.List;

public interface Rhoom {
    List<Demande> getAllDemandes();

    List<Demande> getByEquipe(String searchText);

    List<Demande> getByEmail(String searchText);

    void updateDemandes(Demande demande);

    void removeDemandes(Demande demande);
}
