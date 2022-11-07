<%-- 
    Document   : info_cinea
    Created on : 07/11/2022, 18:44:43
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
    <title>Cine A</title>
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
                <li><a href="perfil_pf.html"><span class="glyphicon glyphicon-user"></span></a></li>
                <li><a href="#modal_notifica"><span class="glyphicon glyphicon-envelope"></span></a></li>
                <li><a href="index.html"><span class="glyphicon glyphicon-log-in"></span> Sair</a></li>
                <!-- Depois de logado:
                    <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Sair</a></li>
                -->
            </ul>
        </div>
      </div>
    </nav>
    <!-- Navbar end -->

    <!--Info Section Start-->
    <section class="info_section">
        <div class="container-info">
            <div class="box-i box-1">
                <h3>Cine A</h3>
                <div class="size-img-inf">
                <img src="img/img_cineA.png" alt="">
                </div>
            </div>
            <div class="box-i box-2">
                <h3>Informações</h3>
                <div>
                    <p style="font-size: 12px;">Descubra todos os sessões e horários disponíveis para o cinema Cine A São João da Boa Vista em São João da Boa Vista</p>

                </div>
                <h4>Endereço:</h4>
                <p style="font-size: 12px;"> Av. Dona Gertrudes, 202 - Centro, São João da Boa Vista - SP, 13870-110</p>
                <div class="size-img-inf">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3699.9945039862596!2d-46.80009168490451!3d-21.97317401074697!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94c9cb6f8fd4f01f%3A0x7ce0dde85ac0598a!2sAv.%20Dona%20Gertrudes%2C%20202%20-%20Centro%2C%20S%C3%A3o%20Jo%C3%A3o%20da%20Boa%20Vista%20-%20SP%2C%2013870-110!5e0!3m2!1spt-BR!2sbr!4v1667857646342!5m2!1spt-BR!2sbr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                </div>
             </div>
            <div class="box-i box-3">
                <h4>Avalie-nos</h4>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <p class="avaliacao">Classificação de 4.8 baseado em 195 avaliações</p>

            </div>
                <!--Se for um restaurante havera o botão de reservar-->
            <div class="box-i box-4">
                <div>
                    <h4>Planeja visitar o local? Evite filas!</h4>
                    <a class="btn-box"href="reserva.html">
                    <button>Faça sua reserva!</button>
                    </a>
                </div>
            </div>
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
                <li class="list-inline-item"><a href="#">Politícas de privacidade</a></li>
            </ul>
            <p class="copyright">Orion© 2022</p>
        </footer>
    </div>
    <!--Footer End-->
</body>

</html>
