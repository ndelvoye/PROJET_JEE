<%@ page import="fr.gestconge.bean.Compteur" %>
<%@ page import="fr.gestconge.bean.Employe" %>
<%@ page import="fr.gestconge.formulaire.ModifierProfilFormulaire" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<jsp:include page="includes/Header.jsp">
    <jsp:param name="nomPage" value="Mon profil"/>
    <jsp:param name="texteModal"
               value="Sur cette page, vous pouvez modifier votre mot de passe, visualiser vos compteurs..."/>
</jsp:include>

<%
    Employe utilisateur = (Employe) session.getAttribute("utilisateur");
    Compteur compteur = (Compteur) request.getAttribute("compteur");
    ModifierProfilFormulaire form = (ModifierProfilFormulaire) request.getAttribute("form");
%>
<c:set scope="request" value="<%= form %>" var="form"/>
<div class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-8 mx-auto">
                <div class="card card-profile">
                    <div class="card-avatar">
                        <img class="img" src="${pageContext.request.contextPath}/assets/img/faces/marc.jpg" alt=""/>
                    </div>
                    <div class="card-body">
                        <h6 class="card-category text-gray"><%= utilisateur.getFonction() %>
                        </h6>
                        <h4 class="card-title m-3"><%= utilisateur.getPrenom() + " " + utilisateur.getNom() %>
                        </h4>
                        <p class="card-description"><%= utilisateur.getAdresse() %>
                        </p>
                        <p class="card-description"><%= utilisateur.getEmail() %>
                        </p>

                        <ul class="border border-info p-3 m-3 text-left list-unstyled">
                            <li><b><%= compteur.getRtt()%>
                            </b> jour(s) de <strong>RTT</strong> (Solde bulletin de paye (reliquat inclus))
                            </li>
                            <li><b><%= compteur.getCongesAnnuels()%>
                            </b> jour(s) de <strong>congés annuels</strong> (Solde
                                bulletin de paye (reliquat inclus))
                            <li>
                            <li><b><%= compteur.getEnfantMalade()%>
                            </b> jour(s) de <strong>enfants malades</strong>(Solde
                                bulletin de paye (reliquat inclus))
                            </li>
                            <li><b><%= compteur.getFamille()%>
                            </b> jour(s) de <strong>congés familiaux</strong> (Solde bulletin
                                de paye (reliquat inclus))
                            </li>
                        </ul>

                        <form action="MonProfil" method="post">
                            <label>Modifier mot de passe
                                <input name="password" type="password" placeholder="•••••••">
                            </label>
                            <label>Confirmer mot de passe
                                <input name="passwordConfirm" type="password" placeholder="•••••••">
                            </label><br>
                            <input type="submit" value="Modifier mot de passe"/>
                            <p>
                                <c:if test="${form.errors}">
                                <c:forEach var="erreur" items="${form.errors}">
                                    <c:out value="erreur"/>
                                </c:forEach>
                                </c:if>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<jsp:include page="includes/Footer.jsp"/>