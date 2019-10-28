<%-- 
    Document   : Index
    Created on : 26/08/2015, 14:20:19
    Author     : Rodrigo
--%>
<%@include file="../template/header.jsp" %>

<div class="container-fluid">
    <div class="row">
        <%@include file="../template/sidebar.jsp" %>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
            <h1 class="page-header">Dashboard</h1>
            <div class="row placeholders">
                <div class="col-xs-6 col-sm-3 placeholder">
                    <a href="<c:url value="/area"/>">
                        <img src="<c:url value="img/icon_field.png"/>" class="img-responsive" alt="Generic placeholder thumbnail" style="width: 200px; height: 200px;">
                        <h4>Áreas</h4>
                    </a>
                </div>
                <div class="col-xs-6 col-sm-3 placeholder">
                    <a href="<c:url value="/imoveis"/>">
                        <img src="<c:url value="img/icon_home.svg"/>" class="img-responsive" alt="Generic placeholder thumbnail" style="width: 200px; height: 200px;">
                        <h4>Imoveis</h4>
                    </a>
                </div>
                <div class="col-xs-6 col-sm-3 ">
                    <a href="<c:url value="/grade"/>">
                        <div style="width: 200px;height: 200px;" class="center-block">
                            <img src="<c:url value="img/icon_grid.svg"/>" class="img-responsive" alt="Generic placeholder thumbnail" style="width: 200px; height: 200px;">
                        </div>
                        <h4>Grades Amostrais</h4>
                    </a>
                </div>
                <div class="col-xs-6 col-sm-3 placeholder">
                    <a href="<c:url value="/zonaDeManejo"/>">
                        <img src="<c:url value="img/icon_zonamanejo2.png"/>"class="img-responsive" alt="Generic placeholder thumbnail" style="width: 200px; height: 200px;">
                        <h4>Zonas de Manejo</h4>
                    </a>
                </div>

                <div class="col-xs-6 col-sm-3 placeholder">
                    <a href="">
                        <img src="<c:url value="img/icon_classification.png"/>" class="img-responsive" alt="Generic placeholder thumbnail" style="width: 200px; height: 200px;">
                        <h4>Classificações</h4>
                    </a>
                </div>
                <div class="col-xs-6 col-sm-3">
                    <a href="">
                        <div style="width: 200px;height: 200px;" class="center-block">
                            <img style="padding-top: 15%; padding-left: 20%;" src="<c:url value="img/icon_import.png"/>" class="img-responsive" alt="Generic placeholder thumbnail">
                        </div>
                        <h4>Importar</h4>
                    </a>
                </div>
                <div class="col-xs-6 col-sm-3">
                    <a href="">
                        <div style="width: 200px;height: 200px;" class="center-block">
                            <img style="padding-top: 15%; padding-left: 20%;" src="<c:url value="img/icon_export.png"/>" class="img-responsive" alt="Generic placeholder thumbnail">
                        </div>
                        <h4>Exportar</h4>
                    </a>
                </div>
                <div class="col-xs-6 col-sm-3 placeholder">
                    <a href="">
                        <img src="<c:url value="img/icon_configuration.svg"/>" class="img-responsive" alt="Generic placeholder thumbnail" style="width: 200px; height: 200px;">
                        <h4>Configurações</h4>
                    </a>
                </div>

            </div>
        </div>
    </div>
</div>

<%@include file="../template/footer.jsp" %>
