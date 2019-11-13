<%--@elvariable id="form" type="fr.gestconge.formulaire.DemandeFormulaire"--%>
<%--@elvariable id="form" type="fr.gestconge.formulaire.InscriptionFormulaire"--%>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
    <h1 style="text-align: center"> Formulaire demande</h1>
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
            <form role="form" METHOD="post" action="<c:url value="/DemandeServlet"/>">
                <div class="row setup-content" id="step-1">
                    <div class="col-xs-12">
                        <div class="col-md-12">
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
                    <div class="col-xs-12">
                        <div class="col-md-12">
                            <h3> Etape 2</h3>
                            <div class="form-group">
                                <label class="control-label">Type de Congés</label>
                                    <input maxlength="200" type="radio" required="required" class="form-control" id="ca" name="typeDemande" value="<c:out value="${demande.type}"/>"
                                           checked >
                                    <label for="ca">Congés annuels</label>
                                    <input maxlength="200" type="radio" required="required" class="form-control" id="cm" name="typeDemande"  value="<c:out value="${demande.type}"/>">
                                    <label for="cm">Congés maternité</label>
                                    <input maxlength="200" type="radio" required="required" class="form-control" id="cp" name="typeDemande" value="<c:out value="${demande.type}"/>">
                                    <label for="cp">Congés paternité</label>
                                    <input maxlength="200" type="radio" required="required" class="form-control" id="clm" name="typeDemande" value="<c:out value="${demande.type}"/>">
                                    <label for="clm">Congés maladie</label>
                                    <input maxlength="200" type="radio" required="required" class="form-control" id="cif" name="typeDemande"  value="<c:out value="${demande.type}"/>">
                                    <label for="cif">CIF</label>
                                 </div>
                            <div class="form-group">
                                <label class="control-label">Date de début</label>
                                <input maxlength="200" required="required" class="form-control" type="date"  name="dtDebut" value="<c:out value="${demande.dtDebut}"/>" />
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
                    <p class="info">${ form.resultat }</p>
                    <div class="col-xs-12">
                        <div class="col-md-12">
                            <h3> Etape 3</h3>
                            <button class="btn btn-success btn-lg pull-right" type="submit">Envoyer</button>
                        </div>
                    </div>
                </div>
            </form>

        </div>
</body>
</html>