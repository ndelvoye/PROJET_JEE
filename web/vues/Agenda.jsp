<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<jsp:include page="includes/Header.jsp">
    <jsp:param name="nomPage" value="Agenda"/>
    <jsp:param name="texteModal"
               value="Sur cette page, vous pouvez décider de masquer vos congés, vos réunions selon vos souhaits..."/>
</jsp:include>
<div id='wrap'>
    <div id="calendar"></div>
</div>
<jsp:include page="includes/Footer.jsp"/>