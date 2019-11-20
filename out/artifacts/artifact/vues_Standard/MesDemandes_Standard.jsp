<%@  page contentType="text/html;charset=UTF-8" language="java"  %>
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
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/demande.css" />
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
                <tr>
                    <th></th>
                    <th> Date creation</th>
                    <th>Nom</th>
                    <th>Prenom</th>
                    <th>Type demande</th>
                    <th>Date début</th>
                    <th>Date fin</th>
                    <th>Statut</th>
                    <th class="action">Action</th>
                </tr>
                    <%-- Parcours de la Map des demandes en session, et utilisation de l'objet varStatus. --%>
                <c:forEach var="mapDemandes" items="${ sessionScope.demandes}" >
                    <tr >
                        <td class="track_dot">
                            <span class="track_line"></span>
                        </td>
                            <%-- Affichage des propriétés du bean Demande, qui est stocké en tant que valeur de l'entrée courante de la map --%>
                        <td><c:out value="${ mapDemandes.key}"/></td>
                        <td><c:out value="${ mapDemandes.value.nomDemandeur}"/> </td>
                        <td><c:out value="${ mapDemandes.value.prenomDemandeur}"/></td>
                        <td><c:out value="${ mapDemandes.value.type }"/></td>
                        <td><c:out value="${ mapDemandes.value.dtDebut }"/></td>
                        <td><c:out value="${ mapDemandes.value.dtFin }"/></td>
                        <td>
                            <img src="${pageContext.request.contextPath}/assets/img/attente.png" alt="En cours" style="height: 25px" ; width="25px"/>
                        </td>


                        <%-- Lien vers la servlet de suppression, avec passage de la date de la commande - c'est-à-dire la clé de la Map - en paramètre grâce à la balise <c:param/>. --%>
                        <td class="action">
                            <a href="<c:url value="/SuppressionServlet"><c:param name="dtCreation" value="${ mapDemandes.key }" /></c:url>">
                                <img src="${pageContext.request.contextPath}/assets/img/supprimer.png" alt="Supprimer" style="height: 25px" ; width="25px"/>
                            </a>
                            <a href="<c:url value="/ModificationServlet"><c:param name="dtCreation" value="${ mapDemandes.key }" /></c:url>">
                                <img src="${pageContext.request.contextPath}/assets/img/modifier.png" alt="Modifier" style="height: 25px" ; width="25px"/>
                            </a>
                        </td>
                    </tr>
                </c:forEach>


            </table>
        </c:otherwise>
    </c:choose>
</div>
</body>
</html>

