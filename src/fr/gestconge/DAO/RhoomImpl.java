package fr.gestconge.DAO;

import fr.gestconge.classes.beans.Demande;

import java.util.List;

public class RhoomImpl implements Rhoom {
    private DemandeDAO demandeDao = new DemandeDAOMockImpl();
    @Override
    public List<Demande> getAllDemandes() {
        List <Demande> listeDesDemandes= demandeDao.findByAll();
        return listeDesDemandes;
    }
}
