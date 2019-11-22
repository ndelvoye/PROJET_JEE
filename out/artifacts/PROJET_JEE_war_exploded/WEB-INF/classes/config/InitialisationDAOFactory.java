package fr.gestconge.dao;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class InitialisationDAOFactory implements ServletContextListener {
    private static final String ATT_DAO_FACTORY = "daofactory";
    private DAOFactory DAOFactory;

    @Override
    public void contextInitialized(ServletContextEvent event) {
        // Récupération du ServletContext lors du chargement de l'application
        ServletContext servletContext = event.getServletContext();

        // Instanciation de notre DAOFactory
        this.DAOFactory = DAOFactory.getInstance();

        // Enregistrement dans un attribut ayant pour portée toute l'application
        servletContext.setAttribute(ATT_DAO_FACTORY, this.DAOFactory);
    }

    @Override
    public void contextDestroyed(ServletContextEvent event) {
        // Rien à réaliser lors de la fermeture de l'application...
    }
}