<%@ page import="fr.gestconge.bean.Demande" %>
<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:include page="../includes/Header.jsp">
    <jsp:param name="nomPage" value="Liste congés"/>
    <jsp:param name="texteModal" value="Liste congés"/>
</jsp:include>
<%
    List<Demande> listeConges = (List<Demande>) request.getAttribute("listeConges");
%>
<c:set scope="request" value="${listeConges}" var="listeConges"/>
<div class="p-4">
    <c:choose>
        <%-- Si aucune demande n'existe en session, affichage d'un message par défaut. --%>
        <c:when test="${ empty listeConges }">
            <p class="erreur">Aucune congé enregistrée.</p>
        </c:when>
        <%-- Sinon, affichage du tableau. --%>
        <c:otherwise>
            <table class="table table-bordered track_tbl">
                <tr>
                    <th></th>
                    <th>Email de l'employé</th>
                    <th>Type de congé</th>
                    <th>Date début</th>
                    <th>Date fin</th>
                    <th>Date création</th>
                </tr>
                    <%-- Parcours de la Map des demandes en session, et utilisation de l'objet varStatus. --%>
                <c:forEach var="conge" items="${ listeConges }">
                    <tr>
                        <td class="track_dot">
                            <span class="track_line"></span>
                        </td>
                            <%-- Affichage des propriétés du bean Demande, qui est stocké en tant que valeur de l'entrée courante de la map --%>
                        <td><c:out value="${ conge.emailEmploye }"/></td>
                        <td><c:out value="${ conge.type }"/></td>
                        <td><c:out value="${ conge.dateDebut }"/></td>
                        <td><c:out value="${ conge.dateFin }"/></td>
                        <td><c:out value="${ conge.dateCreation }"/></td>
                    </tr>
                </c:forEach>
            </table>
        </c:otherwise>
    </c:choose>
</div>

<jsp:include page="../includes/Footer.jsp"/>
