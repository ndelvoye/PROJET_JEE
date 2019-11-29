<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page pageEncoding="UTF-8" %>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:include page="../includes/Header.jsp">
    <jsp:param name="nomPage" value="Créer fiche"/>
    <jsp:param name="texteModal"
               value="Sur cette page, vous pouvez créer une nouvelle fiche afin d'intégrer de nouveaux employés à votre structure."/>
</jsp:include>
<form method="post" action="CreerFiche">
    <div class="container">
        <div id="accordion">
            <div class="card card-default">
                <div class="card-header">
                    <h4 class="card-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">
                            <i class="glyphicon glyphicon-search text-gold"></i>
                            <b>SECTION I: COORDONNEES</b>
                        </a>
                    </h4>
                </div>
                <div id="collapse1" class="collapse show">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-3 col-lg-4">
                                <div class="form-group">
                                    <label class="control-label">Nom</label>
                                    <input type="text" class="form-control" id="nom" name="nom" placeholder="nom"
                                           value="" size="20" maxlength="20"/>
                                    <span class="erreur">${form.erreurs['nom']}</span>
                                </div>
                            </div>
                            <div class="col-md-1 col-lg-4">
                                <div class="form-group">
                                    <label class="control-label">Prénom</label>
                                    <input type="text" class="form-control" id="prenom" name="prenom"
                                           placeholder="prenom" value="" size="20"
                                           maxlength="20"/>
                                    <span class="erreur">${form.erreurs['prenom']}</span>
                                </div>

                            </div>
                            <div class="col-md-3 col-lg-4">
                                <div class="form-group">
                                    <label class="control-label">Date recrutement</label>
                                    <input maxlength="200" required="required" class="form-control" type="date"
                                           name="dateRecrutement" value=""
                                           id="dateRecrutement"/>
                                </div>
                            </div>

                        </div>

                        <div class="row">
                            <div class="col-md-4 col-lg-4">
                                <div class="form-group">
                                    <label class="control-label">Adresse mail</label>
                                    <input type="email" class="form-control" id="email" name="email" placeholder="email"
                                           value="" size="20" maxlength="20"/>
                                    <span class="erreur">${form.erreurs['email']}</span>
                                </div>
                            </div>
                            <div class="col-md-4 col-lg-4">
                                <div class="form-group">
                                    <label class="control-label">Mot de passe </label>
                                    <input type="password" class="form-control" id="motdepasse" name="motdepasse"
                                           placeholder="mot de passe" value="" size="20" maxlength="20"/>
                                    <span class="erreur">${form.erreurs['motdepasse']}</span>
                                </div>
                            </div>
                            <div class="col-md-4 col-lg-4">
                                <div class="form-group">
                                    <label class="control-label">Confirmation </label>
                                    <input type="password" class="form-control" id="confirmation" name="confirmation"
                                           placeholder="confirmation" value="" size="20" maxlength="20"/>
                                    <span class="erreur">${form.erreurs['confirmation']}</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card card-default">
                    <div class="card-header">
                        <h4 class="card-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapse2">
                                <i class="glyphicon glyphicon-lock text-gold"></i>
                                <b>SECTION II: POSTE</b>
                            </a>
                        </h4>
                    </div>
                    <div id="collapse2" class="collapse show">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-lg-12">
                                    <table class="table table-primary">
                                        <thead>
                                        <tr>
                                            <th></th>
                                            <th>LEADER</th>
                                            <th>STANDARD</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td>Poste</td>
                                            <td>
                                                <label class="control-label">
                                                    <input class="bouton-radio" name="fonction" type="radio" required="required" id="leader" value="leader">

                                                </label>
                                            </td>
                                            <td>
                                                <label class="control-label">
                                                    <input class="bouton-radio" name="fonction" type="radio" required="required" id="standard" value="standard">
                                                </label>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                    <table class="table table-primary">
                                        <thead>
                                        <tr>
                                            <th></th>
                                            <th>IA</th>
                                            <th>DEFENSE</th>
                                            <th>IOT</th>
                                            <th>RH</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td>Service</td>
                                            <td>
                                                <label class="control-label">
                                                    <input class="bouton-radio" name="service" type="radio" required="required" id="ia" value="ia">
                                                </label>
                                            </td>
                                            <td>
                                                <label class="control-label">
                                                    <input class="bouton-radio" name="service" type="radio" required="required" id="defense" value="defense">
                                                </label>
                                            </td>
                                            <td>
                                                <label class="control-label">
                                                    <input class="bouton-radio" name="service" type="radio" required="required" id="iot" value="iot">
                                                </label>
                                            </td>
                                            <td>
                                                <label class="control-label">
                                                    <input class="bouton-radio" name="service" type="radio" required="required" id="RH" value="RH">
                                                </label>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                    <table class="table table-primary">
                                        <thead>
                                        <tr>
                                            <th></th>
                                            <th>JAWA</th>
                                            <th>ECHO</th>
                                            <th>HOLA</th>
                                            <th>DREAM</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td>Nom équipe</td>
                                            <td>
                                                <label class="control-label">
                                                    <input class="bouton-radio" name="equipe" type="radio" required="required" id="JAWA" value="JAWA">
                                                </label>
                                            </td>
                                            <td>
                                                <label class="control-label">
                                                    <input class="bouton-radio" name="equipe" type="radio" required="required" id="ECHO" value="ECHO">
                                                </label>
                                            </td>
                                            <td>
                                                <label class="control-label">
                                                    <input class="bouton-radio" name="equipe" type="radio" required="required" id="HOLA" value="HOLA">
                                                </label>
                                            </td>
                                            <td>
                                                <label class="control-label">
                                                    <input class="bouton-radio" name="equipe" type="radio" required="required" id="DREAM" value="DREAM">
                                                </label>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    <br/>
                </div>

                <div class="row">
                    <div class="col-lg-12">
                        <div class="pull-right">
                            <input type="submit" class="btn btn-success btn-lg" id="btSubmit" value="Save"/>
                            <a class="btn btn-warning btn-lg" href="#" id="btnToTop"><i class="fa fa-arrow-up"></i> Top</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</form>
<jsp:include page="/vues/includes/Footer.jsp"/>