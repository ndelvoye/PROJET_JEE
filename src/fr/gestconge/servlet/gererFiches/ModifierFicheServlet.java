package fr.gestconge.servlet.gererFiches;

import fr.gestconge.bean.Employe;
import fr.gestconge.dao.EmployeDAO;
import fr.gestconge.formulaire.ModifierFicheFormulaire;
import fr.gestconge.utils.Vues;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/ModifierFiche")
public class ModifierFicheServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Employe utilisateur = (Employe) session.getAttribute("utilisateur");
        if (utilisateur != null) {
            if (utilisateur.getFonction().equals("leader") && utilisateur.getService().equals("RH")) {
                ModifierFicheFormulaire form = new ModifierFicheFormulaire();

                // Traitement de la requête et récupération du bean en résultant
                EmployeDAO employeDAO = new EmployeDAO();
                String[] tableauModifs = new String[8];
                tableauModifs[0] = request.getParameter("email");
                tableauModifs[1] = request.getParameter("password");
                tableauModifs = form.recupererChamps(request);

                if (form.getErreurs().isEmpty()) { // S'il n'y a pas eu d'errreurs
                    // On modifie la demande en BDD
                    employeDAO.update(employeDAO.getByEmail(request.getParameter("adresse")), tableauModifs);

                    // On redirige l'utilisateur vers la liste des fiches
                    response.sendRedirect("ListeFiches");
                } else { // Sinon
                    request.setAttribute("form", form);

                    // On redirige l'utilisateur vers le formulaire avec les différentes erreurs obtenues
                    this.getServletContext().getRequestDispatcher(Vues.ListeFiches.getLien()).forward(request, response);
                }
            } else {
                response.sendRedirect("Agenda");
            }
        } else {
            response.sendRedirect("Connexion");
        }
    }
}