<%-- 
    Document   : index_logado
    Created on : 7 de nov. de 2022, 11:19:47
    Author     : amand
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cp" value="${pageContext.request.contextPath}"/>


<!DOCTYPE html>
<html>

<head>
  <meta charset='utf-8'>
  <meta http-equiv='X-UA-Compatible' content='IE=edge'>
  <link rel="icon" type="image/jpg" href="img/icon.png" />
  <title>PlaceR</title>
  <meta name='viewport' content='width=device-width, initial-scale=1'>

  <!--Bootstrap-->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

  <!--Bootstrap icones do footer-->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css">

  <!--CSS-->
  <link rel='stylesheet' type='text/css' media='screen' href='css/style.css'>
  <script src='main.js'></script>
</head>

<body>

  <!-- Navbar start -->
  <nav class="navbar-inverse">
    <div class="container-fluid">
      <div class="navbar-header logo">
        <a class="navbar-brand" href="index.html">PlaceR</a>
      </div>
      <!--
       <ul class="nav navbar-nav">  
        <li class="active"><a href="#">Home</a></li>      
        <li><a href="#">Page 1</a></li>
        <li><a href="#">Page 2</a></li>    
      </ul>
    -->
      <ul class="nav navbar-nav navbar-right">
        
        <li>
          <div id="divBusca">
            <input type="text" id="txtBusca" placeholder="Buscar..."/>
          </div>
        </li>
        <li><a href="perfil_pf.html"><span class="glyphicon glyphicon-user"></span></a></li>
        <li><a href="#modal_notifica"><span class="glyphicon glyphicon-envelope"></span></a></li>
        <li><a href="index.html"><span class="glyphicon glyphicon-log-in"></span> Sair</a></li>
      </ul>
    </div>
  </nav>
  <!-- Navbar end -->

  <!-- Carrossel start -->
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper dos slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="img/img.png" alt="Evento Mensal">
      </div>

      <div class="item">
        <img src="img/Hamburgueria com as melhores pontuações!.png" alt="Lugar de Melhor avaliação">
      </div>

      <div class="item">
        <img src="img/FeiraJunto.png" alt="Evento do mes">
      </div>
    </div>

    <!-- Control direita e esquerda -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
  <!-- Carrossel end -->

  <!-- Local Section Start -->
  <section class="menu_locais">
    <div class="container">
      <div class="titleCenter">
        <h2>Nossos locais</h2>
      </div>
      <ul class="filter_menu">
        <li class="" data-filter="*">Todos</li>
        <li class="active" data-filter="filtro_para_vc">Selecionados para você!</li>


      </ul>
      <div class="filters-content">
        <div class="row grid" style="position: relative; height: 80%;">
          <div class="col-sm-6 col-lg-4">
            <div class="box">
              <div>
                <div class="img-box">
                  <a href="info_local_geral.html">
                    <img src="img/quintal.png" alt="">
                  </a>
                </div>
                <div class="detail-box">
                  <h5>
                    <a href="info_local.html">
                      Quintal Bar
                    </a>
                  </h5>
                </div>
              </div>
            </div>
          </div>
          <div class="col-sm-6 col-lg-4">
            <div class="box">
              <div>
                <div class="img-box">
                  <a href="#">
                    <img src="img/CurralBar.png" alt="">
                  </a>
                </div>
                <div class="detail-box">
                  <h5>
                    <a href="#">
                      Curral Steak Bar
                    </a>
                  </h5>
                </div>
              </div>
            </div>
          </div>
          <div class="col-sm-6 col-lg-4">
            <div class="box">
              <div>
                <div class="img-box">
                  <a href="info_local_com_reserva.html">
                    <img src="img/img_comidaria.jpg" alt="">
                  </a>
                </div>
                <div class="detail-box">
                  <h5>
                    <a href="#">
                      Comidaria
                    </a>
                  </h5>
                </div>
              </div>
            </div>
          </div>
          <div class="col-sm-6 col-lg-4">
            <div class="box">
              <div>
                <div class="img-box">
                  <a href="">
                    <img src="img/img_eapic.jpg" alt="">
                  </a>
                </div>
                <div class="detail-box">
                  <h5>
                    <a href="">
                      Eapic
                    </a>
                  </h5>
                </div>
              </div>
            </div>
          </div>          
        </div>
      </div>
    </div>
  </section>

  <!--About Section Start-->
  <!--About Section End-->

  <!--Footer Start-->
  <div class="footer">
    <footer>
      <div class="social">
        <a href="#">
          <i class="icon bi bi-whatsapp"></i>
        </a>
        <a href="#">
          <i class="bi bi-facebook"></i>
        </a>
        <a href="#">
          <i class="bi bi-instagram"></i>
        </a>
        <a href="#">
          <i class="icon bi bi-share"></i>
        </a>
      </div>

      <ul class="list-inline">
        <li class="list-inline-item"><a href="#">Sobre</a></li>
        <li class="list-inline-item"><a href="#">Termos de uso</a></li>
        <li class="list-inline-item"><a href="#">Politícas de privacidade</a></li>
      </ul>
      <p class="copyright">Orion© 2022</p>
    </footer>
  </div>
  <!--Footer End-->
</body>

</html>
