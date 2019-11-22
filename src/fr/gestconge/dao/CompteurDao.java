package fr.gestconge.dao;

import fr.gestconge.bean.Compteur;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.Optional;

public class CompteurDao implements Dao<Compteur> {
    private List<Compteur> listeCompteurs = new ArrayList<>();

    public CompteurDao() {
    }

    @Override
    public Optional<Compteur> get(long id) {
        return Optional.ofNullable(listeCompteurs.get((int) id));
    }

    @Override
    public List<Compteur> getAll() {
        return listeCompteurs;
    }

    @Override
    public void save(Compteur compteur) {
        listeCompteurs.add(compteur);
    }

    @Override
    public void update(Compteur compteur, String[] params) {
        compteur.setEmailEmploye(Objects.requireNonNull(
                params[0], "Email cannot be null"));
        compteur.setRtt(Integer.parseInt(params[1]));
        compteur.setCongesAnnuels(Integer.parseInt(params[2]));
        compteur.setEnfantMalade(Integer.parseInt(params[3]));
        compteur.setFamille(Integer.parseInt(params[4]));
        listeCompteurs.add(compteur);
    }

    @Override
    public void delete(Compteur compteur) {
        listeCompteurs.remove(compteur);
    }
}
