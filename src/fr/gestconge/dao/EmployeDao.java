package fr.gestconge.dao;

import fr.gestconge.bean.Employe;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.Optional;

public class EmployeDao implements Dao<Employe> {
    private List<Employe> listeEmployes = new ArrayList<>();

    public EmployeDao() {
    }

    @Override
    public Optional<Employe> get(long id) {
        return Optional.ofNullable(listeEmployes.get((int) id));
    }

    @Override
    public List<Employe> getAll() {
        return listeEmployes;
    }

    @Override
    public void save(Employe employe) {
        listeEmployes.add(employe);
    }

    @Override
    public void update(Employe user, String[] params) {
        user.setEmail(Objects.requireNonNull(
                params[0], "Email cannot be null"));
        user.setPassword(Objects.requireNonNull(
                params[1], "Password cannot be null"));
        user.setNom(Objects.requireNonNull(
                params[2], "Nom cannot be null"));
        user.setPrenom(Objects.requireNonNull(
                params[3], "Prenom cannot be null"));
        user.setAdresse(Objects.requireNonNull(
                params[4], "Adresse cannot be null"));
        user.setFonction(Objects.requireNonNull(
                params[5], "Fonction cannot be null"));
        user.setEquipe(Objects.requireNonNull(
                params[6], "Equipe cannot be null"));
        user.setService(Objects.requireNonNull(
                params[7], "Service cannot be null"));
        listeEmployes.add(user);
    }

    @Override
    public void delete(Employe employe) {
        listeEmployes.remove(employe);
    }
}