package fr.gestconge.dao;

import fr.gestconge.bean.Compteur;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;
import java.util.List;
import java.util.Objects;
import java.util.Optional;
import java.util.function.Consumer;

public class JpaCompteurDao implements Dao<Compteur> {

    private EntityManager entityManager;

    // standard constructors

    @Override
    public Optional<Compteur> get(long id) {
        return Optional.ofNullable(entityManager.find(Compteur.class, id));
    }

    @Override
    public List<Compteur> getAll() {
        Query query = entityManager.createQuery("SELECT emailEmploye, rtt, congesAnnuels, enfantMalade, famille FROM Compteur");
        return query.getResultList();
    }

    @Override
    public void save(Compteur compteur) {
        executeInsideTransaction(entityManager -> entityManager.persist(compteur));
    }

    @Override
    public void update(Compteur compteur, String[] params) {
        compteur.setEmailEmploye(Objects.requireNonNull(
                params[0], "Email cannot be null"));
        compteur.setRtt(Integer.parseInt(params[1]));
        compteur.setCongesAnnuels(Integer.parseInt(params[2]));
        compteur.setEnfantMalade(Integer.parseInt(params[3]));
        compteur.setFamille(Integer.parseInt(params[4]));
        executeInsideTransaction(entityManager -> entityManager.merge(compteur));
    }

    @Override
    public void delete(Compteur compteur) {
        executeInsideTransaction(entityManager -> entityManager.remove(compteur));
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