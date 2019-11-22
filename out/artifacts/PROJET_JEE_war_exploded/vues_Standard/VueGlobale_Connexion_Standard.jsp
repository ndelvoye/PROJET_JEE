<%--@elvariable id="form" type="fr.gestconge.formulaire.ConnexionFormulaire"--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<html>
<head>
    <meta charset="utf-8"/>
    <title>mes Conges</title>
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
<form method="post" action="ConnexionServlet">
    <div class="container">
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <div class="d-flex justify-content-center h-100">

            <div class="card">
                <div class="card-header">

                    <h3>Authentification</h3>
                </div>
                <div class="card-body">
                    <br>
                    <br>
                    <div class="input-group form-group">

                        <div class="input-group-prepend">
                            <span class="input-group-text"><i class="fas fa-user"></i></span>
                        </div>

                        <input type="email" id="email" name="email" class="form-control" placeholder="email"
                               value="<c:out value="${utilisateur.email}"/>" size="20" maxlength="60"/>
                        <span class="erreur">${form.erreurs['email']}</span>
                        <br>
                    </div>
                    <div class="input-group form-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"><i class="fas fa-key"></i></span>
                        </div>
                        <input type="password" id="motdepasse" name="motdepasse" class="form-control"
                               placeholder="mot de passe" value="<c:out value="${utilisateur.password}"/>" size="20"
                               maxlength="20"/>
                        <span class="erreur">${form.erreurs['motdepasse']}</span>

                    </div>

                </div>
                <div class="card-footer">

                    <div class="d-flex justify-content-center links">
                        <div class="form-group">
                            <input type="submit" value="Entrer" class="btn float-right login_btn">
                            <p class="${empty form.erreurs ? 'succes' : 'erreur'}">${form.resultat}</p>
                        </div>

                    </div>

                </div>
            </div>
        </div>
    </div>
</form>
</body>
</html>