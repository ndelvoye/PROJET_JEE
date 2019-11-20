package fr.gestconge.compteur;

import java.util.List;

public class CompteurServiceImpl implements CompteurService {

    private CompteurDAO compteurDAO = new CompteurDAOImpl();

    public List<Compteur> getAllCompteurs() {
        return compteurDAO.findAll();
    }

    public List<Compteur> getCompteursByEmailEmploye(String emailEmploye) {
        return compteurDAO.findByEmailEmploye(emailEmploye);
    }
}
