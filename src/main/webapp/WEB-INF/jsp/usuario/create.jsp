<%-- 
    Document   : create
    Created on : Oct 8, 2019, 7:55:56 AM
    Author     : w.c
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/bootstrap/css/bootstrap.min.css" />
        <title>Projecto Padrao</title>
    </head>
    <body>
        <h1>Hello World!</h1>

        <div class="tab-pane" id="mbox_new">
            <form name="reg_users" id="new_message_form" class="form-horizontal" action="<c:url value='/usuario/add'/>">
                <div class="col-md-3">
                </div>

                <div class="col-md-6"> 

                    <div class="col-md-12">
                        <label for="v_street">Nome Completo</label>
                        <input type="text" name="entity.nome" id="v_username" class="input-sm form-control">
                    </div>
                    <div class="col-md-12">
                        <label for="v_street">Perfil</label>
                    </div>
                    <div class="col-md-12">
                        <select class="required" name="entity.perfil">
                            <option value="slecione">Selecione perfil</option>
                            <option value="Administrador">Aministrador</option>
                            <option value="Gestor">Gestor</option>
                            <option value="Caixa">Caixa</option>
                        </select>
                    </div>
                    <div class="col-md-12">
                        <label>Telefone</label>
                        <input type="number" name="entity.telefone1" id="v_username" class="input-sm form-control">
                    </div>
                    <div class="col-md-12">
                        <label for="v_street">Senha</label>
                        <input class="input-sm form-control" name="entity.senha" id="v_city" type="text">
                    </div>

                    <div class="col-md-12">
                        <label for="v_street">Género</label>

                        &nbsp;&nbsp;
                        <label class="radio-inline">
                            <input value="Masculino" name="entity.genero" type="radio" checked>
                            Masculino
                        </label>
                        <label class="radio-inline">
                            <input value="Feminino" name="entity.genero" type="radio">
                            Feminino
                        </label>                                
                    </div> 

                    <div class="col-md-12">
                        <br>
                        <br>
                        <div class="col-md-12">
                            <button type="submit" class="btn btn-primary">Gravar Colaborador</button>
                        </div>
                    </div>

                </div>

            </form>
        </div>

        <div class="col-md-12">
            <div class="col-md-3">
            </div>

            <div class="col-md-6"> 
                <br>
                <br>
                <table id="dt_inbox" class="table table_vam mbox_table dTableR" data-msg_rowlink="a">
                    <thead>
                        <tr>
                            <th width="22%">Nome</th>
                            <th width="10%">Telefone</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${list}" var="entity">
                            <tr class="read">
                                <td width="22%">${entity.nome}</td>
                                <td width="10%">${entity.telefone1}</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>

            </div>
        </div>

    </body>
</html>
