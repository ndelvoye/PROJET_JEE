<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="fr.gestconge.bean.Compteur" %>
<%@ page import="fr.gestconge.dao.CompteurDAO" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<jsp:include page="includes/Header.jsp">
    <jsp:param name="nomPage" value="TestPage"/>
    <jsp:param name="texteModal" value="TestModal"/>
</jsp:include>
<h1>Liste des compteurs</h1>
<%
    CompteurDAO compteurDAO = (CompteurDAO) request.getAttribute("compteurDAO");
%>
<ul>
    <% for (Compteur compteur : compteurDAO.getAll()) { %>
    <li><%= compteur.toString() %>
    </li>
    <% } %>
</ul>
<%
    Compteur newCompteur = new Compteur();
    newCompteur.setEmailEmploye("tutu@tutu.tutu");
    newCompteur.setRtt(10);
    newCompteur.setEnfantMalade(10);
    newCompteur.setCongesAnnuels(10);
    newCompteur.setFamille(10);
    compteurDAO.save(newCompteur);
%>
<h1>Liste des compteurs (après save)</h1>
<ul>
    <% for (Compteur compteur : compteurDAO.getAll()) { %>
    <li><%= compteur.toString() %>
    </li>
    <% } %>
</ul>
<%
    compteurDAO.update(newCompteur, new String[]{"tutu@tutu.tutu", String.valueOf(9), String.valueOf(9), String.valueOf(9), String.valueOf(9)});
%>
<h1>Liste des compteurs (après update)</h1>
<ul>
    <% for (Compteur compteur : compteurDAO.getAll()) { %>
    <li><%= compteur.toString() %>
    </li>
    <% } %>
</ul>
<%
    compteurDAO.delete(newCompteur);
%>
<h1>Liste des compteurs (après delete)</h1>
<ul>
    <% for (Compteur compteur : compteurDAO.getAll()) { %>
    <li><%= compteur.toString() %>
    </li>
    <% } %>
</ul>

<jsp:include page="includes/Footer.jsp"/>