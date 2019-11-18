package fr.gestconge.DAO.Mock;

import fr.gestconge.DAO.Mock.DemandeDAO;
import fr.gestconge.classes.beans.Demande;
import fr.gestconge.classes.beans.Employe;

import java.util.ArrayList;
import java.util.List;

public class DemandeDAOMockImpl implements DemandeDAO {
    private static List<Demande> listeDemandes = (new ArrayList<Demande>());
    @Override
    public List<Demande> findByAll() {
        List<Demande>listReturned = listeDemandes;
      /*  Demande demande = new Demande();
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
        listReturned.add(demande);
        listReturned.add(demande1);*/

        return listReturned;
    }


    @Override
    public List<Demande> findByName(String searchText) {
        return null;
    }

    @Override
    public List<Demande> findByEquipe(String searchText) {
        List<Demande> listeDemande = new ArrayList<Demande>();
        for(Demande demande : listeDemandes){
            if(demande.getEmploye().getEquipe().equals(searchText)){
                listeDemande.add(demande);
            }
        }
        return listeDemande;
    }
    @Override
    public List<Demande> findByEmail(String searchText) {
        List<Demande> listeDemande = new ArrayList<Demande>();
        for(Demande demande : listeDemandes){
            if(demande.getEmploye().getEmail().equals(searchText)){
                listeDemande.add(demande);
            }
        }
        return listeDemande;
    }


    @Override
    public void update(Demande demande) {
        listeDemandes.add(demande);

    }
}
