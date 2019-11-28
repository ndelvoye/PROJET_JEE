package fr.gestconge.servlet;

import fr.gestconge.bean.Employe;
import fr.gestconge.formulaire.ConnexionFormulaire;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;


public class ConnexionServlet extends HttpServlet {
    private static final String ATT_USER = "utilisateur";
    private static final String ATT_FORM = "form";
    private static final String ATT_SESSION_USER = "sessionUtilisateur";
    private static final String VUE_FORM = "/vues/standard/VueGlobale_Connexion_Standard.jsp";
    private static final String VUE_STANDARD = "/vues/standard/VueGlobale_Accueil_Standard.jsp";
    private static final String VUE_RH = "/vues/RH/VueGlobale_Accueil_RH.jsp";
    private static final String VUE_LEADER = "/vues/leader/VueGlobale_Accueil_TeamLeader.jsp";

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Affichage de la page de connexion
        this.getServletContext().getRequestDispatcher(VUE_FORM).forward(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Préparation de l'objet formulaire
        ConnexionFormulaire form = new ConnexionFormulaire();

        // Traitement de la requête et récupération du bean en résultant
        Employe utilisateur = form.connecterUtilisateur(request);

        // Récupération de la session depuis la requête
        HttpSession session = request.getSession();


        if (utilisateur != null) {
            session = request.getSession();
        } else {
            session.invalidate();
        }

        // Stockage du formulaire, du bean dans l'objet request
        request.setAttribute(ATT_FORM, form);
        request.setAttribute(ATT_USER, utilisateur);

        RequestDispatcher rd =
                getServletContext().getRequestDispatcher(VUE_FORM);
        RequestDispatcher rd_2 =
                getServletContext().getRequestDispatcher(VUE_STANDARD);
        RequestDispatcher rd_3 =
                getServletContext().getRequestDispatcher(VUE_RH);
        RequestDispatcher rd_4 =
                getServletContext().getRequestDispatcher(VUE_LEADER);


        //request.setAttribute("verification",verifPwd);
        if (form.getErreurs().isEmpty()) {
            /*
             * Si aucune erreur de validation n'a eu lieu, alors ajout du bean
             * Utilisateur à la session
             */
            session.setAttribute(ATT_SESSION_USER, utilisateur);

            utilisateur.setService(utilisateur.getService());
            if (!"rh".equals(utilisateur.getService()) && !"leader".equals(utilisateur.getFonction())) {
                // Si aucune erreur, l'utilisateur est dans la bdd et à un profil standard alors affichage de la fiche récapitulative standard
                rd_2.forward(request, response);
            } else if (utilisateur.getService().equals("rh")) {
                // Si aucune erreur,l'utilisateur est dans la bdd et à un profil rh alors affichage de la fiche récapitulative rh
                rd_3.forward(request, response);
            } else if (utilisateur.getFonction().equals("leader")) {
                // Si aucune erreur,l'utilisateur est dans la bdd et à un profil rh alors affichage de la fiche récapitulative rh
                rd_4.forward(request, response);
            }
        } else {
            // Sinon, ré-affichage du formulaire
            rd.forward(request, response);
        }
    }
}




