<%@ page import="fr.gestconge.bean.Employe" %>
<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<jsp:include page="../includes/Header.jsp">
    <jsp:param name="nomPage" value="Liste fiches"/>
    <jsp:param name="texteModal" value="Liste fiches"/>
</jsp:include>
<%
    List<Employe> listeFiches = (List<Employe>) request.getAttribute("listeFiches");
%>
<c:set scope="request" value="${listeFiches}" var="listeFiches"/>
<div class="p-4">
    <c:choose>
        <%-- Si aucune demande n'existe en session, affichage d'un message par défaut. --%>
        <c:when test="${ empty listeFiches }">
            <p class="erreur">Aucune fiche enregistrée.</p>
        </c:when>
        <%-- Sinon, affichage du tableau. --%>
        <c:otherwise>
            <table class="table table-bordered track_tbl">
                <tr>
                    <th></th>
                    <th>Prénom</th>
                    <th>Nom</th>
                    <th>Email</th>
                    <th>Adresse</th>
                    <th>Fonction</th>
                    <th>Équipe</th>
                    <th>Service</th>
                    <th>Date de recrutement</th>
                </tr>
                    <%-- Parcours de la Map des demandes en session, et utilisation de l'objet varStatus. --%>
                <c:forEach var="fiche" items="${ listeFiches }">

                    <tr>
                        <td class="track_dot">
                            <span class="track_line"></span>
                        </td>
                            <%-- Affichage des propriétés du bean Employe, qui est stocké en tant que valeur de l'entrée courante de la map --%>
                        <td><c:out value="${ fiche.prenom }"/></td>
                        <td><c:out value="${ fiche.nom }"/></td>
                        <td><c:out value="${ fiche.email }"/></td>
                        <td><c:out value="${ fiche.adresse }"/></td>
                        <td><c:out value="${ fiche.fonction }"/></td>
                        <td><c:out value="${ fiche.equipe }"/></td>
                        <td><c:out value="${ fiche.service }"/></td>
                        <td><c:out value="${ fiche.dateRecrutement }"/></td>
                        <td><c:out value="${ fiche.equipe }"/></td>
                    </tr>
                </c:forEach>
            </table>
        </c:otherwise>
    </c:choose>
</div>

<jsp:include page="../includes/Footer.jsp"/>
