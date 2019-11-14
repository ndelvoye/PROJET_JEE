<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Historique demande</title>
    <link type="text/css" rel="stylesheet" href="<c:url value="/assets/css/demande.css" />" />
</head>
<body>

<div class="p-4">
    <h3>Recapitulatif</h3>
    <c:choose>
        <%-- Si aucune demande n'existe en session, affichage d'un message par défaut. --%>
        <c:when test="${ empty sessionScope.demandes }">
        <p class="erreur">Aucune demande enregistrée.</p>
        </c:when>
        <%-- Sinon, affichage du tableau. --%>
        <c:otherwise>
            <table class="table table-bordered track_tbl">
                <thead>
                <tr>
                    <th>Nom</th>
                    <th>Prenom</th>
                    <th>Type demande</th>
                    <th>Date début</th>
                    <th>Date fin</th>
                    <th>Statut de demande</th>
                    <th class="action">Action</th>
                </tr>
                <%-- Parcours de la Map des demandes en session, et utilisation de l'objet varStatus. --%>
                <c:forEach items="${ sessionScope.demandes }" var="mapDemandes" varStatus="boucle">

                </thead>
                <tbody>
                <tr class="${boucle.index % 2 == 0 ? 'pair' : 'impair'}">
                    <td class="track_dot">
                        <span class="track_line"></span>
                    </td>
                        <%-- Affichage des propriétés du bean Demande, qui est stocké en tant que valeur de l'entrée courante de la map --%>
                    <td><c:out value="${ mapDemandes.value.prenomDemandeur} ${ mapDemandes.value.nomDemandeur }"/></td>
                    <td><c:out value="${ mapDemandes.value.dtDebut }"/></td>
                    <td><c:out value="${ mapDemandes.value.dtFin }"/></td>
                    <td><c:out value="${ mapDemandes.value.type }"/></td>
                    <td><c:out value="${ mapDemandes.value.dtCreation }"/></td>
                    <%-- Lien vers la servlet de suppression, avec passage de la date de la commande - c'est-à-dire la clé de la Map - en paramètre grâce à la balise <c:param/>. --%>
                    <td class="action">
                        <a href="<c:url value="/SuppressionServlet"><c:param name="dtCreation" value="${ mapDemandes.key }" /></c:url>">
                            <img src="<c:url value="assets/img/supprimer.png"/>" alt="Supprimer" />
                        </a>
                    </td>
                </tr>
                </tbody>
                </c:forEach>
            </table>
        </c:otherwise>
    </c:choose>
</div>
</body>
</html>

