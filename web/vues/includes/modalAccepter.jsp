<%@ page contentType="text/html; charset=UTF-8" %>
<a class="nav-link" data-toggle="modal" href="#accepter">
    <img src="${pageContext.request.contextPath}/assets/img/valider.png" alt="Accepter" style="height: 25px" ; width="25px"/>
</a>
<div class="modal" id="accepter">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span>&times;</span></button>
            </div>
            <div class="modal-body">
                <form role="form" action="AccepterDemande" method="post">
                    <label>
                        <textarea id ="commentaire" name="commentaire" rows="5" cols="30" placeholder="commentaires"></textarea>
                    </label>
                    <input type="hidden" id ="idDemande" name="idDemande" value="<%= request.getParameter("idDemande") %>">
                    <p>
                        <button type="submit">Valider</button>
                    </p>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" data-dismiss="modal">Fermer</button>
            </div>
        </div>
    </div>
</div>





