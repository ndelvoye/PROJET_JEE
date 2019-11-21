<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Marie-Danielle
  Date: 15/11/2019
  Time: 15:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="fr.gestconge.classes.beans.Demande,java.util.List" %>
<% List<Demande> listeDemandes = (List<Demande>) request.getAttribute("listeDemandes");%>
<html>
<head>
</head>
<body>
<div class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header card-header-primary "
                         style="background-image: linear-gradient(60deg, rgb(0, 188, 212), rgb(142, 36, 170));">
                        <h4 class="card-title ">Demandes Conges</h4>
                        <p class="card-category"> Recapitulatif</p>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table">
                                <thead class=" text-primary">
                                <th>date Creation</th>
                                <th>Nom</th>
                                <th>Prenom</th>
                                <th>Type demande</th>
                                <th>Date debut</th>
                                <th>Date fin</th>
                                <th>Statut</th>
                                <th>Action</th>
                                </thead>
                                <tbody>
                                <%
                                    for (Demande demande : listeDemandes) {
                                        demande.setStatus(1);
                                        int statut = demande.getStatus();
                                        String nomD = demande.getNomDemandeur();
                                        String prenomD = demande.getPrenomDemandeur();
                                        String dtCreation = demande.getDtCreation();
                                        String dtDebut = demande.getDtDebut();
                                        String dtFin = demande.getDtFin();
                                        String type = demande.getType();

                                %>
                                <tr>
                                    <td><%=dtCreation %>
                                    </td>
                                    <td><%=nomD %>
                                    </td>
                                    <td><%=prenomD %>
                                    </td>
                                    <td><%=type%>
                                    </td>
                                    <td><%=dtDebut %>
                                    </td>
                                    <td><%=dtFin %>
                                    </td>

                                    <td>
                                        <img src="${pageContext.request.contextPath}/assets/img/attente.png"
                                             alt="En cours" id=statut style="height: 25px" ; width="25px"/>
                                        <script>
                                            if ((<%=statut %>) === 0) {
                                                document.getElementById('statut').src = '${pageContext.request.contextPath}/assets/img/attente.png';
                                            } else if ((<%=statut %>) === 1) {
                                                document.getElementById('statut').src = '${pageContext.request.contextPath}/assets/img/valider.png';
                                            } else if ((<%=statut %>) === -1) {
                                                document.getElementById('statut').src = '${pageContext.request.contextPath}/assets/img/refuser.png';
                                            }
                                        </script>

                                    </td>
                                    <td class="action">
                                        <a href="<c:url value="/SuppressionServlet"><c:param name="dtCreation" value="${ mapDemandes.key }" /></c:url>">
                                            <img src="${pageContext.request.contextPath}/assets/img/valider.png"
                                                 alt="Supprimer" style="height: 25px" ; width="25px"/>
                                        </a>
                                        <a href="<c:url value="/ModificationServlet"><c:param name="dtCreation" value="${ mapDemandes.key }" /></c:url>">
                                            <img src="${pageContext.request.contextPath}/assets/img/refuser.png"
                                                 alt="Modifier" style="height: 25px" ; width="25px"/>
                                        </a>
                                    </td>


                                </tr>
                                <%
                                    }
                                %>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
