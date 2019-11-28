<%@ page import="fr.gestconge.bean.Employe" %>
<%@  page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Employe employe = (Employe) session.getAttribute("sessionUtilisateur");
%>

<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>



<script src="${pageContext.request.contextPath}/assets/js/demande.js"></script>
<!------ Include the above in your HEAD tag ---------->
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/demande.css"/>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>Formulaire demande</title>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/demande.css"/>
</head>

<body>
<div class="p-4">
    <div class="container">
        <div class="stepwizard">
            <div class="stepwizard-row setup-panel">
                <div class="stepwizard-step">
                    <a href="#step-1" type="button" class="btn btn-primary btn-circle">1</a>
                    <p>Etape 1</p>
                </div>
                <div class="stepwizard-step">
                    <a href="#step-2" type="button" class="btn btn-default btn-circle" disabled="disabled">2</a>
                    <p>Etape 2</p>
                </div>
            </div>
        </div>
        <form role="form" METHOD="post" action="DemandeServlet">
            <div class="row setup-content" id="step-1">
                <div class="col-xs-12">
                    <div class="col-md-12">
                        <h3> Etape 1</h3>
                        <div class="form-group">
                            <p class="control-label">Type de Congés</p>
                            <div class="d-inline">
                                <input class="bouton-radio" type="radio" name="typeDemande" value="RTT"
                                       required="required" id="ca"
                                       checked="checked">
                                <label for="ca">RTT</label>
                                <c:if test="${param.typeDemande == 'RTT'}">
                                    <c:out value="${demande.type}"/>
                                </c:if>
                            </div>
                            <div class="d-inline">
                                <input class="bouton-radio" type="radio" name="typeDemande" value="Conges annuels"
                                       required="required" id="cm">
                                <label for="cm">Congés annuels</label>
                                <c:if test="${param.typeDemande == 'Conges annuels'}">
                                    <c:out value="${demande.type}"/>
                                </c:if>
                            </div>

                            <div class="d-inline">
                                <input class="bouton-radio" type="radio" required="required" id="cp" name="typeDemande"
                                       value="Enfant malade">
                                <label for="cp">Enfant malade</label>
                                <c:if test="${param.typeDemande == 'Enfant malade'}">
                                    <c:out value="${demande.type}"/>
                                </c:if>
                            </div>

                            <div class="d-inline">
                                <input class="bouton-radio" type="radio" required="required" id="clm" name="typeDemande"
                                       value="Famille">
                                <label for="clm">Famille</label>
                                <c:if test="${param.typeDemande == 'Famille'}">
                                    <c:out value="${demande.type}"/>
                                </c:if>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label">Date de début</label>
                            <input maxlength="200" required="required" class="form-control" type="date" name="dtDebut"
                                   id="dtDebut" value="<c:out value="${demande.dtDebut}"/>"/>
                            <span class="erreur">${form.erreurs['dtDebut']}</span>


                        </div>
                        <div class="form-group">
                            <label class="control-label">Date de fin</label>
                            <input maxlength="200" required="required" class="form-control" type="date" name="dtFin"
                                   value="<%--@elvariable id="demande" type="fr.gestconge.classes.beans.Demande"--%>
                                <c:out value="${demande.dtFin}"/>"/>
                            <span class="erreur">${form.erreurs['dtFin']}</span>
                        </div>
                        <button class="btn btn-primary nextBtn btn-lg pull-right" type="button">Suivant</button>
                    </div>
                </div>
            </div>
            <div class="row setup-content" id="step-2">
                <div class="col-xs-11">
                    <div class="col-md-12">
                        <h3> Etape 2</h3>
                        <p class="info">${ form.resultat }</p>
                        <br>
                        <p>Type de demande : <c:out value="${ demande.type }"/></p>
                        <p>Date Début : <c:out value="${ demande.dtDebut }"/></p>
                        <p>Date Fin : <c:out value="${ demande.dtFin }"/></p>
                        <button class="btn btn-success btn-lg pull-right" type="submit">Envoyer</button>
                    </div>
                    <p class="${empty form.erreurs ? 'succes' : 'erreur'}">${form.resultat}</p>
                </div>
            </div>
        </form>
    </div>
</div>
</body>
</html>