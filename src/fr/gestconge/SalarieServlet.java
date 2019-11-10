package fr.gestconge;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/SalarieServlet")
public class SalarieServlet extends javax.servlet.http.HttpServlet {
    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        doProcess(req,resp);
    }
    public void doPost(HttpServletRequest req, HttpServletResponse resp) {
        doProcess(req,resp);
    }
    private void doProcess(HttpServletRequest request, HttpServletResponse
            response)  {
        String pageName="/welcome.jsp";
        RequestDispatcher rd =
                getServletContext().getRequestDispatcher(pageName);
        try {
            rd.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

}


