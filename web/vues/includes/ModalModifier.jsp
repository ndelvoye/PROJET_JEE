<%@ page contentType="text/html; charset=UTF-8" %>
<a class="nav-link" data-toggle="modal" href="#modifier<%= request.getParameter("idDemande") %>">
    <img src="${pageContext.request.contextPath}/assets/img/modifier.png" alt="Modifier" style="height: 25px" ;
         width="25px"/>
</a>
<div class="modal" id="modifier<%= request.getParameter("idDemande") %>">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span>&times;</span></button>
            </div>
            <form role="form" action="ModifierType" method="post">
                <div class="modal-body">
                    <label>Choisir nouveau type de congé
                        <select name="type" id="type" class="form-control form-control-sm">
                            <option value="RTT">RTT</option>
                            <option value="CONGANNU">Congés annuels</option>
                            <option value="ENFMALAD">Enfant malade</option>
                            <option value="FAMILLE">Famille</option>
                        </select>
                    </label>
                    <input type="hidden" id="idDemande" name="idDemande"
                           value="<%= request.getParameter("idDemande") %>">
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn">Valider</button>
                    <button type="button" class="btn btn-primary" data-dismiss="modal">Fermer</button>
                </div>
            </form>
        </div>
    </div>
</div>





