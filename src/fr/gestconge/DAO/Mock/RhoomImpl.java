package fr.gestconge.DAO.Mock;

import fr.gestconge.DAO.Mock.DemandeDAO;
import fr.gestconge.DAO.Mock.DemandeDAOMockImpl;
import fr.gestconge.DAO.Mock.Rhoom;
import fr.gestconge.classes.beans.Demande;

import java.util.List;

public class RhoomImpl implements Rhoom {
    private DemandeDAO demandeDao = new DemandeDAOMockImpl();
    @Override
    public List<Demande> getAllDemandes() {
        return demandeDao.findByAll();
    }
}
