package fr.gestconge.servlets;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import fr.gestconge.classes.beans.Demande;
import fr.gestconge.formulaire.DemandeFormulaire;

public class DemandeServlet extends HttpServlet {
    public static final String ATT_DEMANDE = "demande";
    public static final String ATT_FORM     = "form";
    public static final String SESSION_DEMANDES = "demandes";

    public static final String VUE_SUCCES   = "/recapitulatif.jsp";
    public static final String VUE_FORM     = "/formulaireDemande.jsp";

    public void doGet( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
        /* À la réception d'une requête GET, simple affichage du formulaire */
        this.getServletContext().getRequestDispatcher( VUE_FORM ).forward( request, response );
    }

    public void doPost( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
        /* Préparation de l'objet formulaire */
        DemandeFormulaire form = new DemandeFormulaire();

        /* Traitement de la requête et récupération du bean en résultant */
        Demande demande = form.creerDemande( request );

        /* Ajout du bean et de l'objet métier à l'objet requête */
        request.setAttribute( ATT_DEMANDE, demande );
        request.setAttribute( ATT_FORM, form );

        if ( form.getErreurs().isEmpty() ) {
            HttpSession session = request.getSession();
            /* Ensuite récupération de la map des demandes dans la session */
            Map<String, Demande> demandes = (HashMap<String, Demande>) session.getAttribute( SESSION_DEMANDES );
            /* Si aucune map n'existe, alors initialisation d'une nouvelle map */
            if ( demandes == null ) {
                demandes = new HashMap<String, Demande>();
            }
            /* Puis ajout de la commande courante dans la map */
            demandes.put( demande.getDtCreation(), demande );
            /* Et enfin (ré)enregistrement de la map en session */
            session.setAttribute( SESSION_DEMANDES, demandes );

            /* Si aucune erreur, alors affichage de la fiche récapitulative */
            this.getServletContext().getRequestDispatcher( VUE_SUCCES ).forward( request, response );
        } else {
            /* Sinon, ré-affichage du formulaire de création avec les erreurs */
            this.getServletContext().getRequestDispatcher( VUE_FORM ).forward( request, response );
        }
    }
}