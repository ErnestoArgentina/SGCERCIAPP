<%-- 
    Document   : table
    Created on : 18-Oct-2019, 23:02:41
    Author     : bONGANI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="UTF-8">
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <title>Ver Alunos | SGCERCI</title>
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

        <!-- JQuery DataTable Css -->
        <link href="${pageContext.request.contextPath}/resources/view/plugins/jquery-datatable/skin/bootstrap/css/dataTables.bootstrap.css" rel="stylesheet">

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
                        <div class="name" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Biote Ngovene</div>
                        <div class="email">biote.ngovene@uem.ac.mz</div>
                        <div class="btn-group user-helper-dropdown">
                            <i class="material-icons" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">keyboard_arrow_down</i>
                            <ul class="dropdown-menu pull-right">
                                <li><a href="${pageContext.request.contextPath}/cerci/perfil"><i class="material-icons">person</i>Meu Perfil</a></li>
                                <!--li role="separator" class="divider"></li>
                                <li><a href="javascript:void(0);"><i class="material-icons">group</i>Followers</a></li>
                                <li><a href="javascript:void(0);"><i class="material-icons">shopping_cart</i>Sales</a></li>
                                <li><a href="javascript:void(0);"><i class="material-icons">favorite</i>Likes</a></li-->
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
                                    <a href="${pageContext.request.contextPath}/encarregado/avaliacaoPorArea?id=${id}">Avaliações Do Utente</a>
                                </li>

                                <li>
                                    <a href="${pageContext.request.contextPath}/encarregado/avaliacaoPorArea?id=${id}">Avaliações Por Área</a>
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
                                    <a href="${pageContext.request.contextPath}/cerci/perfil">Perfil</a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath}/cerci/login">Autenticar</a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath}/cerci/registar">Regista-se</a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath}/cerci/senha">Esqueceu a Senha?</a>
                                </li>
                                <!--                            <li>
                                                                <a href="blank.html">Página Vazia</a>
                                                            </li>
                                                            <li>
                                                                <a href="404.html">404 - Não Encontrado</a>
                                                            </li>
                                                            <li>
                                                                <a href="500.html">500 - Erro do Servidor</a>
                                                            </li>-->
                            </ul>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/cerci/evento">
                                <i class="material-icons">update</i>
                                <span>Eventos</span>
                            </a>
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
        <section class="content">


            <div class="container-fluid">
                <div class="block-header">
                    <h2>Modelo de Avaliação Pedagógica por Área</h2>
                </div>
                <div class="row clearfix">
                    <!-- Basic Examples -->
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="card">
                            <div class="header">
                                <h2>
                                    Actividade 1
                                    <small>Formação Pessoal e Social</small>
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
                                    <li class="list-group-item">Regula as necessidades básicas (sono,fome,..=

                                        <button class="btn btn-alert"> ${avaliacao.regulaNecessidadesBasicas}</button>
                                    </li>
                                    <li class="list-group-item">Colaborar com os adultos nas tarefas quotidianas
                                        <button class="btn btn-alert"> ${avaliacao.colaboraAdultosTerefas}</button>

                                    </li>
                                    <li class="list-group-item">Recolher jogos, e arrumar as coisas no devido lugar
                                        <button class="btn btn-alert"> ${avaliacao.arrumaCoisa}</button>

                                    </li>
                                    <li class="list-group-item">Desenvolver condutas de integração emgrupo_
                                        <button class="btn btn-alert">  ${avaliacao.condutasGrupos} </button>

                                    </li>
                                    <li class="list-group-item">Adquirir hábitos de cuidado, relacionados com higiene pessoal
                                        <button class="btn btn-alert">  ${avaliacao.higiene} </button>

                                    </li>

                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- #END# Basic Examples -->
                    <!-- Badges -->
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="card">
                            <div class="header">
                                <h2>
                                    Actividade 2
                                    <small>Conhecimento do Mundo</small>
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
                                    <li class="list-group-item">Conhecer partes principais do corpo

                                        <select name="entity.conhecimentoPartesPrincipaisCorpo">
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
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="card">
                            <div class="header">
                                <h2>
                                    Actividade 3
                                    <small>Expressão e Comunicação</small>
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
                                        <li class="list-group-item">Consegue concluir as formas gemétricas
                                            <button class="btn btn-alert"> ${avaliacao.concluiFormasGenericas}</button>
                                        </li>
                                        <li class="list-group-item">Compreende o que é dito
                                            <button class="btn btn-alert"> ${avaliacao.compreendeOqueEDito}</button>
                                        </li>
                                        <li class="list-group-item">Imaginação?
                                            <button class="btn btn-alert"> ${avaliacao.imaginacao}</button>
                                        </li>
                                        <li class="list-group-item">Percepção?
                                            <button class="btn btn-alert"> ${avaliacao.percepcao}</button>
                                        </li>
                                    </ul></div>
                            </div>
                        </div>
                    </div>
                    <!-- #END# Linked Items -->
                    <!-- Button Items -->
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="card">
                            <div class="header">
                                <h2>
                                    Actividade 4
                                    <small>Matemática</small>
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
                                        <li class="list-group-item">Conhece formas geométricas
                                            <button class="btn btn-alert"> ${avaliacao.formasGeometricas}</button>
                                        </li>
                                        <li class="list-group-item">Distingue tamanhos
                                            <button class="btn btn-alert"> ${avaliacao.distinguiTamanhos}</button>
                                        </li>
                                        <li class="list-group-item">Faz cálculo usando adição e subtração
                                            <button class="btn btn-alert"> ${avaliacao.fazCalculos}</button>
                                        </li>

                                    </ul> </div>
                            </div>
                        </div>
                    </div>
                    <!-- #END# Button Items -->
                </div>
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2>
                                Actividade 5
                                <small>Português</small>
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
                                    <li class="list-group-item">Conhece o alfabeto
                                        <button class="btn btn-alert"> ${avaliacao.conheceAlfabeto}</button>
                                    </li>
                                    <li class="list-group-item">Reconhece as palavras
                                        <button class="btn btn-alert"> ${avaliacao.reconhecePalavras}</button>
                                    </li>
                                    <li class="list-group-item">Lê textos simples
                                        <button class="btn btn-alert"> ${avaliacao.leTextosSimples}</button>
                                    </li>



                                </ul> </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2>
                                Actividade 6
                                <small>Expressão Musical</small>
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
                                    <li class="list-group-item">Gostar de ouvir música
                                        <button class="btn btn-alert"> ${avaliacao.gostaDeMusica}</button>
                                    </li>
                                    <li class="list-group-item">Toca em algum instrumento
                                        <button class="btn btn-alert"> ${avaliacao.tocaIstrumentos}</button>
                                    </li>
                                    <li class="list-group-item">Interpreta canções simples
                                        <button class="btn btn-alert"> ${avaliacao.interpretaCancoesSimples}</button>
                                    </li>

                                </ul> </div>
                        </div>
                    </div>
                </div>
                <!-- #END# Button Items -->
            </div>
            <!-- #END# Button Items -->
        </div>





        <!-- #END# Contextual Classes With Linked Items -->
    </div>

    <!-- Contextual Classes With Linked Items -->
    <!-- #END# Contextual Classes With Linked Items -->
</div>

<button class="btn btn-primary">Salvar Avaliacao</button>
</section>

<!-- Jquery Core Js -->
<script src="${pageContext.request.contextPath}/resources/view/plugins/jquery/jquery.min.js"></script>

<!-- Bootstrap Core Js -->
<script src="${pageContext.request.contextPath}/resources/view/plugins/bootstrap/js/bootstrap.js"></script>

<!-- Select Plugin Js -->
<script src="${pageContext.request.contextPath}/resources/view/plugins/bootstrap-select/js/bootstrap-select.js"></script>

<!-- Slimscroll Plugin Js -->
<script src="${pageContext.request.contextPath}/resources/view/plugins/jquery-slimscroll/jquery.slimscroll.js"></script>

<!-- Waves Effect Plugin Js -->
<script src="${pageContext.request.contextPath}/resources/view/plugins/node-waves/waves.js"></script>

<!-- Jquery DataTable Plugin Js -->
<script src="${pageContext.request.contextPath}/resources/view/plugins/jquery-datatable/jquery.dataTables.js"></script>
<script src="${pageContext.request.contextPath}/resources/view/plugins/jquery-datatable/skin/bootstrap/js/dataTables.bootstrap.js"></script>
<script src="${pageContext.request.contextPath}/resources/view/plugins/jquery-datatable/extensions/export/dataTables.buttons.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/view/plugins/jquery-datatable/extensions/export/buttons.flash.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/view/plugins/jquery-datatable/extensions/export/jszip.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/view/plugins/jquery-datatable/extensions/export/pdfmake.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/view/plugins/jquery-datatable/extensions/export/vfs_fonts.js"></script>
<script src="${pageContext.request.contextPath}/resources/view/plugins/jquery-datatable/extensions/export/buttons.html5.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/view/plugins/jquery-datatable/extensions/export/buttons.print.min.js"></script>

<!-- Custom Js -->
<script src="${pageContext.request.contextPath}/resources/view/js/admin.js"></script>
<script src="${pageContext.request.contextPath}/resources/view/js/pages/tables/jquery-datatable.js"></script>

<!-- Demo Js -->
<script src="${pageContext.request.contextPath}/resources/view/js/demo.js"></script>
</body>

</html>
