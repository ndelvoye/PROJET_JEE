package fr.gestconge.DAO.Mock;

import fr.gestconge.DAO.Mock.DemandeDAO;
import fr.gestconge.DAO.Mock.DemandeDAOMockImpl;
import fr.gestconge.DAO.Mock.Rhoom;
import fr.gestconge.classes.beans.Demande;
import fr.gestconge.classes.beans.Employe;

import java.util.List;

public class RhoomImpl implements Rhoom {
    private DemandeDAO demandeDao = new DemandeDAOMockImpl();
    @Override
    public List<Demande> getAllDemandes() {
        return demandeDao.findByAll();
    }

    @Override
    public List<Demande> getByEquipe(String searchText) {
        return demandeDao.findByEquipe(searchText);
    }

    @Override
    public List<Demande> getByEmail(String searchText) {
        return demandeDao.findByEmail(searchText);
    }

    @Override
    public void updateDemandes(Demande demande) {
        demandeDao.update(demande);
    }

}
