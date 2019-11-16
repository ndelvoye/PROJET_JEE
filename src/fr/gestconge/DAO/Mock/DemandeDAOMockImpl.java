package fr.gestconge.DAO.Mock;

import fr.gestconge.DAO.Mock.DemandeDAO;
import fr.gestconge.classes.beans.Demande;

import java.util.ArrayList;
import java.util.List;

public class DemandeDAOMockImpl implements DemandeDAO {
    @Override
    public List<Demande> findByAll() {
        List<Demande> listeDemandes = new ArrayList<Demande>();

        Demande demande = new Demande();
        demande.setType("Conges annuels");
        demande.setNomDemandeur("toto");
        demande.setPrenomDemandeur("toto");
        demande.setDtDebut("14-11-2019");
        demande.setDtCreation("14-11-2019 12:30:21");
        demande.setDtFin("14-12-2019");
        Demande demande1 = new Demande();
        demande1.setType("Conges annuels");
        demande1.setNomDemandeur("tata");
        demande1.setPrenomDemandeur("tata");
        demande1.setDtDebut("14-11-2019");
        demande1.setDtCreation("14-11-2019 12:30:21");
        demande1.setDtFin("14-12-2019");
       //ajout des demandes das la liste
        listeDemandes.add(demande);
        listeDemandes.add(demande1);

        return listeDemandes;
    }

    @Override
    public List<Demande> findByName(String searchText) {
        return null;
    }

    @Override
    public List<Demande> findByPoste(String searchText) {
        return null;
    }
}
