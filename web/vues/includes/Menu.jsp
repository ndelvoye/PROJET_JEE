<%@ page import="fr.gestconge.bean.Employe" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<% Employe utilisateur = (Employe) session.getAttribute("utilisateur"); %>
<div class="sidebar-wrapper">
    <ul class="nav">
        <li class="nav-item">
            <a class="nav-link" href="Agenda">
                <i class="material-icons">dashboard</i>
                <p>Mon agenda</p>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="MonProfil">
                <i class="material-icons">face</i>
                <p>Mon profil</p>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="CreerDemande">
                <i class="material-icons">description</i>
                <p>Créer une demande</p>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="MesDemandes">
                <i class="material-icons">list</i>
                <p>Mes demandes</p>
            </a>
        </li>
        <% boolean isRH = "RH".equals(utilisateur.getFonction()); %>
        <c:set var="isRH" scope="page" value="<%= isRH %>"/>
        <c:if test="${isRH}">
            <li class="nav-item">
                <a class="nav-link" href="CreerFiche">
                    <i class="material-icons">control_point</i>
                    <p>Créer fiche</p>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="TraiterDemandes">
                    <i class="material-icons">content_paste</i>
                    <p>Traiter demandes</p>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="Statistiques">
                    <i class="material-icons">timeline</i>
                    <p>Statistiques</p>
                </a>
            </li>
        </c:if>
        <% boolean isLeader = "leader".equals(utilisateur.getFonction()); %>
        <c:set var="isLeader" scope="page" value="<%= isLeader %>"/>
        <c:if test="${isRH || isLeader}">
            <li class="nav-item">
                <a class="nav-link" href="ListeConges">
                    <i class="material-icons">next_week</i>
                    <p>Liste des congés</p>
                </a>
            </li>
        </c:if>
        <li class="nav-item">
            <a class="nav-link" href="Deconnexion">
                <i class="material-icons">power_settings_new</i>
                <p>Se déconnecter</p>
            </a>
        </li>
    </ul>
</div>