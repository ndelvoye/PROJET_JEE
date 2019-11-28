<%@ page contentType="text/html; charset=UTF-8" %>
<a class="nav-link" data-toggle="modal" href="#infos"><i class="material-icons">help_outline</i></a>
<div class="modal" id="infos">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span>&times;</span></button>
            </div>
            <div class="modal-body">
                <%= request.getParameter("texte") %>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" data-dismiss="modal">Fermer</button>
            </div>
        </div>
    </div>
</div>