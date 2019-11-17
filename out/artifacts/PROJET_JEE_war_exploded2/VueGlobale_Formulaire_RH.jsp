<%@ page import="fr.gestconge.classes.beans.Employe" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--
Material Dashboard - v2.1.1
Copyright 2019 Creative Tim (https://www.creative-tim.com)
Licensed under MIT (https://github.com/creativetimofficial/material-dashboard/blob/master/LICENSE.md)
Coded by Creative Tim
-->
<%
    Employe employe = (Employe)session.getAttribute("sessionUtilisateur");
%>
<!doctype html>
<html lang="en">

<head>
    <title>Formulaire demande • <%= employe.getNom() + " " + employe.getPrenom() %>
    </title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <!--     Fonts and icons     -->
    <link rel="stylesheet" type="text/css"
          href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
    <!-- Material Kit CSS -->
    <link href="assets/css/material-dashboard.css?v=2.1.1" rel="stylesheet"/>
</head>

<body>
<div class="wrapper ">
    <div class="sidebar" data-color="azure" data-background-color="white">
        <!--
        Tip 1: You can change the color of the sidebar using: data-color="purple | azure | green | orange | danger"
        Tip 2: you can also add an image using data-image tag
    -->
        <div class="logo">
            <a href="#" class="simple-text logo-mini">
                <%= employe.getNom() + " " + employe.getPrenom() %>
            </a>
        </div>
        <div class="sidebar-wrapper">
            <ul class="nav">
                <li class="nav-item">
                    <a class="nav-link" href="#">
                        <i class="material-icons">dashboard</i>
                        <p>Mon agenda</p>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#0">
                        <i class="material-icons">face</i>
                        <p>Mon profil</p>
                    </a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="DemandeServlet">
                        <i class="material-icons">description</i>
                        <p>Formulaire</p>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="HistoriqueDemandeServlet">
                        <i class="material-icons">list</i>
                        <p>Mes demandes</p>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="./examples/notifications.html">
                        <i class="material-icons">notifications</i>
                        <p>Notifications</p>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="./examples/dashboard.html">
                        <i class="material-icons">timeline</i>
                        <p>Statistiques</p>
                    </a>
                </li>
                <li class="nav-item ">
                    <a class="nav-link" href="RhoomServlet">
                        <i class="material-icons">content_paste</i>
                        <p>Rhoom</p>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="ConnexionServlet">
                        <i class="material-icons">power_settings_new</i>
                        <p>Se déconnecter</p>
                    </a>
                </li>
            </ul>
        </div>
    </div>
    <div class="main-panel">
        <!-- Navbar -->
        <nav class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top ">
            <div class="container-fluid">
                <div class="navbar-wrapper">
                    <a class="navbar-brand" href="#pablo">Formulaire demande</a>
                </div>
                <button class="navbar-toggler" type="button" data-toggle="collapse" aria-controls="navigation-index"
                        aria-expanded="false" aria-label="Toggle navigation">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="navbar-toggler-icon icon-bar"></span>
                    <span class="navbar-toggler-icon icon-bar"></span>
                    <span class="navbar-toggler-icon icon-bar"></span>
                </button>
            </div>
        </nav>
        <!-- End Navbar -->
        <div class="content">
            <div class="container-fluid">
                <jsp:include page="Formulaire_Standard.jsp"/>


            </div>
        </div>
        <footer class="footer">
            <div class="container-fluid">
                <nav class="float-left">
                    <ul></ul>
                </nav>
                <div class="copyright float-right">
                    ENSSAT - IMR2 - DANIEL / DELVOYE / MORIN / TRAN
                </div>
            </div>
        </footer>
    </div>
</div>
</body>
</html>

