<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="fr.gestconge.bean.Compteur" %>
<%@ page import="java.util.List" %>
<html>
<head>
    <title>Test</title>
</head>
<body>
<h1>Liste des compteurs</h1>
<%
    List<Compteur> listeCompteurs = (List<Compteur>) request.getAttribute("compteurs");
%>
<ul>
    <% for (int i = 0; i < listeCompteurs.size(); i++) { %>
    <li><%= listeCompteurs.get(i).toString() %>
    </li>
    <% } %>
</ul>
</body>
</html>