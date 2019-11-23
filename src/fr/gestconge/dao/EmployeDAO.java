package fr.gestconge.dao;

import fr.gestconge.bean.Employe;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import java.util.List;
import java.util.Objects;
import java.util.function.Consumer;

public class EmployeDAO implements DAO<Employe> {
    private EntityManager entityManager;

    public EmployeDAO() {
        this.entityManager = Persistence.createEntityManagerFactory("PROJET_JEE").createEntityManager();
    }

    // Fonctions spécifiques
    public Employe getByEmail(String email) {
        return entityManager.find(Employe.class, email);
    }

    public List<Employe> getByNomPrenom(String nom, String prenom) {
        return entityManager.createQuery("SELECT e FROM Employe e WHERE nom = '" + nom + "' AND prenom = '" + prenom + "'").getResultList();
    }

    public List<Employe> getByFonction(String fonction) {
        return entityManager.createQuery("SELECT e FROM Employe e WHERE fonction = '" + fonction + "'").getResultList();
    }

    public List<Employe> getByEquipe(String equipe) {
        return entityManager.createQuery("SELECT e FROM Employe e WHERE equipe = '" + equipe + "'").getResultList();
    }

    public List<Employe> getByService(String service) {
        return entityManager.createQuery("SELECT e FROM Employe e WHERE service = '" + service + "'").getResultList();
    }

    // Fonctions de base
    @Override
    public List<Employe> getAll() {
        return entityManager.createQuery("SELECT e FROM Employe e").getResultList();
    }

    @Override
    public void save(Employe employe) {
        executeInsideTransaction(entityManager -> entityManager.persist(employe));
    }

    @Override
    public void update(Employe employe, String[] params) {
        employe.setEmail(Objects.requireNonNull(
                params[0], "Email cannot be null"));
        employe.setPassword(Objects.requireNonNull(
                params[1], "Password cannot be null"));
        employe.setNom(Objects.requireNonNull(
                params[2], "Nom cannot be null"));
        employe.setPrenom(Objects.requireNonNull(
                params[3], "Prenom cannot be null"));
        employe.setAdresse(Objects.requireNonNull(
                params[4], "Adresse cannot be null"));
        employe.setFonction(Objects.requireNonNull(
                params[5], "Fonction cannot be null"));
        employe.setEquipe(Objects.requireNonNull(
                params[6], "Equipe cannot be null"));
        employe.setService(Objects.requireNonNull(
                params[7], "Service cannot be null"));
        executeInsideTransaction(entityManager -> entityManager.merge(employe));
    }

    @Override
    public void delete(Employe employe) {
        executeInsideTransaction(entityManager -> entityManager.remove(employe));
    }

    private void executeInsideTransaction(Consumer<EntityManager> action) {
        EntityTransaction tx = entityManager.getTransaction();
        try {
            tx.begin();
            action.accept(entityManager);
            tx.commit();
        } catch (RuntimeException e) {
            tx.rollback();
            throw e;
        }
    }
}