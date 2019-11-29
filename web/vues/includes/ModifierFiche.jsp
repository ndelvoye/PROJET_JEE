<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="fr.gestconge.bean.Employe" %>
<%@ page import="fr.gestconge.dao.EmployeDAO" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%
    EmployeDAO employeDAO = new EmployeDAO();
    Employe employe = employeDAO.getByEmail(request.getParameter("email"));
%>
<c:set value="<%= employe.getAdresse() %>" var="adresse">
    <a class="nav-link" data-toggle="modal" href="#modifier">
    <img src="${pageContext.request.contextPath}/assets/img/modifier.png" alt="ModifierFiche" style="height: 25px" ;
    width="25px"/>
    </a>
    <div class="modal" id="modifier">
    <div class="modal-dialog">
    <div class="modal-content">
    <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal"><span>&times;</span></button>
    </div>
    <form role="form" action="ModifierFiche" method="post">
    <div class="modal-body">
    <label>
    <textarea id="adresse" name="adresse" rows="2" cols="30"
    placeholder="Adresse" required><%= employe.getAdresse() %></textarea>
    </label><br>
    <p>Fonction</p>
    <label>Standard
    <input class="bouton-radio" name="fonction" type="radio" required="required" id="standard"
    value="standard">
    </label>
    <label>Leader
    <input class="bouton-radio" name="fonction" type="radio" required="required" id="leader"
    value="leader">
    </label>

    <p>Equipe</p>
    <label>JAWA
    <input class="bouton-radio" name="fonction" type="radio" required="required" id="JAWA"
    value="JAWA">
    </label>
    <label>ECHO
    <input class="bouton-radio" name="fonction" type="radio" required="required" id="ECHO"
    value="ECHO"></label>
    <label>HOLA
    <input class="bouton-radio" name="fonction" type="radio" required="required" id="HOLA"
    value="HOLA"></label>
    <label>DREAM
    <input class="bouton-radio" name="fonction" type="radio" required="required" id="DREAM"
    value="DREAM"></label>

    <p>Service</p>
    <label>IA
    <input class="bouton-radio" name="service" type="radio" required="required" id="ia" value="ia"></label>
    <label>Defense
    <input class="bouton-radio" name="service" type="radio" required="required" id="defense"
    value="defense"></label>
    <label>IOT
    <input class="bouton-radio" name="service" type="radio" required="required" id="iot"
    value="iot"></label>
    <label>RH
    <input class="bouton-radio" name="service" type="radio" required="required" id="RH" value="RH"></label>

    <input type="hidden" id="email" name="email"
    value="<%= request.getParameter("email") %>">
    </div>
    <div class="modal-footer">
    <button type="submit" class="btn">Valider</button>
    <button type="button" class="btn btn-primary" data-dismiss="modal">Annuler</button>
    </div>
    </form>
    </div>
    </div>
    </div>





