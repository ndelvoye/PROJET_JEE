<%@ page import="fr.gestconge.bean.Employe" %>
<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<jsp:include page="../includes/Header.jsp">
    <jsp:param name="nomPage" value="Liste fiches"/>
    <jsp:param name="texteModal" value="Liste fiches"/>
</jsp:include>
<%
    List<Employe> listeEmployes = (List<Employe>) request.getAttribute("listeEmployes");
%>
<c:set scope="request" value="${listeEmployes}" var="listeEmployes"/>
<div class="row">
    <div class="col-md-12">
        <div class="card">
            <div class="card-header card-header-primary "
                 style="background-image: linear-gradient(60deg, rgb(0, 188, 212), rgb(142, 36, 170));">
                <h4 class="card-title">Liste fiches</h4>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <c:choose>
                        <%-- Si aucune demande n'existe en session, affichage d'un message par défaut. --%>
                        <c:when test="${ empty listeEmployes }">
                            <p class="erreur">Aucune fiche enregistrée.</p>
                        </c:when>
                        <%-- Sinon, affichage du tableau. --%>
                        <c:otherwise>
                            <table class="table table-bordered track_tbl">
                                <tr>
                                    <th></th>
                                    <th>Email</th>
                                    <th>Prénom</th>
                                    <th>Nom</th>
                                    <th>Adresse</th>
                                    <th>Fonction</th>
                                    <th>Équipe</th>
                                    <th>Service</th>
                                    <th>Date de recrutement</th>
                                    <th colspan="2">Actions</th>
                                </tr>
                                    <%-- Parcours de la Map des demandes en session, et utilisation de l'objet varStatus. --%>
                                <c:forEach var="employe" items="${ listeEmployes }">
                                    <tr>
                                        <td class="track_dot">
                                            <span class="track_line"></span>
                                        </td>
                                            <%-- Affichage des propriétés du bean Employe, qui est stocké en tant que valeur de l'entrée courante de la map --%>
                                        <td><c:out value="${ employe.email }"/></td>
                                        <td><c:out value="${ employe.prenom }"/></td>
                                        <td><c:out value="${ employe.nom }"/></td>
                                        <td><c:out value="${ employe.adresse }"/></td>
                                        <td><c:out value="${ employe.fonction }"/></td>
                                        <td><c:out value="${ employe.equipe }"/></td>
                                        <td><c:out value="${ employe.service }"/></td>
                                        <td><c:out value="${ employe.dateRecrutement }"/></td>
                                        <td class="action">
                                            <form role="form" action="" method="post">
                                                <input type="hidden" value="${employe.email}">
                                                <button type="button" class="btn btn-primary">Modifier</button>
                                            </form>
                                        </td>
                                        <td class="action">
                                            <form role="form" action="SupprimerFiche" method="post">
                                                <input type="hidden" name="email" value="${employe.email}">
                                                <button type="submit" class="btn btn-primary">Supprimer</button>
                                            </form>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </table>
                        </c:otherwise>
                    </c:choose>
                    <a href="${pageContext.request.contextPath}/CreerFiche"><button class="btn-primary btn">Créer une nouvelle fiche</button> </a>
                </div>
            </div>
        </div>
    </div>
</div>

<jsp:include page="../includes/Footer.jsp"/>
