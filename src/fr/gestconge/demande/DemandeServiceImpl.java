package fr.gestconge.demande;

import java.util.List;

public class DemandeServiceImpl implements DemandeService {
    private DemandeDAO demandeDAO = new DemandeDAOImpl();

    public List<Demande> getAllDemandes() {
        return demandeDAO.findAll();
    }

    @Override
    public List<Demande> getDemandesByEmail(String email) {
        return demandeDAO.findByEmail(email);
    }
}
