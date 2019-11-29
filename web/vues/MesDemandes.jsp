<%@ page import="fr.gestconge.bean.Demande" %>
<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<jsp:include page="includes/Header.jsp">
    <jsp:param name="nomPage" value="Mes demandes"/>
    <jsp:param name="texteModal" value="Mes demandes"/>
</jsp:include>
<%
    List<Demande> listeDemandes = (List<Demande>) request.getAttribute("listeDemandes");
%>
<c:set scope="request" value="${listeDemandes}" var="listeDemandes"/>
<div class="p-4">
    <c:choose>
        <%-- Si aucune demande n'existe en session, affichage d'un message par défaut. --%>
        <c:when test="${ empty listeDemandes }">
            <p class="erreur">Aucune demande enregistrée.</p>
        </c:when>
        <%-- Sinon, affichage du tableau. --%>
        <c:otherwise>
            <table class="table table-bordered track_tbl">
                <tr>
                    <th></th>
                    <th>Type de congé</th>
                    <th>Date début</th>
                    <th>Date fin</th>
                    <th>Date création</th>
                    <th>Statut</th>
                    <th>Commentaire</th>
                    <th class="action">Actions</th>
                </tr>
                    <%-- Parcours de la Map des demandes en session, et utilisation de l'objet varStatus. --%>
                <c:forEach var="demande" items="${ listeDemandes }">
                    <tr>
                        <td class="track_dot">
                            <span class="track_line"></span>
                        </td>
                            <%-- Affichage des propriétés du bean Demande, qui est stocké en tant que valeur de l'entrée courante de la map --%>
                        <td><c:out value="${ demande.type }"/></td>
                        <td><c:out value="${ demande.dateDebut }"/></td>
                        <td><c:out value="${ demande.dateFin }"/></td>
                        <td><c:out value="${ demande.dateCreation }"/></td>
                        <td>
                            <c:choose>
                                <c:when test="${demande.etat == 0}">
                                    <img src="${pageContext.request.contextPath}/assets/img/attente.png" alt="En cours"
                                         style="height: 25px" ; width="25px"/>
                                </c:when>
                                <c:when test="${demande.etat == 1}">
                                    VALIDE
                                </c:when>
                                <c:otherwise>
                                    REFUSE
                                </c:otherwise>
                            </c:choose>
                        </td>
                        <td><c:out value="${ demande.commentaire }"/></td>

                            <%-- Lien vers la servlet de suppression, avec passage de la date de la commande - c'est-à-dire la clé de la Map - en paramètre grâce à la balise <c:param/>. --%>
                        <td class="action">
                                <%-- Si la demande est en état "En cours", on affiche les actions "Modifier" et "Supprimer" --%>
                            <c:if test="${demande.etat == 0}">
                                <a href="<c:url value="/ModifierDemande"><c:param name="idDemande" value="${ demande.id }" /></c:url>">
                                    <img src="${pageContext.request.contextPath}/assets/img/modifier.png" alt="Modifier"
                                         style="height: 30px; width: 25px"/>
                                </a>
                                <a href="<c:url value="/SupprimerDemande"><c:param name="idDemande" value="${ demande.id }" /></c:url>">
                                    <img src="${pageContext.request.contextPath}/assets/img/supprimer.png"
                                         alt="Supprimer"
                                         style="height: 25px; width: 25px"/>
                                </a>
                            </c:if>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </c:otherwise>
    </c:choose>
    <a href="${pageContext.request.contextPath}/CreerDemande"><button class="btn-primary btn">Créer une nouvelle demande</button> </a>
</div>

<jsp:include page="includes/Footer.jsp"/>
