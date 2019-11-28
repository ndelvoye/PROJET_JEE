<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="fr.gestconge.bean.Demande" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:include page="../includes/Header.jsp">
    <jsp:param name="nomPage" value="Liste demandes non traitées"/>
    <jsp:param name="texteModal" value="Commentaire"/>
</jsp:include>
<%
    List<Demande> listeDemandes = (List<Demande>) request.getAttribute("listeDemandes");
%>
<c:set scope="request" value="${listeDemandes}" var="listeDemandes"/>
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header card-header-primary "
                         style="background-image: linear-gradient(60deg, rgb(0, 188, 212), rgb(142, 36, 170));">
                        <h4 class="card-title ">Demandes employés</h4>
                        <p class="card-category"> Recapitulatif</p>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                        <c:choose>
                            <%-- Si aucune demande n'existe en session, affichage d'un message par défaut. --%>
                            <c:when test="${ empty listeDemandes }">
                            <p class="erreur">Aucune demande à traiter.</p>
                            </c:when>
                            <%-- Sinon, affichage du tableau. --%>
                        <c:otherwise>
                            <table class="table">
                                <thead class=" text-primary">
                                <th>date Creation</th>
                                <th>Email de l'employé</th>
                                <th>Type demande</th>
                                <th>Date debut</th>
                                <th>Date fin</th>
                                <th>Action</th>
                                <th></th>
                                </thead>
                                <tbody>
                                <%
                                    for (Demande demande : listeDemandes) {
                                        String emailEmploye = demande.getEmailEmploye();
                                        String dtCreation = String.valueOf(demande.getDateCreation());
                                        String dtDebut = String.valueOf(demande.getDateDebut());
                                        String dtFin = String.valueOf(demande.getDateFin());
                                        String type = demande.getType();

                                %>
                                <tr>
                                    <td><%=dtCreation %>
                                    </td>
                                    <td><%=emailEmploye %>
                                    </td>
                                    <td><%=type%>
                                    </td>
                                    <td><%=dtDebut %>
                                    </td>
                                    <td><%=dtFin %>
                                    </td>
                                    <td class="action">
                                        <jsp:include page="../includes/modalAccepter.jsp"/>
                                    </td>
                                    <td class="action">
                                        <jsp:include page="../includes/modalRefuser.jsp"/>
                                    </td>
                                </tr>
                                <%
                                    }
                                %>
                                </tbody>
                            </table>
                        </c:otherwise>
                        </c:choose>
                        </div>
                    </div>
                </div>
            </div>
        </div>
<jsp:include page="../includes/Footer.jsp"/>

