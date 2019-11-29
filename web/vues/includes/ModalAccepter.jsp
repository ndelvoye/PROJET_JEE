<%@ page contentType="text/html; charset=UTF-8" %>
<a class="nav-link" data-toggle="modal" href="#accepter<%= request.getParameter("idDemande") %>">
    <img src="${pageContext.request.contextPath}/assets/img/valider.png" alt="Accepter" style="height: 25px" ; width="25px"/>
</a>
<div class="modal" id="accepter<%= request.getParameter("idDemande")%>">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span>&times;</span></button>
            </div>
            <form role="form" action="AccepterDemande" method="post">
            <div class="modal-body">
                    <label>
                        <textarea id ="commentaire" name="commentaire" rows="5" cols="30" placeholder="Commentaire facultatif"></textarea>
                    </label>
                    <input type="hidden" id ="idDemande" name="idDemande" value="<%= request.getParameter("idDemande") %>">
            </div>
            <div class="modal-footer">
                <button type="submit" class="btn">Valider</button>
                <button type="button" class="btn btn-primary" data-dismiss="modal">Annuler</button>
            </div>
            </form>
        </div>
    </div>
</div>





