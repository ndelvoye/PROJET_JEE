<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page pageEncoding="UTF-8" %>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:include page="includes/Header.jsp">
    <jsp:param name="nomPage" value="Modifier demande"/>
    <jsp:param name="texteModal" value="Sur cette page, vous pouvez modifier la demande sélectionnée."/>
</jsp:include>
<div class="p-4">
    <div class="container">
        <form role="form" METHOD="post" action="ModifierDemande" style="text-align: center;">
            <% String idDemande = request.getParameter("idDemande"); %>
            <div class="col-xs-12">
                <div class="col-md-12">
                    <div class="form-group">
                        <p class="control-label">Type de congé</p>
                        <div class="d-inline">
                            <input class="bouton-radio" type="radio" name="typeDemande" value="RTT"
                                   required="required" id="rtt"
                                   checked="checked">
                            <label for="rtt">RTT</label>
                            <c:if test="${param.typeDemande == 'RTT'}">
                                <c:out value="${demande.type}"/>
                            </c:if>
                        </div>
                        <div class="d-inline">
                            <input class="bouton-radio" type="radio" name="typeDemande" value="CONGANNU"
                                   required="required" id="congesannuels">
                            <label for="congesannuels">Congés annuels</label>
                            <c:if test="${param.typeDemande == 'CONGANNU'}">
                                <c:out value="${demande.type}"/>
                            </c:if>
                        </div>

                        <div class="d-inline">
                            <input class="bouton-radio" type="radio" required="required" id="enfantmalade"
                                   name="typeDemande"
                                   value="ENFMALAD">
                            <label for="enfantmalade">Enfant malade</label>
                            <c:if test="${param.typeDemande == 'ENFMALAD'}">
                                <c:out value="${demande.type}"/>
                            </c:if>
                        </div>

                        <div class="d-inline">
                            <input class="bouton-radio" type="radio" required="required" id="famille" name="typeDemande"
                                   value="FAMILLE">
                            <label for="famille">Famille</label>
                            <c:if test="${param.typeDemande == 'FAMILLE'}">
                                <c:out value="${demande.type}"/>
                            </c:if>
                        </div>
                    </div>

                    <div class="form-group">
                        <p class="control-label">Date de début</p>
                        <div class="d-inline">
                            <label for="dateDebut"></label><input maxlength="200" required="required"
                                                                  class="form-control" type="date" name="dateDebut"
                                                                  id="dateDebut"
                                                                  value="<c:out value="${demande.dateDebut}"/>"/>
                            <span class="erreur">${form.erreurs['dtDebut']}</span>
                        </div>
                        <div class="d-inline">
                            <label for="demiJourDebut">Dès le matin</label>
                            <input class="bouton-radio" type="radio" required="required" id="demiJourDebut"
                                   name="demiJourDebut"
                                   value="demiJourDebutMatin">
                            <c:if test="${param.dateDebutMatin == 'demiJourDebutMatin'}">
                                <c:out value="${demande.dateDebutMatin}"/>
                            </c:if><br>
                            <label for="demiJourDebut">L'après-midi</label>
                            <input class="bouton-radio" type="radio" required="required" id="demiJourDebut"
                                   name="demiJourDebut"
                                   value="demiJourDebutJournee">
                            <c:if test="${param.demiJourDebut == 'demiJourDebutJournee'}">
                                <c:out value="${demande.demiJourDebut}"/>
                            </c:if><br>
                        </div>
                    </div>
                    <div class="form-group">
                        <p class="control-label">Date de fin</p>
                        <div class="d-inline">
                            <label for="dateFin"></label>
                            <input maxlength="200" required="required" class="form-control" type="date" name="dateFin"
                                   id="dateFin"
                                   value="<%--@elvariable id="demande" type="fr.gestconge.classes.beans.Demande"--%>
                                    <c:out value="${demande.dateFin}"/>"/>

                            <span class="erreur">${form.erreurs['dtFin']}</span>
                        </div>
                        <div class="d-inline">
                            <label for="demiJourFin">Dès le matin</label>
                            <input class="bouton-radio" type="radio" required="required" id="demiJourFin"
                                   name="demiJourFin" value="demiJourFinMatin">
                            <c:if test="${param.demiJourFin == 'demiJourFinMatin'}">
                                <c:out value="${demande.demiJourFin}"/>
                            </c:if>
                            <br>
                            <label for="demiJourFin">L'après-midi</label>
                            <input class="bouton-radio" type="radio" required="required" id="demiJourFin"
                                   name="demiJourFin" value="demiJourFinJournee">
                            <c:if test="${param.demiJourFin == 'demiJourFinJournee'}">
                                <c:out value="${demande.demiJourFin}"/>
                            </c:if>
                        </div>
                    </div>
                    <input type="hidden" id="idDemande" name="idDemande" value="<%= idDemande %>">
                    <button class="btn btn-primary nextBtn btn-lg pull-right" type="submit">Modifier</button>
                    <div style="color: red;">
                        <p class="erreur">${form.erreurs['demiJourDebutMatin']} </p>
                        <p class="erreur">${form.erreurs['demiJourFinMatin']} </p>
                        <p class="erreur">${form.erreurs['TimestampNow']} </p>
                        <p class="erreur">${form.erreurs['NbCongesDuType']} </p>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>
<jsp:include page="includes/Footer.jsp"/>