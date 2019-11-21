package fr.gestconge.rhoom;

import fr.gestconge.demande.Demande;
import fr.gestconge.demande.DemandeDAO;
import fr.gestconge.demande.DemandeDAOImpl;

import java.util.List;

public class RhoomImpl implements Rhoom {
    private DemandeDAO demandeDAO = new DemandeDAOImpl();

    @Override
    public List<Demande> getAllDemandes() {
        return demandeDAO.findAll();
    }

    @Override
    public List<Demande> getByEquipe(String equipe) {
        return demandeDAO.findByEquipe(equipe);
    }

    @Override
    public List<Demande> getByEmail(String searchText) {
        return demandeDAO.findByEmail(searchText);
    }

    @Override
    public void updateDemandes(Demande demande) {
        String[] params = {demande.getType(), String.valueOf(demande.getEtat()), String.valueOf(demande.getDateDebut()), String.valueOf(demande.getDateFin()), String.valueOf(demande.getDateCreation())};
        demandeDAO.update(demande, params);
    }

    @Override
    public void removeDemandes(Demande demande) {
        demandeDAO.delete(demande);
    }
}
