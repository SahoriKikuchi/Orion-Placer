<%-- 
    Document   : info_local_geral
    Created on : 07/11/2022, 18:32:03
    Author     : aline
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
    <title>Quintal Bar</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>

    <!--Bootstrap-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <!--Bootstrap icones do footer-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css">
    
    <!--Bootstrap rating star-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

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
                <li><a href="#"><span class="glyphicon glyphicon-user"></span></a></li>
                <!-- Depois de logado:
        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Sair</a></li>
        -->
            </ul>
        </div>
    </nav>
    <!-- Navbar end -->

    <!--Info Section Start-->
    <section class="info_section">
        <div class="container-info">
            <div class="box-i box-1">
                <h3>Quintal Bar</h3>
                <div class="size-img-inf">
                <img src="img/img_logo_quintal.png" alt="">
                </div>
            </div>
            <div class="box-i box-2">
                <h3>Informa????es</h3>
                <div>
                    <p style="font-size: 12px;">O menu deste pub & bar ?? recomendado para os amantes da culin??ria. Espere um ambiente acolhedor neste pub & bar. Pub & bar Quintal tem classifica????o 4.6 no sistema de avalia????o do Google.</p>

                </div>
                <h4>Endere??o:</h4>
                <p style="font-size: 12px;">Av. Dr. Durval Nicolau, 1210 - Parque Colina da Mantiqueira, S??o Jo??o da Boa Vista - SP, 13874-371</p>
                <div class="size-img-inf">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3700.021870295393!2d-46.77308258505105!3d-21.972123685494992!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94c9cb56eb03054f%3A0x96255ba3c0af6042!2sQuintal!5e0!3m2!1spt-BR!2sbr!4v1656470391144!5m2!1spt-BR!2sbr" style="width: 100%; height: 300px; border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                </div>
             </div>
            <div class="box-i box-3">
                <h4>Avalie-nos</h4>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star"></span>
                <span class="fa fa-star"></span>
                <p class="avaliacao">Classifica????o de 4.1 baseado em 254 avalia????es</p>

            </div>
                <!--Se for um restaurante havera o bot??o de reservar-->
          
          </div>
    </section>

    <!--Info Section End-->

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
                <li class="list-inline-item"><a href="#">Polit??cas de privacidade</a></li>
            </ul>
            <p class="copyright">Orion?? 2022</p>
        </footer>
    </div>
    <!--Footer End-->
</body>

</html>
