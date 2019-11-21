<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--@elvariable id="form" type="fr.gestconge.formulaire.InscriptionFormulaire"--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker.css" rel="stylesheet"
      type="text/css"/>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.js"></script>

<body>
<form method="post" action="InscriptionServlet">
    <div class="container">
        <div id="accordion">
            <div class="row">
                <div class="col-lg-12">
                    <div class="text-center">
                        <h3>Nouvel employé</h3>
                    </div>
                </div>
            </div>

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
                                           value="<c:out value="${utilisateur.nom}"/>" size="20" maxlength="20"/>
                                    <span class="erreur">${form.erreurs['nom']}</span>
                                </div>
                            </div>
                            <div class="col-md-1 col-lg-4">
                                <div class="form-group">
                                    <label class="control-label">Prenom</label>
                                    <input type="text" class="form-control" id="prenom" name="prenom"
                                           placeholder="prenom" value="<c:out value="${utilisateur.prenom}"/>" size="20"
                                           maxlength="20"/>
                                    <span class="erreur">${form.erreurs['prenom']}</span>
                                </div>

                            </div>
                            <div class="col-md-3 col-lg-4">
                                <div class="form-group">
                                    <label class="control-label">Date embauche</label>
                                    <input maxlength="200" required="required" class="form-control" type="date"
                                           name="dtEmb" value="<c:out value="${utilisateur.dtRecrutement}"/>"
                                           id="dtEmb"/>
                                </div>
                            </div>

                        </div>

                        <div class="row">
                            <div class="col-md-4 col-lg-4">
                                <div class="form-group">
                                    <label class="control-label">Adresse mail</label>
                                    <input type="email" class="form-control" id="email" name="email" placeholder="email"
                                           value="<%--@elvariable id="utilisateur" type="fr.gestconge.classes.beans.Employe"--%>
                                        <c:out value="${utilisateur.email}"/>" size="20" maxlength="20"/>
                                    <span class="erreur">${form.erreurs['email']}</span>
                                </div>
                            </div>
                            <div class="col-md-4 col-lg-4">
                                <div class="form-group">
                                    <label class="control-label">Mot de passe </label>
                                    <input type="password" class="form-control" id="motdepasse" name="motdepasse"
                                           placeholder="mot de passe" value="<c:out value="${utilisateur.motDePasse}"/>"
                                           size="20" maxlength="20"/>
                                    <span class="erreur">${form.erreurs['motdepasse']}</span>
                                </div>
                            </div>
                            <div class="col-md-4 col-lg-4">
                                <div class="form-group">
                                    <label class="control-label">Confirmation </label>
                                    <input type="password" class="form-control" id="confirmation" name="confirmation"
                                           placeholder="confirmation" value="<c:out value="${utilisateur.email}"/>"
                                           size="20" maxlength="20"/>
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
                                                    <input type="checkbox">
                                                </label>
                                            </td>
                                            <td>
                                                <label class="control-label">
                                                    <input type="checkbox">
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
                                                    <input type="checkbox">
                                                </label>
                                            </td>
                                            <td>
                                                <label class="control-label">
                                                    <input type="checkbox">
                                                </label>
                                            </td>
                                            <td>
                                                <label class="control-label">
                                                    <input type="checkbox">
                                                </label>
                                            </td>
                                            <td>
                                                <label class="control-label">
                                                    <input type="checkbox">
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
                                                    <input type="checkbox">
                                                </label>
                                            </td>
                                            <td>
                                                <label class="control-label">
                                                    <input type="checkbox">
                                                </label>
                                            </td>
                                            <td>
                                                <label class="control-label">
                                                    <input type="checkbox">
                                                </label>
                                            </td>
                                            <td>
                                                <label class="control-label">
                                                    <input type="checkbox">
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
                            <a href="#" class="btn btn-success btn-lg" id="btnSubmit"><i class="fa fa-save"></i>
                                Save</a>
                            <a class="btn btn-warning btn-lg" href="#" id="btnToTop"><i class="fa fa-arrow-up"></i> Top</a>
                        </div>
                    </div>
                </div>
            </div>

        </div>

        <style>
            .card-default {
                color: #333;
                background: linear-gradient(#fff, #ebebeb) repeat scroll 0 0 transparent;
                font-weight: 600;
                border-radius: 6px;
            }

        </style>

        <script>
            $(function () {
                $(".date").datepicker({
                    autoclose: true,
                    todayHighlight: true
                });
            });
        </script>
</form>

</body>
