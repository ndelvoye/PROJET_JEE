<%--@elvariable id="form" type="fr.gestconge.InscriptionFormulaire"--%>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Inscription</title>
    <link type="text/css" rel="stylesheet" href="signup.css" />
</head>
<body>
<form method="post" action="InscriptionServlet">
    <div class="container">

        <legend>Inscription</legend>
        <p>Vous pouvez vous inscrire via ce formulaire.</p>
        <div class="row ">
            <!-----For email---->
            <div class="col-sm-12">
                <div class="row">
                    <div class="col-xs-4">
                        <label for="email">Adresse email <span class="requis">*</span></label>
                    </div>
                    <div class="col-xs-8"	>
                        <input type="email" id="email" name="email" placeholder="Entrer votre email" class="form-control " value="<%--@elvariable id="utilisateur" type="fr.gestconge.Employe"--%>
                        <c:out value="${utilisateur.email}"/>" size="20" maxlength="60" />
                        <span class="erreur">${form.erreurs['email']}</span>
                        <br />
                    </div>
                </div>
            </div>

            <!-----For Password and confirm password---->
            <div class="col-sm-12">
                <div class="row">
                    <div class="col-xs-4">
                        <label for="motdepasse">Mot de passe <span class="requis">*</span></label>
                    </div>
                    <div class="col-xs-8">
                        <input type="password" id="motdepasse" name="motdepasse" placeholder="Entrer votre mot de passe" class="form-control " value="" size="20" maxlength="20" />
                        <span class="erreur">${form.erreurs['motdepasse']}</span>
                        <br />
                    </div>
                </div>
            </div>

            <div class="col-sm-12">
                <div class="row">
                    <div class="col-xs-4">
                        <label for="confirmation">Confirmation du mot de passe <span class="requis">*</span></label>
                    </div>
                    <div class="col-xs-8">
                        <input type="password" id="confirmation" name="confirmation" placeholder="Confirmer" class="form-control " value="" size="20" maxlength="20" />
                        <span class="erreur">${form.erreurs['confirmation']}</span>
                        <br />
                    </div>
                </div>
            </div>

            <div class="col-sm-12">
                <div class="row">
                    <div class="col-xs-4">
                        <label for="nom">Nom d'utilisateur</label>
                    </div>
                    <div class ="col-xs-8">
                        <input type="text" id="nom" name="nom" placeholder="Entrer votre nom" class="form-control " value="<c:out value="${utilisateur.nom}"/>" size="20" maxlength="20" />
                        <span class="erreur">${form.erreurs['nom']}</span>
                        <br />
                    </div>
                </div>
            </div>

            <div class="col-sm-12">
                <div class="row">
                    <div class="col-xs-4">
                        <label for="prenom">Prenom d'utilisateur</label>
                    </div>
                    <div class ="col-xs-8">
                        <input type="text" id="prenom" name="prenom" placeholder="Entrer votre prenom" class="form-control " value="<c:out value="${utilisateur.prenom}"/>" size="20" maxlength="20" />
                        <span class="erreur">${form.erreurs['prenom']}</span>
                        <br />
                    </div>
                </div>
            </div>

            <input type="submit" value="Inscription" class="sansLabel" />
            <br />
        </div>
        <p class="${empty form.erreurs ? 'succes' : 'erreur'}">${form.resultat}</p>

    </div>
</form>
</body>
</html>