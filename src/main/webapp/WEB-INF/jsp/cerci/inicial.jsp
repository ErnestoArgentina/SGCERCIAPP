<%-- 
    Document   : inicial
    Created on : 21-Oct-2019, 23:03:52
    Author     : bONGANI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>CERCI</title>
  <meta name="theme-color" content="#002255">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/view/css/cerci.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/view/css/app.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/view/css/carossel.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/view/fontawesome/css/all.css">
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/view/fontawesome/js/all.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/view/js/app.js"></script>
</head>
<body>

	<div class="contacto-logo fixed">
		<div class="container">
			<div class="row">
				<div class="logo col-sm-4">
					<div class="row">
						<div class="logo-image" class="col-sm-4">
							<img src="${pageContext.request.contextPath}/resources/view/images/logotipo/cercii.png">
						</div>
						<div class="logo-desc col-sm-8">
							<label class="logo-nome">CERCI</label>
							<label class="logo-descricao">ASSOCIAÇÃO  DE  EDUCAÇÃO</label>
						</div>
					</div>
				</div>
				<div class="logo col-md-4">
					<div class="row centro-vertical">
						
							<div class="cell-icon">
								<i class="fa fa-phone"></i>
							</div>
					
						    <div class="cell-number">
						    		<label class="numero">84 376 4793</label><br>
						    		<label class="contacte">Contacte nos</label>
						    </div>

					</div>
				</div>
				<div class="logo col-md-4">
					<div class="row centro-vertical">
						
							<div class="cell-icon">
								<i class="fa fa-search"></i>
							</div>
					
						    <div class="social-icons">
						    		<ul>
						    			<li class="cell-icon social-icon bg-azul" ><i class="fab fa-facebook-f"></i></li>
						    			<li class="cell-icon social-icon bg-verde" ><i class="fab fa-whatsapp"></i></li>
						    			<li class="cell-icon social-icon bg-gradiente" ><i class="fab fa-instagram"></i></li>
						    		</ul>
						    </div>

					</div>
				</div>
			</div>
			
		</div>
	</div>
	<nav class="nav">
		<div class="container">
			<div class="row">
				<ul class="row-nav">
					<li class="primary"><i class="fa fa-home laranja"></i><a class="menu" href="#">Home</a></li>
					<li><i class="fa fa-camera azulEscuro"></I><a class="menu" href="#educadores">Galeria</a></li>
					<li><i class="fa fa-school vermelho"></i><a class="menu" href="#acerca">Actividades</a></li>
					<li><i class="fa fa-users azul"></i><a class="menu" href="#educadores">Educadores</a></li>
					<li><i class="fa fa-calendar rosa"></i><a class="menu" href="#educadores">Eventos</a></li>
					<li><i class="fa fa-exclamation verde"></i><a href="#acerca" class="menu">Sobre nós</a></li>
					<li><i class="fa fa-lock amarelo"></i><a href="${pageContext.request.contextPath}/cerci/login" class="menu">LOGIN</a></li>
				</ul>
			</div>
		</div>
		
	</nav>

	<div class="main">
		<div id="myCarousel" class="carousel slide" data-ride="carousel" style="/*height: 400px !important*/">
        <ol class="carousel-indicators">
          <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
          <li data-target="#myCarousel" data-slide-to="1"></li>
          <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img class="first-slide width-100" src="${pageContext.request.contextPath}/resources/view/images/cri/fot1.png" alt="First slide">
            <div class="container">
              <div class="carousel-caption text-left">
                <h1>CERCI Maputo.</h1>
                <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. <br>Donec id elit non mi porta gravida at eget metus.<br> Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                <p><a class="btn btn-lg btn-primary" href="#" role="button">Inscreva o seu filho hoje</a></p>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <img class="second-slide width-100" src="${pageContext.request.contextPath}/resources/view/images/cri/fot2.png" alt="Second slide">
            <div class="container">
              <div class="carousel-caption  text-left">
                <h1>CERCI Maputo.</h1>
                <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. <br> Donec id elit non mi porta gravida at eget metus. <br> Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                <p><a class="btn btn-lg btn-primary" href="#" role="button">Learn more</a></p>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <img class="third-slide width-100" src="${pageContext.request.contextPath}/resources/view/images/cri/fot3.png" alt="Third slide">
            <div class="container">
              <div class="carousel-caption  text-left">
                <h1>CERCI Maputo.</h1>
                <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. <br>Donec id elit non mi porta gravida at eget metus.<br> Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                <p><a class="btn btn-lg btn-primary" href="#" role="button">Browse gallery</a></p>
              </div>
            </div>
          </div>
        </div>
        <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
      </div>
      <div class="linha opcoes menu-acores ">
      	<div class="linha-3 bg-azul educadores">
      		<div class=" linha" >
      			<label class="centroX text-uppercase titulo" >Educadores</label>
      		</div>
      		<div class="linha">
      			<div class="caixa centro">
      				<i class="fa fa-users centro"></i>
      			</div>
      		</div>
      		<div class="linha texto">
      			Temos os melhores eucadores para cuidarem dos seus filhos
      		</div>
      	</div>
      	<div class="linha-3 bg-verde ideias">
      		<div class=" linha" >
      			<label class="centroX text-uppercase titulo" >Ideias</label>
      		</div>
      		<div class="linha">
      			<div class="caixa centro">
      				<i class="fa fa-lightbulb centro"></i>
      			</div>
      		</div>
      		<div class="linha texto">
      			Temos os melhores eucadores para cuidarem dos seus filhos
      		</div>
      	</div>
      	<div class="linha-3 bg-amarelo eventos">
      		<div class=" linha" >
      			<label class="centroX text-uppercase titulo" >Eventos</label>
      		</div>
      		<div class="linha">
      			<div class="caixa centro">
      				<i class="fa fa-calendar-alt centro"></i>
      			</div>
      		</div>
      		<div class="linha texto">
      			Temos os melhores educadores para cuidarem dos seus filhos
      		</div>
      	</div>
      	<div class="linha-3 bg-vermelho">
      		<div class=" linha" >
      			<label class="centroX text-uppercase titulo" >Entre outros</label>
      		</div>
      		<div class="linha">
      			<div class="caixa centro">
      				<i class="fa fa-users centro"></i>
      			</div>
      		</div>
      		<div class="linha texto">
      			Temos os melhores eucadores para cuidarem dos seus filhos
      		</div>
      	</div>
      </div>

      <div id="actividades" class="container">
      	<h2>Nossas actividades</h2>
      	<div class="linha">
      		esta informacao e' referente a estas colunas e linhas bla bla bla
      	</div>
      	<div class="linha row">
          <div class="col-md-4">
            <div class="informacao centroX">
              <h1><i class="fa fa-book amarelo"></i></h1>
              <h3>Leitura</h3>
              <p>O que seria da saude sem desporto?</p>
              <a href="#" class="btn btn-primary-outline centroX" style="border:1px solid #06f;">Mais</a>
            </div>
          </div>

           <div class="col-md-4">
            <div class="informacao centroX">
              <h1><i class="fa fa-basketball-ball vermelho"></i></h1>
              <h3>Desporto</h3>
              <p>O que seria da saude sem desporto?</p>
              <a href="#" class="btn btn-primary-outline centroX" style="border:1px solid #06f;">Mais</a>
            </div>
          </div>

           <div class="col-md-4">
            <div class="informacao centroX">
              <h1><i class="fa fa-child verde"></i></h1>
              <h3>Danca</h3>
              <p>O que seria da saude sem desporto?</p>
              <a href="#" class="btn btn-primary-outline centroX" style="border:1px solid #06f;">Mais</a>
            </div>
          </div>
        </div>
        <div class="linha row" style="margin-top: 20px;">
      		<div class="col-md-4">
      			<div class="informacao centroX">
      				<h3><i class="fa fa-book"></i></h3>
      				heu
      			</div>
      		</div>
      		<div class="col-md-4">
      			<div class="informacao centroX">
      				<h3><i class="fa fa-book"></i></h3>
      				heu
      			</div>
      		</div>
      		<div class="col-md-4">
      			<div class="informacao centroX">
      				<h3><i class="fa fa-book"></i></h3>
      				<h3>Desporto</h3>
      			</div>
      		</div>
      	</div>
      </div>

      <div id="acerca" class="row bg-azul linha" style="margin-top: 20px;">
        <div class="col-md-6  mrg-20" style="padding: 20px;">
          <h1>Porque escolher a CERCI?</h1>
          <p>Melhor educadores </p>
        </div>
        <div class="col-md-6">
          <img src="${pageContext.request.contextPath}/resources/view/images/cri/fot2.png" style="width: 100%">
        </div>
        
      </div>
   
       <div id="educadores" class="container educadores">
        <h2>Nossos Educadores</h2>
        <div class="linha">
          A seguir a lista dos nossos educadores
        </div>
        
        <div class="linha row nopadding" >
        
               <div class="col-md-6 bxshadow">
                <div class="centroX row  bg-rosa">
                  <div class="col-md-6">
                    <img src="${pageContext.request.contextPath}/resources/view/images/uploaded/bia.jpeg" class="width-100" style="max-height: 250px;">
                  </div>
                  <div class="col-md-6" style="padding-top: 20px;">
                    <h4>nome</h4>
                    <h3>Licenciada em Psicologia educacional</h3>
                    <p>Alguma descricao de educador vem aqui</p>
                  </div>
                </div>
              </div>


            <div class="col-md-6 bxshadow">
                <div class="centroX row  bg-amarelo">
                  <div class="col-md-6">
                    <img src="${pageContext.request.contextPath}/resources/view/images/perfil/perfil.jpg" class="width-100" style="max-height: 250px;">
                  </div>
                  <div class="col-md-6" style="padding-top: 20px;">
                    <h4>nome</h4>
                    <h3>Licenciada em Psicologia educacional</h3>
                    <p>Alguma descricao de educador vem aqui</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
      </div>

	</div>


<script type="text/javascript">
	for (var i = 0; i < 50; i++) {
		document.write("<br>")
	}
</script>

</body>
</html>