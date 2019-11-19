package fr.gestconge.servlets.employe;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import fr.gestconge.DAO.Mock.Company;
import fr.gestconge.DAO.Mock.CompanyImpl;
import fr.gestconge.DAO.Mock.Rhoom;
import fr.gestconge.DAO.Mock.RhoomImpl;
import fr.gestconge.classes.beans.Demande;
import fr.gestconge.classes.beans.Employe;
import fr.gestconge.formulaire.ConnexionFormulaire;


public class ConnexionServlet extends javax.servlet.http.HttpServlet {
    public static final String ATT_USER         = "utilisateur";
    public static final String ATT_FORM         = "form";
    public static final String SESSION_DEMANDES = "demandes";
    public static final String ATT_SESSION_USER = "sessionUtilisateur";
    public static final String VUE_FORM              = "/vues_Standard/VueGlobale_Connexion_Standard.jsp";
    public static final String VUE_STANDARD              = "/vues_Standard/VueGlobale_Accueil_Standard.jsp";
    public static final String VUE_RH              = "/vues_RH/VueGlobale_Accueil_RH.jsp";
    public static final String VUE_LEADER             = "/vues_Leader/VueGlobale_Accueil_TeamLeader.jsp";

    public void doGet( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
        /* Affichage de la page de connexion */
        this.getServletContext().getRequestDispatcher( VUE_FORM ).forward( request, response );
    }

    public void doPost( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
        Company company = new CompanyImpl();
        List<Employe> listeEmployes= company.getAllUsers();

        /* Préparation de l'objet formulaire */
        ConnexionFormulaire form = new ConnexionFormulaire();

        /* Traitement de la requête et récupération du bean en résultant */
        Employe utilisateur = form.connecterUtilisateur( request );

        /* Récupération de la session depuis la requête */
        HttpSession session = request.getSession();
        session.invalidate();
        session = request.getSession();


        /* Stockage du formulaire, du bean dans l'objet request */

        request.setAttribute( ATT_FORM, form );
        request.setAttribute( ATT_USER, utilisateur );


        RequestDispatcher rd =
                getServletContext().getRequestDispatcher(VUE_FORM);
        RequestDispatcher rd_2 =
                getServletContext().getRequestDispatcher(VUE_STANDARD);
        RequestDispatcher rd_3 =
                getServletContext().getRequestDispatcher(VUE_RH);
        RequestDispatcher rd_4 =
                getServletContext().getRequestDispatcher(VUE_LEADER);

        List<Employe> verifEmail =
                company.getUserByMail(utilisateur.getEmail(), listeEmployes);
        List<Employe> verifPwd =
                company.getUserByPwd(utilisateur.getMotDePasse(), verifEmail);


        //request.setAttribute("verification",verifPwd);
        if(form.getErreurs().isEmpty() && verifPwd.size()!=0 ) {

            utilisateur = verifPwd.get(0);
            /*
             * Si aucune erreur de validation n'a eu lieu, alors ajout du bean
             * Utilisateur à la session
             */
            session.setAttribute( ATT_SESSION_USER, utilisateur );

            //initialisation des demandes de l'utilisateur
            Rhoom rhoom = new RhoomImpl();
            List<Demande> list = rhoom.getByEmail(utilisateur.getEmail());;
            Map<String, Demande> map = new HashMap<String, Demande>();
            for (Demande demande : list) map.put(demande.getEmploye().getEmail(),demande);
            session.setAttribute( SESSION_DEMANDES, map );

            utilisateur.setService(verifPwd.get(0).getService());
            if (!"rh".equals(utilisateur.getService()) && !"leader".equals(utilisateur.getPoste())) {
                /* Si aucune erreur, l'utilisateur est dans la bdd et à un profil standard alors affichage de la fiche récapitulative standard */
                rd_2.forward(request, response);
            } else if (utilisateur.getService().equals("rh")) {
                /* Si aucune erreur,l'utilisateur est dans la bdd et à un profil rh alors affichage de la fiche récapitulative rh */
                rd_3.forward(request, response);
            }
            else if (utilisateur.getPoste().equals("leader")) {
                /* Si aucune erreur,l'utilisateur est dans la bdd et à un profil rh alors affichage de la fiche récapitulative rh */rd_4.forward(request, response);
            }
        }
        else {
            /* Sinon, ré-affichage du formulaire */
            rd.forward( request, response );
        }
    }
}




