package fr.gestconge.servlets.employe;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import fr.gestconge.DAO.Mock.Rhoom;
import fr.gestconge.DAO.Mock.RhoomImpl;
import fr.gestconge.classes.beans.Demande;
import fr.gestconge.classes.beans.Employe;
import fr.gestconge.formulaire.DemandeFormulaire;

public class DemandeServlet extends HttpServlet {
    public static final String ATT_DEMANDE = "demande";
    public static final String ATT_FORM     = "form";
    public static final String SESSION_DEMANDES = "demandes";
    public static final String ATT_SESSION_USER = "sessionUtilisateur";
    public static final String VUE_SUCCES_STANDARD   = "/VueGlobale_ConfirmationFormulaire_Standard.jsp";
    public static final String VUE_SUCCES_RH   = "/VueGlobale_ConfirmationFormulaire_Standard.jsp";
    public static final String VUE_SUCCES_LEADER   = "/VueGlobale_ConfirmationFormulaire_Standard.jsp";
    public static final String VUE_STANDARD     = "/VueGlobale_Formulaire_Standard.jsp";
    public static final String VUE_RH              = "/VueGlobale_Formulaire_RH.jsp";
    public static final String VUE_LEADER             = "/VueGlobale_Formulaire_TeamLeader.jsp";


    public void doGet( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
        /* À la réception d'une requête GET, simple affichage du formulaire */
        this.getServletContext().getRequestDispatcher( VUE_STANDARD ).forward( request, response );
    }

    public void doPost( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
        HttpSession session = request.getSession();
        /* Préparation de l'objet formulaire */
        DemandeFormulaire form = new DemandeFormulaire();
        Rhoom rhoom = new RhoomImpl();

        //List<Demande> listeDemandes= rhoom.getAllDemandes();
       // request.setAttribute("listeDemandes", listeDemandes);

        /* Traitement de la requête et récupération du bean en résultant */
        Demande demande = form.creerDemande( request );
        Employe employe = (Employe) session.getAttribute(ATT_SESSION_USER);
        demande.setEmploye(employe);
        /* Ajout du bean et de l'objet métier à l'objet requête */
        request.setAttribute( ATT_DEMANDE, demande );
        request.setAttribute( ATT_FORM, form );


        if ( form.getErreurs().isEmpty() ) {

            //session.getAttribute( ATT_SESSION_USER, demande. );
            /* Ensuite récupération de la map des demandes dans la session */
            Map<String, Demande> demandes = (HashMap<String, Demande>) session.getAttribute( SESSION_DEMANDES );
            /* Si aucune map n'existe, alors initialisation d'une nouvelle map */
            if ( demandes == null ) {
                demandes = new HashMap<String, Demande>();
            }
            /* Puis ajout de la demande courante dans la map */
            demandes.put( demande.getDtCreation(), demande );
            /* Et enfin (ré)enregistrement de la map en session */
            session.setAttribute( SESSION_DEMANDES, demandes );
            rhoom.updateDemandes(demande);

            /* Si aucune erreur, alors affichage de la fiche récapitulative */
            this.getServletContext().getRequestDispatcher( VUE_SUCCES_STANDARD ).forward( request, response );
        } else {
            /* Sinon, ré-affichage du formulaire de création avec les erreurs */
            this.getServletContext().getRequestDispatcher( VUE_STANDARD ).forward( request, response );
        }
    }
}