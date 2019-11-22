package fr.gestconge.servlet;

import fr.gestconge.bean.Compteur;

import javax.persistence.EntityManager;
import javax.persistence.Persistence;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class TestServlet extends HttpServlet {
    private EntityManager entityManager;

    @Override
    public void init() {
        entityManager = Persistence.createEntityManagerFactory("PROJET_JEE").createEntityManager();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            entityManager.getTransaction().begin();
            List<Compteur> listeCompteurs = entityManager.createQuery("SELECT c FROM Compteur c", Compteur.class).getResultList();
            req.setAttribute("compteurs", listeCompteurs);
            entityManager.getTransaction().commit();

            entityManager.getTransaction().begin();
            Compteur compteurRemove = entityManager.find(Compteur.class, "tutu@tutu.tutu");
            if (compteurRemove != null) entityManager.remove(compteurRemove);
            entityManager.getTransaction().commit();

            entityManager.getTransaction().begin();
            Compteur newCompteur = new Compteur();
            newCompteur.setEmailEmploye("toto@toto.toto");
            newCompteur.setRtt(10);
            newCompteur.setFamille(10);
            newCompteur.setCongesAnnuels(10);
            newCompteur.setEnfantMalade(10);
            entityManager.persist(newCompteur);
            entityManager.getTransaction().commit();

            entityManager.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        this.getServletContext().getRequestDispatcher("/vues/test.jsp").forward(req, resp);
    }
}