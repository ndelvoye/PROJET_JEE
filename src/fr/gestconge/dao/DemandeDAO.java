package fr.gestconge.dao;

import fr.gestconge.bean.Demande;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import java.sql.Date;
import java.sql.Timestamp;
import java.util.List;
import java.util.Objects;
import java.util.function.Consumer;

public class DemandeDAO implements DAO<Demande> {
    private EntityManager entityManager;

    public DemandeDAO() {
        this.entityManager = Persistence.createEntityManagerFactory("PROJET_JEE").createEntityManager();
    }

    // Fonctions spécifiques
    public Demande getById(int id) {
        return (Demande) entityManager.createQuery("SELECT d FROM Demande d WHERE id = '" + id + "'").getSingleResult();
    }

    public List<Demande> getByEmailEmploye(String emailEmploye) {
        return entityManager.createQuery("SELECT d FROM Demande d WHERE emailEmploye = '" + emailEmploye + "'").getResultList();
    }

    public List<Demande> getBetweenDates(Date date1, Date date2) {
        return entityManager.createQuery("SELECT d FROM Demande d WHERE dateDebut BETWEEN " + date1 + " AND " + date2 + " AND dateFin BETWEEN " + date1 + " AND " + date2).getResultList();
    }



    // Fonctions de base
    @Override
    public List<Demande> getAll() {
        return entityManager.createQuery("SELECT d FROM Demande d").getResultList();
    }

    @Override
    public void save(Demande demande) {
        executeInsideTransaction(entityManager -> entityManager.persist(demande));
    }

    @Override
    public void update(Demande demande, String[] params) {
        demande.setType(Objects.requireNonNull(
                params[0], "Type cannot be null"));
        demande.setDateDebut(Timestamp.valueOf(params[1]));
        demande.setDateFin(Timestamp.valueOf(params[2]));
        demande.setEtat(Short.parseShort(params[3]));
        demande.setCommentaire(params[4]);
        executeInsideTransaction(entityManager -> entityManager.merge(demande));
    }

    @Override
    public void delete(Demande demande) {
        executeInsideTransaction(entityManager -> entityManager.remove(demande));
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