
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>SMS Connect | Mensagens</title>

        <!-- Bootstrap framework -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/bootstrap/css/bootstrap.min.css" />
        <!-- jQuery UI theme -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/lib/jquery-ui/css/Aristo/Aristo.css" />
        <!-- tooltips-->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/lib/jBreadcrumbs/css/BreadCrumb.css" />
        <!-- tooltips-->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/lib/qtip2/jquery.qtip.min.css" />
        <!-- colorbox -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/lib/colorbox/colorbox.css" />
        <!-- code prettify -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/lib/google-code-prettify/prettify.css" />    
        <!-- sticky notifications -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/lib/sticky/sticky.css" />    
        <!-- aditional icons -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/img/splashy/splashy.css" />
        <!-- flags -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/img/flags/flags.css" />	
        <!-- datatables -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/lib/datatables/extras/TableTools/media/css/TableTools.css">

        <!-- upload -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/lib/plupload/js/jquery.plupload.queue/css/plupload-gebo.css" />
        <!-- tag handler -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/lib/tag_handler/css/jquery.taghandler.css" />

        <!-- main styles -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/style.css" />
        <!-- theme color-->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/blue.css" id="link_theme" />	

        <!-- <link href='http://fonts.googleapis.com/css?family=PT+Sans' rel='stylesheet' type='text/css'>-->

        <!-- favicon -->
        <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/assets/favicon.ico" />

        <!--[if lte IE 8]>
            <link rel="stylesheet" href="css/ie.css" />
        <![endif]-->

        <!--[if lt IE 9]>
                        <script src="js/ie/html5.js"></script>
                        <script src="js/ie/respond.min.js"></script>
                        <script src="lib/flot/excanvas.min.js"></script>
        <![endif]-->

    </head>
    <body class="full_width">
        <div class="style_switcher">
            <div class="sepH_c">
                <p>Colors:</p>
                <div class="clearfix">
                    <a href="javascript:void(0)" class="style_item jQclr blue_theme style_active" title="blue">blue</a>
                    <a href="javascript:void(0)" class="style_item jQclr dark_theme" title="dark">dark</a>
                    <a href="javascript:void(0)" class="style_item jQclr green_theme" title="green">green</a>
                    <a href="javascript:void(0)" class="style_item jQclr brown_theme" title="brown">brown</a>
                    <a href="javascript:void(0)" class="style_item jQclr eastern_blue_theme" title="eastern_blue">eastern blue</a>
                    <a href="javascript:void(0)" class="style_item jQclr tamarillo_theme" title="tamarillo">tamarillo</a>
                </div>
            </div>
            <div class="sepH_c">
                <p>Backgrounds:</p>
                <div class="clearfix">
                    <span class="style_item jQptrn style_active ptrn_def" title=""></span>
                    <span class="ssw_ptrn_a style_item jQptrn" title="ptrn_a"></span>
                    <span class="ssw_ptrn_b style_item jQptrn" title="ptrn_b"></span>
                    <span class="ssw_ptrn_c style_item jQptrn" title="ptrn_c"></span>
                    <span class="ssw_ptrn_d style_item jQptrn" title="ptrn_d"></span>
                    <span class="ssw_ptrn_e style_item jQptrn" title="ptrn_e"></span>
                </div>
            </div>
            <div class="sepH_c">
                <p>Layout:</p>
                <div class="clearfix">
                    <label class="radio-inline"><input name="ssw_layout" id="ssw_layout_fluid" value="" checked="" type="radio"> Fluid</label>
                    <label class="radio-inline"><input name="ssw_layout" id="ssw_layout_fixed" value="gebo-fixed" type="radio"> Fixed</label>
                </div>
            </div>
            <div class="sepH_c">
                <p>Sidebar position:</p>
                <div class="clearfix">
                    <label class="radio-inline"><input name="ssw_sidebar" id="ssw_sidebar_left" value="" checked="" type="radio"> Left</label>
                    <label class="radio-inline"><input name="ssw_sidebar" id="ssw_sidebar_right" value="sidebar_right" type="radio"> Right</label>
                </div>
            </div>
            <div class="sepH_c">
                <p>Show top menu on:</p>
                <div class="clearfix">
                    <label class="radio-inline"><input name="ssw_menu" id="ssw_menu_click" value="" checked="" type="radio"> Click</label>
                    <label class="radio-inline"><input name="ssw_menu" id="ssw_menu_hover" value="menu_hover" type="radio"> Hover</label>
                </div>
            </div>

            <div class="gh_button-group">
                <a href="#" id="showCss" class="btn btn-primary btn-sm">Show CSS</a>
                <a href="#" id="resetDefault" class="btn btn-default btn-sm">Reset</a>
            </div>
            <div class="hide">
                <ul id="ssw_styles">
                    <li class="small ssw_mbColor sepH_a" style="display:none">body {<span class="ssw_mColor sepH_a" style="display:none"> color: #<span></span>;</span> <span class="ssw_bColor" style="display:none">background-color: #<span></span> </span>}</li>
                    <li class="small ssw_lColor sepH_a" style="display:none">a { color: #<span></span> }</li>
                </ul>
            </div>
        </div>
        <div id="maincontainer" class="clearfix">
            <header>
                <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
                    <div class="navbar-inner">
                        <div class="container">
                            <a class="brand pull-left" href="#">SMS Connect <span class="sml_t"></span></a>
                            <ul class="nav navbar-nav" id="mobile-nav">
                                <li class="dropdown">
                                    <a data-toggle="dropdown" class="dropdown-toggle" href="#"><span class="glyphicon glyphicon-list-alt"></span> Conversas <b class="caret"></b></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="index.php?uid=1&amp;page=form_elements">Ver Conversas</a></li>
                                        <li><a href="index.php?uid=1&amp;page=form_extended">Nova Conversa</a></li>
                                        <li><a href="index.php?uid=1&amp;page=form_validation">Form Validation</a></li>
                                    </ul>
                                </li>
                                <li class="dropdown">
                                    <a data-toggle="dropdown" class="dropdown-toggle" href="#"><span class="glyphicon glyphicon-th"></span> Components <b class="caret"></b></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="index.php?uid=1&amp;page=alerts_btns">Alerts &amp; Buttons</a></li>
                                        <li><a href="index.php?uid=1&amp;page=icons">Icons</a></li>
                                        <li><a href="index.php?uid=1&amp;page=notifications">Notifications</a></li>
                                        <li><a href="index.php?uid=1&amp;page=tables">Tables</a></li>
                                        <li><a href="index.php?uid=1&amp;page=tables_more">Tables (more examples)</a></li>
                                        <li><a href="index.php?uid=1&amp;page=tabs_accordion">Tabs &amp; Accordion</a></li>
                                        <li><a href="index.php?uid=1&amp;page=tooltips">Tooltips, Popovers</a></li>
                                        <li><a href="index.php?uid=1&amp;page=typography">Typography</a></li>
                                        <li><a href="index.php?uid=1&amp;page=widgets">Widget boxes</a></li>
                                        <li class="dropdown">
                                            <a href="#">Sub menu <b class="caret-right"></b></a>
                                            <ul class="dropdown-menu">
                                                <li><a href="#">Sub menu 1.1</a></li>
                                                <li><a href="#">Sub menu 1.2</a></li>
                                                <li><a href="#">Sub menu 1.3</a></li>
                                                <li>
                                                    <a href="#">Sub menu 1.4 <b class="caret-right"></b></a>
                                                    <ul class="dropdown-menu">
                                                        <li><a href="#">Sub menu 1.4.1</a></li>
                                                        <li><a href="#">Sub menu 1.4.2</a></li>
                                                        <li><a href="#">Sub menu 1.4.3</a></li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                                <li class="dropdown">
                                    <a href="#"><span class="glyphicon"></span>         <b class="caret"></b></a>
                                    <!--ul class="dropdown-menu">
                                        <li><a href="index.php?uid=1&amp;page=charts">Charts</a></li>
                                        <li><a href="index.php?uid=1&amp;page=calendar">Calendar</a></li>
                                        <li><a href="index.php?uid=1&amp;page=datatable">Datatable</a></li>
                                        <li><a href="index.php?uid=1&amp;page=dynamic_tree">Dynamic tree</a></li>
                                        <li><a href="index.php?uid=1&amp;page=editable_elements">Editable elements</a></li>
                                        <li><a href="index.php?uid=1&amp;page=file_manager">File Manager</a></li>
                                        <li><a href="index.php?uid=1&amp;page=floating_header">Floating List Header</a></li>
                                        <li><a href="index.php?uid=1&amp;page=google_maps">Google Maps</a></li>
                                        <li><a href="index.php?uid=1&amp;page=gallery">Gallery Grid</a></li>
                                        <li><a href="index.php?uid=1&amp;page=wizard">Wizard</a></li>
                                    </ul-->
                                </li>
                                <li class="dropdown">
                                    <a class="dropdown-toggle" href="#"><span class="glyphicon"></span><i> Seu sistema Integrado de Comunicação Coorporativa</i></a>
            
                                </li>
                            </ul>
                            <ul class="nav navbar-nav user_menu pull-right">
                                <li class="hidden-phone hidden-tablet">
                                    <div class="nb_boxes clearfix">
                                        <a data-toggle="modal" data-backdrop="static" href="#myMail" class="label ttip_b" title="Novas mensagens">25 <i class="splashy-mail_light"></i></a>
                                        <a data-toggle="modal" data-backdrop="static" href="#myTasks" class="label ttip_b" title="Novas tarefas">10 <i class="splashy-calendar_week"></i></a>
                                    </div>
                                </li>
                                <li class="divider-vertical hidden-sm hidden-xs"></li>
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle nav_condensed" data-toggle="dropdown"><i class="flag-gb"></i> <b class="caret"></b></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="javascript:void(0)"><i class="flag-de"></i> Deutsch</a></li>
                                        <li><a href="javascript:void(0)"><i class="flag-fr"></i> Français</a></li>
                                        <li><a href="javascript:void(0)"><i class="flag-es"></i> Español</a></li>
                                        <li><a href="javascript:void(0)"><i class="flag-ru"></i> P??????</a></li>
                                    </ul>
                                </li>
                                <li class="divider-vertical hidden-sm hidden-xs"></li>
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src="${pageContext.request.contextPath}/resources/assets/img/user_avatar.png" alt="" class="user_avatar">Jasse <b class="caret"></b></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="index.php?uid=1&amp;page=user_profile">Meu Perfil</a></li>
                                        <li><a href="javascrip:void(0)">Another action</a></li>
                                        <li class="divider"></li>
                                        <li><a href="index.php">Sair</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>

                <div class="modal fade" id="myMail">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                <h3 class="modal-title">Novas Mensagens</h3>
                            </div>
                            <div class="modal-body">
                                <div class="alert alert-info">In this table jquery plugin turns a table row into a clickable link.</div>
                                <table class="table table-condensed table-striped" data-provides="rowlink">
                                    <thead>
                                        <tr>
                                            <th>Sender</th>
                                            <th>Subject</th>
                                            <th>Date</th>
                                            <th>Size</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>Declan Pamphlett</td>
                                            <td><a href="javascript:void(0)">Lorem ipsum dolor sit amet</a></td>
                                            <td>23/05/2012</td>
                                            <td>25KB</td>
                                        </tr>
                                        <tr>
                                            <td>Erin Church</td>
                                            <td><a href="javascript:void(0)">Lorem ipsum dolor sit amet</a></td>
                                            <td>24/05/2012</td>
                                            <td>15KB</td>
                                        </tr>
                                        <tr>
                                            <td>Koby Auld</td>
                                            <td><a href="javascript:void(0)">Lorem ipsum dolor sit amet</a></td>
                                            <td>25/05/2012</td>
                                            <td>28KB</td>
                                        </tr>
                                        <tr>
                                            <td>Anthony Pound</td>
                                            <td><a href="javascript:void(0)">Lorem ipsum dolor sit amet</a></td>
                                            <td>25/05/2012</td>
                                            <td>33KB</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default">Go to mailbox</button>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="modal fade" id="myTasks">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                <h3 class="modal-title">New Tasks</h3>
                            </div>
                            <div class="modal-body">
                                <div class="alert alert-info">In this table jquery plugin turns a table row into a clickable link.</div>
                                <table class="table table-condensed table-striped" data-provides="rowlink">
                                    <thead>
                                        <tr>
                                            <th>id</th>
                                            <th>Summary</th>
                                            <th>Updated</th>
                                            <th>Priority</th>
                                            <th>Status</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>P-23</td>
                                            <td><a href="javascript:void(0)">Admin should not break if URL?</a></td>
                                            <td>23/05/2012</td>
                                            <td><span class="label label-danger">High</span></td>
                                            <td>Open</td>
                                        </tr>
                                        <tr>
                                            <td>P-18</td>
                                            <td><a href="javascript:void(0)">Displaying submenus in custom?</a></td>
                                            <td>22/05/2012</td>
                                            <td><span class="label label-warning">Medium</span></td>
                                            <td>Reopen</td>
                                        </tr>
                                        <tr>
                                            <td>P-25</td>
                                            <td><a href="javascript:void(0)">Featured image on post types?</a></td>
                                            <td>22/05/2012</td>
                                            <td><span class="label label-success">Low</span></td>
                                            <td>Updated</td>
                                        </tr>
                                        <tr>
                                            <td>P-10</td>
                                            <td><a href="javascript:void(0)">Multiple feed fixes and?</a></td>
                                            <td>17/05/2012</td>
                                            <td><span class="label label-warning">Medium</span></td>
                                            <td>Open</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default">Go to task manager</button>
                            </div>
                        </div>
                    </div>
                </div>

            </header>
                                    
            <div id="contentwrapper">
                <div class="main_content">
                    <div id="jCrumbs" class="breadCrumb module">
                        <ul>
                            <li>
                                <a href="#"><i class="glyphicon glyphicon-home"></i></a>
                            </li>
                            <li>
                                <a href="#">Página Inicial</a>
                            </li>
                            <li>
                                <a href="#">Responsabilidade Social</a>
                            </li>
                            <li>
                                <a href="#">Programas Educacionais</a>
                            </li>
                            <li>
                                <a href="#">Gastronomia</a>
                            </li>
                            <li>
                                Mensagens SMS Connect
                            </li>
                        </ul>
                    </div>