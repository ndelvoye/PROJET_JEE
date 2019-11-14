package fr.gestconge.demande;

import java.time.LocalDate;
import java.util.List;

public class DemandeServiceImpl implements DemandeService {
    private DemandeDAO demandeDAO = new DemandeDAOImpl();

    public List<Demande> getAllDemandes() {
        return demandeDAO.findAll();
    }

    public List<Demande> getDemandesById(Integer id) {
        return demandeDAO.findById(id);
    }

    public List<Demande> getDemandesByEtat(Integer etat) {
        return demandeDAO.findByEtat(etat);
    }

    public List<Demande> getDemandesByDateDebut(LocalDate dateDebut) {
        return demandeDAO.findByDateDebut(dateDebut);
    }
}
