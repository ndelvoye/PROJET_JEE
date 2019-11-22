<%@ page import="fr.gestconge.bean.Demande" %>
<%@ page import="java.util.List" %>
<html>
<head>
    <title>Test</title>
</head>
<body>
<h1>Liste des demandes</h1>
<%
    List<Demande> listeDemandes = (List<Demande>) session.getAttribute("demandes");
%>
<ul>
    <% for (Demande demande : listeDemandes) { %>
    <li><%= demande.toString() %>
    </li>
    <% } %>
</ul>
</body>
</html>