package fr.gestconge.servlets;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import fr.gestconge.classes.beans.Employe;
import fr.gestconge.formulaire.InscriptionFormulaire;

//@WebServlet("/InscriptionServlet")
public class InscriptionServlet extends javax.servlet.http.HttpServlet {
    public static final String ATT_USER = "utilisateur";
    public static final String ATT_FORM = "form";
    public static final String VUE_FORM = "/inscription.jsp";
    public static final String VUE_SUCCES   = "/accesPublic.jsp";

    public void doGet( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException{
        /* Affichage de la page d'inscription */
        this.getServletContext().getRequestDispatcher( VUE_FORM ).forward( request, response );
    }

    public void doPost( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException{
        /* Préparation de l'objet formulaire */
        InscriptionFormulaire form = new InscriptionFormulaire();

        /* Appel au traitement et à la validation de la requête, et récupération du bean en résultant */
        Employe utilisateur = form.inscrireUtilisateur( request );

        /* Stockage du formulaire et du bean dans l'objet request */
        request.setAttribute( ATT_FORM, form );
        request.setAttribute( ATT_USER, utilisateur );
        RequestDispatcher rd =
                getServletContext().getRequestDispatcher(VUE_FORM);
        RequestDispatcher rd_2 =
                getServletContext().getRequestDispatcher(VUE_SUCCES);

        if ( form.getErreurs().isEmpty() ) {
            /* Si aucune erreur, alors affichage de la fiche récapitulative */
            rd_2.forward( request, response );
        } else {
            /* Sinon, ré-affichage du formulaire */
            rd.forward( request, response );
        }
    }

}
