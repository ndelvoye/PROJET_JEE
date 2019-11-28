<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.google.gson.Gson" %>
<%@ page import="com.google.gson.GsonBuilder" %>
<%@ page import="com.google.gson.JsonArray" %>
<%@ page import="com.google.gson.reflect.TypeToken" %>
<%@ page import="fr.gestconge.bean.Demande" %>
<%@ page import="fr.gestconge.bean.Employe" %>
<%@ page import="java.lang.reflect.Type" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<jsp:include page="../includes/Header.jsp">
    <jsp:param name="nomPage" value="Statistiques"/>
    <jsp:param name="texteModal"
               value="Ici, visualisez les statistiques concernant les congés des employés de votre structure."/>
</jsp:include>
<%
    List<Employe> listeEmployes = (List<Employe>) request.getAttribute("listeEmployes");
    Gson gson = new GsonBuilder().create();
    Type typeOfSrc = new TypeToken<List<Employe>>() {
    }.getType();
    JsonArray jsonListeEmployes = gson.toJsonTree(listeEmployes, typeOfSrc).getAsJsonArray();

    List<Demande> listeDemande = (List<Demande>) request.getAttribute("listeDemande");
    typeOfSrc = new TypeToken<List<Demande>>() {
    }.getType();
    JsonArray jsonListeDemande = gson.toJsonTree(listeDemande, typeOfSrc).getAsJsonArray();

%>

<div class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header card-header-primary "
                         style="background-image: linear-gradient(60deg, rgb(0, 188, 212), rgb(142, 36, 170));">
                        <h4 class="card-title">Statistiques</h4>
                    </div>
                    <div class="card-body">
                        <div style="padding-top: 30px;">
                            <div class="card-header-secondary "
                                 style="background-image: linear-gradient(60deg, rgb(235, 179, 27), rgb(211, 52, 33));">
                                <h5 class="card-title ">Cumul des jours de congés, total à prendre / total pris</h5>
                            </div>
                            <div class="ct-chartBar col-md-12" style="height: 200px;"></div>
                        </div>
                        <div style="padding-top: 30px;">
                            <div class="card-header-secondary "
                                 style="background-image: linear-gradient(60deg, rgb(235, 179, 27), rgb(211, 52, 33));">
                                <h5 class="card-title">
                                    Représentation du nombre de type de congé pris
                                </h5>
                            </div>
                            <div class="ct-chartCer col-md-12" style="height: 300px;" id="congesPris"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    /* Récupère tous les utilisateurs
     * Parcours l'entièreté de la base de données des employés
     */
    var jsonListeEmployes = [];
    var listeNom = [];
    var listeJourMax = [];
    jsonListeEmployes = <%= jsonListeEmployes %>;
    jsonListeEmployes.forEach(element => {
        listeNom.push([element['email'], element['nom']]);
    if (element['fonction'] == 'RH') {
        listeJourMax.push(30)
    }
    if (element['fonction'] == 'DRH') {
        listeJourMax.push(40)
    }
    if (element['fonction'] == 'leader') {
        listeJourMax.push(25)
    }
    if (element['fonction'] == 'employe') {
        listeJourMax.push(20)
    }
    })
    ;

    /* Calcul du nombre de jours
     * On récupère l'adresse mail et les informations nécessaire au calcul du nombre de jour
     * On calcule le nombre de jours pour chaque demande
     */
    var jsonListeDemande = [];
    var listeDemande = [];
    var deb, fin, dif;
    var minutes, hours, days;
    jsonListeDemande = <%=jsonListeDemande%>;
    jsonListeDemande.forEach(element => {
        deb = new Date(element['dateDebut'].replace(/-/g, "/"));
    fin = new Date(element['dateFin'].replace(/-/g, "/"));
    dif = Math.abs(fin - deb);
    minutes = Math.floor(dif / 60000);
    hours = Math.round(minutes / 60);
    days = Math.round(hours / 24);
    element["days"] = days;
    if (element['etat'] == 1) {
        listeDemande.push([element['emailEmploye'], element["days"]])
    }
    })
    ;

    /* Cumul des heures
     * On regarde pour tableau de listeNom si il y a des tableau contenant le mail de listeNom correspondant
     */
    var i, j
    for (i = 0; i < listeNom.length; i++) {
        for (j = 0; j < listeDemande.length; j++) {
            if (listeNom[i][0] === listeDemande[j][0]) {
                if (listeNom[i][2] === undefined) {
                    listeNom[i][2] = listeDemande[j][1];
                } else {
                    listeNom[i][2] = listeNom[i][2] + listeDemande[j][1];
                }
            }
        }
    }

    /* Création des tableaux pour chartist
     */
    var lab = [];
    var ser = [];
    for (i = 0; i < listeNom.length; i++) {
        lab.push(listeNom[i][1])
        ser.push(listeNom[i][2])
    }

    /* Données pour le diagramme de nombre de jour de congé
     */
    var dataBar = {
        labels: lab,
        series: [
            listeJourMax,
            ser]
    };

    var optionsBar = {
        high: 50,
        low: 0,
    };

    new Chartist.Bar('.ct-chartBar', dataBar, optionsBar);

    /* Récupération de tous les états existants dans la base de données
     */
    var listeType = [];
    var index;
    jsonListeDemande.forEach(element => {
        index = listeType.indexOf(element['type']);
    if (index === -1) {
        if (element['etat'] == 1) {
            listeType.push(element['type']);
        }
    }
    })
    ;

    /* Remplissage de la liste contenant le nombre de jour pris par type de congé
     */
    var listeNombreJourParType = [];
    for (i = 0; i < listeType.length; i++) {
        listeNombreJourParType[i] = 0;
        for (j = 0; j < jsonListeDemande.length; j++) {
            if (listeType[i] == jsonListeDemande[j]["type"]) {
                deb = new Date(jsonListeDemande[j]['dateDebut'].replace(/-/g, "/"));
                fin = new Date(jsonListeDemande[j]['dateFin'].replace(/-/g, "/"));
                dif = Math.abs(fin - deb);
                minutes = Math.floor(dif / 60000);
                hours = Math.round(minutes / 60);
                days = Math.round(hours / 24);
                listeNombreJourParType[i] = listeNombreJourParType[i] + days;
            }
        }
    }

    console.log(listeNombreJourParType.length);
    if (listeNombreJourParType.length != 0) {
        /* Données pour le diagramme proportionel de raisons de congé
        */
        var dataCer = {
            labels: listeType,
            series: listeNombreJourParType
        };

        var optionsCer = {
            labelInterpolationFnc: function (value) {
                return value[0]
            }
        };

        var responsiveOptionsCer = [
            ['screen and (min-width: 640px)', {
                chartPadding: 70,
                labelOffset: 50,
                labelDirection: 'explode',
                labelInterpolationFnc: function (value) {
                    return value;
                }
            }],
            ['screen and (min-width: 1024px)', {
                labelOffset: 100,
                chartPadding: 100
            }]
        ];
        new Chartist.Pie('.ct-chartCer', dataCer, optionsCer, responsiveOptionsCer);

    } else {
        document.getElementById('congesPris').innerHTML = "Il n'y a aucun congés.";
    }
</script>
<jsp:include page="../includes/Footer.jsp"/>