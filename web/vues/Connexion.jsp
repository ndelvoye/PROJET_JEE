<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<html>
<head>
    <meta charset="utf-8"/>
    <title>Connexion</title>
    <!--Made with love by Mutiullah Samim -->
    <!--Bootsrap 4 CDN-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
          integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <!--Fontawesome CDN-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
          integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <!--Custom styles-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/signin.css">
</head>
<body>
<form method="post" action="Connexion">
    <div class="container">
        <br><br><br><br><br><br><br>
        <div class="d-flex justify-content-center h-100">
            <div class="card" style="height: 350px;">
                <div class="card-header">
                    <h3>Authentification</h3>
                </div>
                <div class="card-body">
                    <div class="input-group form-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"><i class="fas fa-user"></i></span>
                        </div>
                        <label for="email"></label><input type="email" id="email" name="email" class="form-control"
                                                          placeholder="email"
                                                          value="<%--@elvariable id="utilisateur" type="fr.gestconge.classes.bean.Employe"--%>
                        <c:out value="${utilisateur.email}"/>" size="20" maxlength="60" required/>
                    </div>
                    <div class="input-group form-group">
                        <div class="input-group-prepend"><span class="input-group-text"><i
                                class="fas fa-key"></i></span></div>
                        <label for="motdepasse"></label><input type="password" id="motdepasse" name="motdepasse"
                                                               class="form-control"
                                                               placeholder="mot de passe"
                                                               value="<c:out value="${utilisateur.password}"/>"
                                                               size="20"
                                                               maxlength="20" required/>
                    </div>
                    <span class="erreur"
                          style="text-align: center; color: white; font-weight: bold;">${form.erreurs['email']}</span>
                </div>
                <div class="card-footer">
                    <div class="d-flex justify-content-center links">
                        <div class="form-group" style="text-align: center;">
                            <input type="submit" value="Entrer" class="btn login_btn"/>
                            <p class="${empty form.erreurs ? 'succes' : 'erreur'}"
                               style="color: red; margin-top: 5px;">${form.resultat}</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</form>
</body>
</html>