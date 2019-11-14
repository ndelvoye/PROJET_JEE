package fr.gestconge.compteur;

import java.util.List;

public class CompteurServiceImpl implements CompteurService {

    private CompteurDAO compteurDAO = new CompteurDAOImpl();

    public List<Compteur> getAllCompteurs() {
        return compteurDAO.findAll();
    }

    public List<Compteur> getCompteursByIdEmploye(Integer idEmploye) {
        return compteurDAO.findByIdEmploye(idEmploye);
    }
}
