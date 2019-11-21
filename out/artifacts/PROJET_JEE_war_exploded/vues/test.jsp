<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="fr.gestconge.demande.Demande" %>
<%@ page import="fr.gestconge.demande.DemandeService" %>
<%@ page import="fr.gestconge.demande.DemandeServiceImpl" %>
<%@ page import="java.util.List" %>
<html>
<head>
    <title>Test</title>
</head>
<body>
<h1>Liste des demandes</h1>
<% DemandeService demandeService = new DemandeServiceImpl();
    List<Demande> demandes = demandeService.getAllDemandes();
%>
<ul>
    <% for (int i = 0; i < demandes.size(); i++) { %>
    <li><%= demandes.get(i).toString() %>
    </li>
    <% } %>
</ul>
</body>
</html>