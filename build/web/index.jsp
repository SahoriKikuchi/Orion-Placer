<%-- 
    Document   : index
    Created on : 31 de out. de 2022, 22:05:53
    Author     : Amanda e Lucas
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cp" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
    <head>
        <meta charset='utf-8'>
        <meta http-equiv='X-UA-Compatible' content='IE=edge'>
        <link rel="icon" type="image/jpg" href="${cp}/img/icon.png" />
        <title>PlaceR</title>
        <meta name='viewport' content='width=device-width, initial-scale=1'>

        <!--Bootstrap-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

        <!--Bootstrap icones do footer-->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css">

        <!--CSS-->
        <link rel='stylesheet' type='text/css' media='screen' href='${cp}/css/style.css'>
        <script src='main.js'></script>
    </head>

    <body>

        <!-- Navbar start -->
        <nav class="navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header logo">
                    <a class="navbar-brand" href="${cp}/index.jsp">PlaceR</a>
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
                    <li><a href="${cp}/login.jsp"><span class="glyphicon glyphicon-user"></span></a></li>
                    <!-- Depois de logado:
                    <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Sair</a></li>
                    -->
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
                    <img src="${cp}/img/img.png" alt="Evento Mensal">
                </div>

                <div class="item">
                    <img src="${cp}/img/Hamburgueria com as melhores pontuações!.png" alt="Lugar de Melhor avaliação">
                </div>

                <div class="item">
                    <img src="${cp}/img/img_feirasjbv.png" alt="Evento do mes">
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
                    <li class="active" data-filter="*">Todos</li>
                    <li data-filter=".bares">Pubs & Bares</li>
                    <li data-filter=".universitarios">Festas Universitárias</li>
                    <li data-filter=".restaurantes">Restaurantes</li>
                    <li data-filter=".eventos">Eventos</li>
                    <li data-filter=".recreacao">Atividade Recriativa</li>

                </ul>
                <div class="filters-content">
                    <div class="row grid" style="position: relative; height: 80%;">
                        <div class="col-sm-6 col-lg-4">
                            <div class="box">
                                <div>
                                    <div class="img-box">
                                        <a href="info_local_geral.jsp">
                                            <img src="${cp}/img/quintal.png" alt="">
                                        </a>
                                    </div>
                                    <div class="detail-box">
                                        <h5>
                                            <a href="${cp}/info_local.jsp">
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
                                        <a href="${cp}/info_local_curral.jsp">
                                            <img src="${cp}/img/CurralBar.png" alt="">
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
                                        <a href="">
                                            <img src="${cp}/img/img_eapic.jpg" alt="">
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
                        <div class="col-sm-6 col-lg-4">
                            <div class="box">
                                <div>
                                    <div class="img-box">
                                        <a href="">
                                            <img src="${cp}/img/img_cineA.png" alt="">
                                        </a>
                                    </div>
                                    <div class="detail-box">
                                        <h5>
                                            <a href="">
                                                Cine A
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
                                        <a href="info_local_sem_reserva.jsp">
                                            <img src="${cp}/img/img_comidaria.jpg" alt="">
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
                                        <a href="info_local_evento.jsp">
                                            <img src="${cp}/img/img_feirajunto_index.jpeg" alt="">
                                        </a>
                                    </div>
                                    <div class="detail-box">
                                        <h5>
                                            <a href="#">
                                                Feira Juntô
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
        <!-- Local Section End -->
        
        <!-- pop up -->
         <button></button>
         <div class="popup-wrapper">
            <div class="popup">
                <div class="popup-close">x</div>
                <div class="popup-content">
                    <h2>Conheça Novos Eventos e Locais!</h2>
                    <p>Nosso site mostra as melhores opçoes de diversão a você</p>
                    
                </div>
            </div>
        </div>
         <script>
             const button = document.querySelector('button');
             const popup = document.querySelector('.popup-wrapper');         
             const closeButton = document.querySelector('.popup-close');
             
             button.addEventListener('click', () => {
             popup.style.display = 'block';
             });

             closeButton.addEventListener('click', () =>{
             popup.style.display = 'none';
             });

             closeButton.addEventListener('click', () =>{
             popup.style.display = 'none';
             });
         </script>
         <!-- pop up section ends -->

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
