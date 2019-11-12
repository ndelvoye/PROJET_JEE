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
    <title>Connexion</title>
    <link type="text/css" rel="stylesheet" href="form.css" />
</head>
<body>
<form method="post" action="ConnexionServlet">
    <fieldset>
        <legend>Connexion</legend>
        <p>Vous pouvez vous connecter via ce formulaire.</p>

        <label for="email">Adresse email <span class="requis">*</span></label>
        <input type="email" id="email" name="email" value="<%--@elvariable id="utilisateur" type="fr.gestconge.Employe"--%>
        <c:out value="${utilisateur.email}"/>" size="20" maxlength="60" />
        <span class="erreur">${form.erreurs['email']}</span>
        <br />

        <label for="motdepasse">Mot de passe <span class="requis">*</span></label>
        <input type="password" id="motdepasse" name="motdepasse" value="" size="20" maxlength="20" />
        <span class="erreur">${form.erreurs['motdepasse']}</span>
        <br />

        <input type="submit" value="Connexion" class="sansLabel" />
        <br />

        <p class="${empty form.erreurs ? 'succes' : 'erreur'}">${form.resultat}</p>
    </fieldset>
</form>
</body>
</html>