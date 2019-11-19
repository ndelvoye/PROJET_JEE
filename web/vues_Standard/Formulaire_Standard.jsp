<%@ page import="fr.gestconge.classes.beans.Employe" %><%--@elvariable id="form" type="fr.gestconge.formulaire.DemandeFormulaire"--%>
<%--@elvariable id="form" type="fr.gestconge.formulaire.InscriptionFormulaire"--%>
<%@  page contentType="text/html;charset=UTF-8" language="java"  %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    Employe employe = (Employe)session.getAttribute("sessionUtilisateur");
%>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="assets/js/demande.js"></script>
<!------ Include the above in your HEAD tag ---------->
<link type="text/css" rel="stylesheet" href="assets/css/demande.css" />

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Formulaire demande</title>
    <link type="text/css" rel="stylesheet" href="assets/css/demande.css" />
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
                    <div class="stepwizard-step">
                        <a href="#step-3" type="button" class="btn btn-default btn-circle" disabled="disabled">3</a>
                        <p>Etape 3</p>
                    </div>
                </div>
            </div>
            <form role="form" METHOD="post" action="DemandeServlet">
                <div class="row setup-content" id="step-1">
                    <div class="col-xs-12">
                        <div class="col-md-12" >
                            <h3> Etape 1</h3>
                            <div class="form-group">
                                <label class="control-label">Nom</label>
                                <input   type="text" required="required" class="form-control" placeholder="Nom"  name="nom_demandeur" value="<c:out value="${demande.nomDemandeur}"/>" size="30" maxlength="30"/>
                                <span class="erreur">${form.erreurs['nom_demandeur']}</span>
                            </div>
                            <div class="form-group">
                                <label class="control-label">Prenom</label>
                                <input type="text" required="required" class="form-control" placeholder="Prenom" name="prenom_demandeur" value="<c:out value="${demande.prenomDemandeur}"/>" size="30" maxlength="30"/>
                                <span class="erreur">${form.erreurs['prenom_demandeur']}</span>
                            </div>
                            <button class="btn btn-primary nextBtn btn-lg pull-right" type="button" >Suivant</button>
                        </div>
                    </div>
                </div>
                <div class="row setup-content" id="step-2">
                    <div class="col-xs-11">
                        <div class="col-md-12">
                            <h3> Etape 2</h3>
                            <div class="form-group">
                                    <p class="control-label">Type de Congés</p>
                                    <div class="d-inline">
                                        <input class="bouton-radio" type="radio" name="typeDemande" value= "Conges annuels"required="required"  id="ca"
                                               checked="checked">
                                        <label for="ca">Congés annuels</label>
                                        <c:if test="${param.typeDemande == 'Conges annuels'}">
                                            <c:out value="${demande.type}"/>
                                        </c:if>
                                    </div>
                                    <div class="d-inline">
                                        <input class="bouton-radio" type="radio" name="typeDemande"  value="Conges maternite" required="required" id="cm" >
                                        <label for="cm">Congés maternité</label>
                                        <c:if test="${param.typeDemande == 'Conges maternite'}">
                                            <c:out value="${demande.type}"/>
                                        </c:if>
                                    </div>

                                    <div class="d-inline">
                                        <input class="bouton-radio" type="radio" required="required" id="cp" name="typeDemande" value="Conges paternite">
                                        <label for="cp">Congés paternité</label>
                                        <c:if test="${param.typeDemande == 'Conges paternité'}">
                                            <c:out value="${demande.type}"/>
                                        </c:if>
                                    </div >

                                    <div class="d-inline">
                                        <input class="bouton-radio" type="radio" required="required"  id="clm" name="typeDemande" value="Conges maladie">
                                        <label for="clm">Congés maladie</label>
                                        <c:if test="${param.typeDemande == 'Conges maladie'}">
                                            <c:out value="${demande.type}"/>
                                        </c:if>
                                    </div>

                                    <div class="d-inline">
                                        <input class="bouton-radio" type="radio" required="required" id="cif" name="typeDemande"  value="CIF">
                                        <label for="cif">CIF</label>
                                        <c:if test="${param.typeDemande == 'CIF'}">
                                            <c:out value="${demande.type}"/>
                                        </c:if>
                                    </div>


                                 </div>
                            <div class="form-group">
                                <label class="control-label">Date de début</label>
                                <input maxlength="200" required="required" class="form-control" type="date"  name="dtDebut" id ="dtDebut" value="<c:out value="${demande.dtDebut}"/>" />
                                <span class="erreur">${form.erreurs['dtDebut']}</span>


                            </div>
                            <div class="form-group">
                                <label class="control-label">Date de fin</label>
                                <input maxlength="200" required="required" class="form-control" type="date"  name="dtFin" value="<%--@elvariable id="demande" type="fr.gestconge.classes.beans.Demande"--%>
                                <c:out value="${demande.dtFin}"/>"  />
                                <span class="erreur">${form.erreurs['dtFin']}</span>
                            </div>
                            <button class="btn btn-primary nextBtn btn-lg pull-right" type="button" >Suivant</button>
                        </div>
                    </div>
                </div>

                <div class="row setup-content" id="step-3">

                    <div class="col-xs-12">
                        <div class="col-md-12">
                            <h3> Etape 3</h3>
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