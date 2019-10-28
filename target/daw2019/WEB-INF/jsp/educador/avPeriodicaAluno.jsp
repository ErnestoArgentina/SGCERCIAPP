<%-- 
    Document   : breadcrumbs
    Created on : 18-Oct-2019, 21:58:57
    Author     : bONGANI
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="UTF-8">
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <title>Avaliação | SGCERCI </title>
        <!-- Favicon-->
        <link rel="icon" href="../../favicon.ico" type="image/x-icon">

        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Roboto:400,700&subset=latin,cyrillic-ext" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" type="text/css">

        <!-- Bootstrap Core Css -->
        <link href="${pageContext.request.contextPath}/resources/view/plugins/bootstrap/css/bootstrap.css" rel="stylesheet">

        <!-- Waves Effect Css -->
        <link href="${pageContext.request.contextPath}/resources/view/plugins/node-waves/waves.css" rel="stylesheet" />

        <!-- Animation Css -->
        <link href="${pageContext.request.contextPath}/resources/view/plugins/animate-css/animate.css" rel="stylesheet" />

        <!-- Custom Css -->
        <link href="${pageContext.request.contextPath}/resources/view/css/style.css" rel="stylesheet">

        <!-- AdminBSB Themes. You can choose a theme from css/themes instead of get all themes -->
        <link href="${pageContext.request.contextPath}/resources/view/css/themes/all-themes.css" rel="stylesheet" />
    </head>

    <body class="theme-red">
        <!-- Page Loader -->
        <div class="page-loader-wrapper">
            <div class="loader">
                <div class="preloader">
                    <div class="spinner-layer pl-red">
                        <div class="circle-clipper left">
                            <div class="circle"></div>
                        </div>
                        <div class="circle-clipper right">
                            <div class="circle"></div>
                        </div>
                    </div>
                </div>
                <p>Por favor, aguarde...</p>
            </div>
        </div>
        <!-- #END# Page Loader -->
        <!-- Overlay For Sidebars -->
        <div class="overlay"></div>
        <!-- #END# Overlay For Sidebars -->
        <!-- Search Bar -->
        <div class="search-bar">
            <div class="search-icon">
                <i class="material-icons">search</i>
            </div>
            <input type="text" placeholder="START TYPING...">
            <div class="close-search">
                <i class="material-icons">close</i>
            </div>
        </div>
        <!-- #END# Search Bar -->
        <!-- Top Bar -->
        <nav class="navbar">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a href="javascript:void(0);" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse" aria-expanded="false"></a>
                    <a href="javascript:void(0);" class="bars"></a>
                    <a class="navbar-brand" href="index.html">SGCERCI - Sistema de Cadernetas</a>
                </div>
                <div class="collapse navbar-collapse" id="navbar-collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <!-- Call Search -->
                        <li><a href="javascript:void(0);" class="js-search" data-close="true"><i class="material-icons">search</i></a></li>
                        <!-- #END# Call Search -->

                        <li class="pull-right"><a href="javascript:void(0);" class="js-right-sidebar" data-close="true"><i class="material-icons">more_vert</i></a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- #Top Bar -->
        <section>
            <!-- Left Sidebar -->
            <aside id="leftsidebar" class="sidebar">
                <!-- User Info -->
                <div class="user-info">
                    <div class="image">
                        <img src="${pageContext.request.contextPath}/resources/view/images/user.png" width="48" height="48" alt="User" />
                    </div>
                    <div class="info-container">
                        <div class="name" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Educador </div>
                        <!--<div class="email">biote.ngovene@uem.ac.mz</div>-->
                        <div class="btn-group user-helper-dropdown">
                            <i class="material-icons" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">keyboard_arrow_down</i>
                            <ul class="dropdown-menu pull-right">
                                <li><a href="${pageContext.request.contextPath}/cerci/perfil"><i class="material-icons">person</i>Meu Perfil</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="${pageContext.request.contextPath}/cerci/login"><i class="material-icons">input</i>Sair</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- #User Info -->
                <!-- Menu -->
                <div class="menu">
                    <ul class="list">
                        <li class="header">MENU DE NAVEGAÇÃO</li>
                        <li class="active">
                            <a href="${pageContext.request.contextPath}/cerci/index">
                                <i class="material-icons">home</i>
                                <span>Início</span>
                            </a>
                        </li>

                        <li>
                            <a href="javascript:void(0);" class="menu-toggle">
                                <i class="material-icons">swap_calls</i>
                                <span>Modelo de Avaliações</span>
                            </a>
                            <ul class="ml-menu">


                                <li>
                                    <a href="${pageContext.request.contextPath}/educador/avaliacaoPeriodica">Avaliações Do Utente</a>
                                </li>

                                <li>
                                    <a href="${pageContext.request.contextPath}/educador/avaliacaoPorArea">Avaliações Por Área</a>
                                </li>

                            </ul>
                        </li>
                        <li>
                            <a href="javascript:void(0);" class="menu-toggle">
                                <i class="material-icons">content_copy</i>
                                <span>Meu Perfil</span>
                            </a>
                            <ul class="ml-menu">
                                <li>
                                    <a href="${pageContext.request.contextPath}/educador/perfil">Perfil</a>
                                </li>
                               
                                <li>
                                    <a href="${pageContext.request.contextPath}/educador/senha">Esqueceu a Senha?</a>
                                </li>
                                
                        </li>
                      

                    </ul>
                </div>
                <!-- #Menu -->
                <!-- Footer -->
                <div class="legal">
                    <div class="copyright">
                        &copy; 2019 <a href="javascript:void(0);">SGCERCI - Biote & Ernesto</a>.
                    </div>

                </div>
                <!-- #Footer -->
            </aside>
            <!-- #END# Left Sidebar -->
            <!-- Right Sidebar -->
            <aside id="rightsidebar" class="right-sidebar">
                <ul class="nav nav-tabs tab-nav-right" role="tablist">
                    <li role="presentation" class="active"><a href="#skins" data-toggle="tab">Cores</a></li>
                    <li role="presentation"><a href="#settings" data-toggle="tab">DEFINIÇÕES</a></li>
                </ul>
                <div class="tab-content">
                    <div role="tabpanel" class="tab-pane fade in active in active" id="skins">
                        <ul class="demo-choose-skin">
                            <li data-theme="red" class="active">
                                <div class="red"></div>
                                <span>Vermelho</span>
                            </li>
                            <li data-theme="pink">
                                <div class="pink"></div>
                                <span>Rosa</span>
                            </li>
                            <li data-theme="purple">
                                <div class="purple"></div>
                                <span>Violeta</span>
                            </li>
                            <li data-theme="deep-purple">
                                <div class="deep-purple"></div>
                                <span>Violeta Escuro</span>
                            </li>
                            <li data-theme="indigo">
                                <div class="indigo"></div>
                                <span>Indigo</span>
                            </li>
                            <li data-theme="blue">
                                <div class="blue"></div>
                                <span>Azul</span>
                            </li>
                            <li data-theme="light-blue">
                                <div class="light-blue"></div>
                                <span>Azul Claro</span>
                            </li>
                            <li data-theme="cyan">
                                <div class="cyan"></div>
                                <span>Ciano</span>
                            </li>
                            <li data-theme="teal">
                                <div class="teal"></div>
                                <span>Teal</span>
                            </li>
                            <li data-theme="green">
                                <div class="green"></div>
                                <span>Verde</span>
                            </li>
                            <li data-theme="light-green">
                                <div class="light-green"></div>
                                <span>Verde Claro</span>
                            </li>
                            <li data-theme="lime">
                                <div class="lime"></div>
                                <span>Lima</span>
                            </li>
                            <li data-theme="yellow">
                                <div class="yellow"></div>
                                <span>Amarelo</span>
                            </li>
                            <li data-theme="amber">
                                <div class="amber"></div>
                                <span>Amber</span>
                            </li>
                            <li data-theme="orange">
                                <div class="orange"></div>
                                <span>Laranja</span>
                            </li>
                            <li data-theme="deep-orange">
                                <div class="deep-orange"></div>
                                <span>Laranja Escuro</span>
                            </li>
                            <li data-theme="brown">
                                <div class="brown"></div>
                                <span>Castanho</span>
                            </li>
                            <li data-theme="grey">
                                <div class="grey"></div>
                                <span>Cinzento</span>
                            </li>
                            <li data-theme="blue-grey">
                                <div class="blue-grey"></div>
                                <span>Azul Esverdeado</span>
                            </li>
                            <li data-theme="black">
                                <div class="black"></div>
                                <span>Preto</span>
                            </li>
                        </ul>
                    </div>
                    <div role="tabpanel" class="tab-pane fade" id="settings">
                        <div class="demo-settings">
                            <p>DEFINIÇÕES GERAIS</p>
                            <ul class="setting-list">
                                <li>
                                    <span>Uso do Painel</span>
                                    <div class="switch">
                                        <label><input type="checkbox" checked><span class="lever"></span></label>
                                    </div>
                                </li>
                                <li>
                                    <span>Redirecionar Email</span>
                                    <div class="switch">
                                        <label><input type="checkbox"><span class="lever"></span></label>
                                    </div>
                                </li>
                            </ul>
                            <p>DEFINIÇÕES DO SISTEMA</p>
                            <ul class="setting-list">
                                <li>
                                    <span>Notificações</span>
                                    <div class="switch">
                                        <label><input type="checkbox" checked><span class="lever"></span></label>
                                    </div>
                                </li>
                                <li>
                                    <span>Actualizações</span>
                                    <div class="switch">
                                        <label><input type="checkbox" checked><span class="lever"></span></label>
                                    </div>
                                </li>
                            </ul>
                            <p>DEFINIÇÕES DA CONTA</p>
                            <ul class="setting-list">
                                <li>
                                    <span>Offline</span>
                                    <div class="switch">
                                        <label><input type="checkbox"><span class="lever"></span></label>
                                    </div>
                                </li>
                                <li>
                                    <span>Permissões</span>
                                    <div class="switch">
                                        <label><input type="checkbox" checked><span class="lever"></span></label>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </aside>
            <!-- #END# Right Sidebar -->
        </section>

        <form  action="<c:url value='/educador/addAvaliacaoPeriodica'/>">
            <section class="content">
                <div class="container-fluid">
                    <div class="block-header">
                        <h2>Avaliação Periódica do Utente ${aluno.nome}</h2>
                    </div>
                    <div class="row clearfix">
                        <!-- Basic Examples -->
                        <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                            <div class="card">
                                <div class="header">
                                    <h2>
                                        SOCIALIZAÇÃO
                                        <small>Características de Personalidade/Socialização</small>
                                    </h2>
                                    <ul class="header-dropdown m-r--5">
                                        <li class="dropdown">
                                            <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                                <i class="material-icons">more_vert</i>
                                            </a>
                                            <ul class="dropdown-menu pull-right">
                                                <li><a href="javascript:void(0);">Action</a></li>
                                                <li><a href="javascript:void(0);">Another action</a></li>
                                                <li><a href="javascript:void(0);">Something else here</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </div>
                                <div class="body">
                                    <ul class="list-group">
                                        <li class="list-group-item">Temperamento? 
                                             <select name="entity.temperamento">
                                                <option value="Sim">Sim</option>
                                                <option value="Nao">Nao</option>
                                            </select>
                                        </li>
                                        <li class="list-group-item">Comportamento?
                                             <select name="entity.comportamento">
                                                <option value="Sim">Sim</option>
                                                <option value="Nao">Nao</option>
                                            </select>
                                        </li>
                                        <li class="list-group-item">Relacionamento com outras Crianças?
                                             <select name="entity.relacaoOutrasCriancas">
                                                <option value="Sim">Sim</option>
                                                <option value="Nao">Nao</option>
                                            </select>

                                        </li>
                                        <li class="list-group-item">Participação no grupo
                                             <select name="entity.participacaoGrupo">
                                                <option value="Sim">Sim</option>
                                                <option value="Nao">Nao</option>
                                            </select>

                                        </li>
                                        <li class="list-group-item"></li>
                                        <li class="list-group-item"></li>

                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- #END# Basic Examples -->
                        <!-- Badges -->
                        <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                            <div class="card">
                                <div class="header">
                                    <h2>
                                        ALIMENTAÇÃO
                                        <small>Hábitos de Higiene e Alimentação.</small>
                                    </h2>
                                    <ul class="header-dropdown m-r--5">
                                        <li class="dropdown">
                                            <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                                <i class="material-icons">more_vert</i>
                                            </a>
                                            <ul class="dropdown-menu pull-right">
                                                <li><a href="javascript:void(0);">Action</a></li>
                                                <li><a href="javascript:void(0);">Another action</a></li>
                                                <li><a href="javascript:void(0);">Something else here</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </div>
                                <div class="body">
                                    <ul class="list-group">
                                        <li class="list-group-item">Come com apoio do Educador(a)?
                                            <select name="entity.comeComEducador">
                                                <option value="Sim">Sim</option>
                                                <option value="Nao">Nao</option>
                                            </select>
                                        </li>
                                        <li class="list-group-item">Posição na Mesa?
                                            <select name="entity.posicaoNaMesa">
                                                <option value="Sim">Sim</option>
                                                <option value="Nao">Nao</option>
                                            </select>
                                        </li>
                                        <li class="list-group-item">Uso de Talheres?
                                            <select name="entity.usaTalheres">
                                                <option value="Sim">Sim</option>
                                                <option value="Nao">Nao</option>
                                            </select>
                                        </li>
                                        <li class="list-group-item">Higiene Corporal?
                                            <select name="entity.higienePessoal">
                                                <option value="Sim">Sim</option>
                                                <option value="Nao">Nao</option>
                                            </select>
                                        </li>
                                        <li class="list-group-item">Organizado e Serve de exemplo?
                                            <select name="entity.higienePessoal">
                                                <option value="Sim">Sim</option>
                                                <option value="Nao">Nao</option>
                                            </select>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- #END# Badges -->
                    </div>

                    <div class="row clearfix">
                        <!-- Linked Items -->
                        <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                            <div class="card">
                                <div class="header">
                                    <h2>
                                        MENTALIDADE
                                        <small>Caracteísticas Mentais.</small>
                                    </h2>
                                    <ul class="header-dropdown m-r--5">
                                        <li class="dropdown">
                                            <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                                <i class="material-icons">more_vert</i>
                                            </a>
                                            <ul class="dropdown-menu pull-right">
                                                <li><a href="javascript:void(0);">Action</a></li>
                                                <li><a href="javascript:void(0);">Another action</a></li>
                                                <li><a href="javascript:void(0);">Something else here</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </div>
                                <div class="body">
                                    <div class="list-group">
                                        <ul class="list-group">
                                            <li class="list-group-item">Atenção?
                                                <select name="entity.atencao">
                                                    <option value="Sim">Sim</option>
                                                    <option value="Nao">Nao</option>
                                                </select>
                                                <input type="hidden" value="${aluno.id}" name="entity.idAluno"> 
                                                
                                            </li>
                                            <li class="list-group-item">Memória?
                                                <select name="entity.memoria">
                                                    <option value="Sim">Sim</option>
                                                    <option value="Nao">Nao</option>
                                                </select>
                                            </li>
                                            <li class="list-group-item">Imaginação?
                                                <select name="entity.imaginacao">
                                                    <option value="Sim">Sim</option>
                                                    <option value="Nao">Nao</option>
                                                </select>
                                            </li>
                                            <li class="list-group-item">Percepção?
                                                <select name="entity.percepcao">
                                                    <option value="Sim">Sim</option>
                                                    <option value="Nao">Nao</option>
                                                </select>
                                            </li>
                                            <li class="list-group-item"></li>
                                        </ul></div>
                                </div>
                            </div>
                        </div>
                        <!-- #END# Linked Items -->
                        <!-- Button Items -->
                        <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                            <div class="card">
                                <div class="header">
                                    <h2>
                                        PSICOMOTORIDADE
                                        <small>Psicomotoridade</small>
                                    </h2>
                                    <ul class="header-dropdown m-r--5">
                                        <li class="dropdown">
                                            <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                                <i class="material-icons">more_vert</i>
                                            </a>
                                            <ul class="dropdown-menu pull-right">
                                                <li><a href="javascript:void(0);">Action</a></li>
                                                <li><a href="javascript:void(0);">Another action</a></li>
                                                <li><a href="javascript:void(0);">Something else here</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </div>
                                <div class="body">
                                    <div class="list-group">
                                        <ul class="list-group">
                                            <li class="list-group-item">Coordenação do Movimentos?
                                                 <select name="entity.coordenacaoMovimentos">
                                                    <option value="Sim">Sim</option>
                                                    <option value="Nao">Nao</option>
                                                </select>
                                            </li>
                                            <li class="list-group-item">Destreza Manual?
                                                 <select name="entity.destrezaManual">
                                                    <option value="Sim">Sim</option>
                                                    <option value="Nao">Nao</option>
                                                </select>
                                            </li>
                                            <li class="list-group-item">Equilíbrio Global
                                                <select name="entity.equilibrioGlobal">
                                                    <option value="Sim">Sim</option>
                                                    <option value="Nao">Nao</option>
                                                </select>
                                            </li>
                                            

                                        </ul> </div>
                                </div>
                            </div>
                        </div>
                        <!-- #END# Button Items -->
                    </div>

                    <!-- #END# Contextual Classes With Linked Items -->
                </div>

                <!-- Contextual Classes With Linked Items -->
                <!-- #END# Contextual Classes With Linked Items -->
                </div>
                <button type="submit" class="btn btn-primary">Salvar avaliacao</button>
            </section>
        </form>
        <!-- Jquery Core Js -->
        <script src="${pageContext.request.contextPath}/resources/view/plugins/jquery/jquery.min.js"></script>

        <!-- Bootstrap Core Js -->
        <script src="${pageContext.request.contextPath}/resources/view/plugins/bootstrap/js/bootstrap.js"></script>

        <!-- Select Plugin Js -->
        <script src="${pageContext.request.contextPath}/resources/view/plugins/bootstrap-select/js/bootstrap-select.js"></script>

        <!-- Slimscroll Plugin Js -->
        <script src="${pageContext.request.contextPath}/resources/view/plugins/jquery-slimscroll/jquery.slimscroll.js"></script>

        <!-- Bootstrap Notify Plugin Js -->
        <script src="${pageContext.request.contextPath}/resources/view/plugins/bootstrap-notify/bootstrap-notify.js"></script>

        <!-- Waves Effect Plugin Js -->
        <script src="${pageContext.request.contextPath}/resources/view/plugins/node-waves/waves.js"></script>

        <!-- Custom Js -->
        <script src="${pageContext.request.contextPath}/resources/view/js/admin.js"></script>

        <!-- Demo Js -->
        <script src="${pageContext.request.contextPath}/resources/view/js/demo.js"></script>
    </body>

</html>
