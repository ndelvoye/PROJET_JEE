<%--@elvariable id="form" type="fr.gestconge.formulaire.DemandeFormulaire"--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%--@elvariable id="demande" type="fr.gestconge.classes.beans.Demande"--%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Affichage d'une commande</title>
    <link type="text/css" rel="stylesheet" href="<c:url value="/assets/css/demande.css"/>" />
</head>
<body>

<div id="corps">
    <p class="info">${ form.resultat }</p>
    <p>Commande</p>
    <p>Date Création  : <c:out value="${ demande.dtCreation }"/></p>
    <p>nom demandeur  : <c:out value="${ demande.nomDemandeur }"/></p>
    <p>prenom demandeur  : <c:out value="${ demande.prenomDemandeur }"/></p>
    <p>type de demande  : <c:out value="${ demande.type }"/></p>
    <p>Date Début  : <c:out value="${ demande.dtDebut }"/></p>
    <p>Date Fin  : <c:out value="${ demande.dtFin }"/></p>
</div>
</body>
</html>