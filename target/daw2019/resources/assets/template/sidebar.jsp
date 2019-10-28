<a href="javascript:void(0)" class="sidebar_switch on_switch ttip_r" title="Hide Sidebar">Sidebar switch</a>
            <div class="sidebar">

                <div class="sidebar_inner_scroll">
                    <div class="sidebar_inner">
                        <form action="index.php?uid=1&amp;page=search_page" class="input-group input-group-sm" method="post">
                            <input autocomplete="off" name="query" class="search_query form-control input-sm" size="16" placeholder="Search..." type="text">
                            <span class="input-group-btn"><button type="submit" class="btn btn-default"><i class="glyphicon glyphicon-search"></i></button></span>
                        </form>
                                             
                        <div id="side_accordion" class="panel-group">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <a href="#collapse" data-parent="#side_accordion" data-toggle="collapse" class="accordion-toggle">
                                        <i class="glyphicon glyphicon-home"></i> Página Inicial
                                    </a>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <a href="#collapseOne" data-parent="#side_accordion" data-toggle="collapse" class="accordion-toggle">
                                        <i class="glyphicon glyphicon-envelope"></i> Mensagens
                                    </a>
                                </div>
                                <div class="accordion-body collapse" id="collapseOne">
                                    <div class="panel-body">
                                        <ul class="nav nav-pills nav-stacked">
                                            <li><a href="javascript:void(0)">Recebidas</a></li>
                                            <li><a href="javascript:void(0)">Enviadas</a></li>
                                            <li><a href="javascript:void(0)">Apagadas</a></li>
                                            <li><a href="javascript:void(0)">Nova mensagem</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <a href="#collapseTwo" data-parent="#side_accordion" data-toggle="collapse" class="accordion-toggle">
                                        <i class="glyphicon glyphicon-user"></i> Utilizadores
                                    </a>
                                </div>
                                <div class="accordion-body collapse" id="collapseTwo">
                                    <div class="panel-body">
                                        <ul class="nav nav-pills nav-stacked">
                                            <li><a href="javascript:void(0)">Monitores</a></li>
                                            <li><a href="javascript:void(0)">Gestores</a></li>
                                            <li><a href="javascript:void(0)">Membros</a></li>
                                            <li><a href="javascript:void(0)">Novo utilizador</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <a href="#collapseThree" data-parent="#side_accordion" data-toggle="collapse" class="accordion-toggle">
                                        <i class="glyphicon glyphicon-globe"></i> Distritos
                                    </a>
                                </div>
                                <div class="accordion-body collapse" id="collapseThree">
                                    <div class="panel-body">
                                        <ul class="nav nav-pills nav-stacked">
                                            <li><a href="javascript:void(0)">Por Região</a></li>
                                            <li><a href="javascript:void(0)">Por Província</a></li>
                                            <li><a href="javascript:void(0)">Novo distrito</a></li>
                                        </ul>

                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <a href="#collapseFour" data-parent="#side_accordion" data-toggle="collapse" class="accordion-toggle">
                                        <i class="glyphicon glyphicon-cog"></i> Configurações
                                    </a>
                                </div>
                                <div class="accordion-body collapse" id="collapseFour">
                                    <div class="panel-body">
                                        <ul class="nav nav-pills nav-stacked">                                                                                  
                                            <li><a href="javascript:void(0)">Sobre o sistema</a></li>
                                            <li><a href="javascript:void(0)">Dúvidas Frequentes</a></li>
                                            <li><a href="javascript:void(0)">Ajuda</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <a href="#collapseLong" data-parent="#side_accordion" data-toggle="collapse" class="accordion-toggle">
                                        <i class="glyphicon glyphicon-stats"></i> Relatórios
                                    </a>
                                </div>
                                <div class="accordion-body collapse" id="collapseLong">
                                    <div class="panel-body">
                                        <<ul class="nav nav-pills nav-stacked">
                                            <li><a href="javascript:void(0)">Por Região</a></li>
                                            <li><a href="javascript:void(0)">Por Província</a></li>
                                            <!--li><a href="javascript:void(0)">Membros</a></li-->
                                            <li><a href="javascript:void(0)">Novo distrito</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <a href="#collapse7" data-parent="#side_accordion" data-toggle="collapse" class="accordion-toggle">
                                        <i class="glyphicon glyphicon-th"></i> Calculadora
                                    </a>
                                </div>
                                <div class="accordion-body collapse" id="collapse7">
                                    <div class="panel-body">
                                        <form name="Calc" id="calc">
                                            <div class="formSep input-group input-group-sm">
                                                <input class="form-control" name="Input" type="text"/>
                                                <span class="input-group-btn">
                                                    <button type="button" class="btn btn-default" name="clear" value="c" onclick="Calc.Input.value = ''">
                                                        <i class="glyphicon glyphicon-remove"></i>
                                                    </button>
                                                </span>
                                            </div>
                                            <div class="form-group">
                                                <input class="btn form-control btn-default input-sm" name="seven" value="7" onclick="Calc.Input.value += '7'" type="button">
                                                <input class="btn form-control btn-default input-sm" name="eight" value="8" onclick="Calc.Input.value += '8'" type="button">
                                                <input class="btn form-control btn-default input-sm" name="nine" value="9" onclick="Calc.Input.value += '9'" type="button">
                                                <input class="btn form-control btn-default input-sm" name="div" value="/" onclick="Calc.Input.value += ' / '" type="button">
                                            </div>
                                            <div class="form-group">
                                                <input class="btn form-control btn-default input-sm" name="four" value="4" onclick="Calc.Input.value += '4'" type="button">
                                                <input class="btn form-control btn-default input-sm" name="five" value="5" onclick="Calc.Input.value += '5'" type="button">
                                                <input class="btn form-control btn-default input-sm" name="six" value="6" onclick="Calc.Input.value += '6'" type="button">
                                                <input class="btn form-control btn-default input-sm" name="times" value="x" onclick="Calc.Input.value += ' * '" type="button">
                                            </div>
                                            <div class="form-group">
                                                <input class="btn form-control btn-default input-sm" name="one" value="1" onclick="Calc.Input.value += '1'" type="button">
                                                <input class="btn form-control btn-default input-sm" name="two" value="2" onclick="Calc.Input.value += '2'" type="button">
                                                <input class="btn form-control btn-default input-sm" name="three" value="3" onclick="Calc.Input.value += '3'" type="button">
                                                <input class="btn form-control btn-default input-sm" name="minus" value="-" onclick="Calc.Input.value += ' - '" type="button">
                                            </div>
                                            <div class="formSep form-group">
                                                <input class="btn form-control btn-default input-sm" name="dot" value="." onclick="Calc.Input.value += '.'" type="button">
                                                <input class="btn form-control btn-default input-sm" name="zero" value="0" onclick="Calc.Input.value += '0'" type="button">
                                                <input class="btn form-control btn-default input-sm" name="DoIt" value="=" onclick="Calc.Input.value = Math.round(eval(Calc.Input.value) * 1000) / 1000" type="button">
                                                <input class="btn form-control btn-default input-sm" name="plus" value="+" onclick="Calc.Input.value += ' + '" type="button">
                                            </div>
                                            Contributed by <a href="http://themeforest.net/user/maumao">maumao</a>
                                        </form>
                                    </div>
                                </div>
                            </div>

                        </div>

                        <div class="push"></div>
                    </div>

                    <div class="sidebar_info">
                        <ul class="list-unstyled">
                            <li>
                                <span class="act act-danger">85</span>
                                <strong>Incidentes graves</strong>
                            </li>
                            <li>
                                <span class="act act-warning">65</span>
                                <strong>Incidentes moderados</strong>
                            </li>
                            <li>
                                <span class="act act-success">10</span>
                                <strong>Incidentes leves</strong>
                            </li>
                        </ul>
                    </div> 
                </div>

            </div>