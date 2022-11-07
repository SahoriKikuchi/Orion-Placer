<%-- 
    Document   : perfilPF
    Created on : 7 de nov. de 2022, 11:11:30
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
    <link rel="icon" type="image/jpg" href="img/icon.png" />
    <title>Perfil</title>
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
                <a class="navbar-brand" href="index_logado.jsp">PlaceR</a>
            </div>
            <!--
       <ul class="nav navbar-nav">  
        <li class="active"><a href="#">Home</a></li>      
        <li><a href="#">Page 1</a></li>
        <li><a href="#">Page 2</a></li>    
      </ul>
    -->
            <ul class="nav navbar-nav navbar-right">
                <!--<li><a href="login.html"><span class="glyphicon glyphicon-user"></span></a></li>-->
                <li>
                </li>
                <li><a href=""><span class="glyphicon glyphicon-envelope"></span></a></li>
                <li><a href="index.jsp"><span class="glyphicon glyphicon-log-in"></span> Sair</a></li>
            </ul>
        </div>
    </nav>
    <!-- Navbar end -->

    <!-- Perfil Section Start -->

    <section class="book_section login_section layout_padding">
        <div class="container_login">
            <div class="container-editar-pf">
                <div class="img-edit-pf">


                <a class="w" href="#open-modal">
                        <img src="img/icones/icon-editar-branco.png" alt="">
                </div>
                </a>
                <br>
                <div id="open-modal" class="class-modal">
                    <div>
                        <a href="#fechar" title="Fechar" class="fechar">X</a>
                        <h2 class="class-modal-title">Edite suas informações!</h2>

                        <forms class="modal-m ">
                            <p>Foto</p>
                            <input type="file" name="arquivos" class="input-text"><br>
                            <p>E-mail</p>
                            <input type="email" id="email" required="required" class="input-text"><br><br>
                            <p>Telefone para contato</p>
                            <input type="number" id="telefone" required="required" class="input-number"><br><br>
                            <input class="btn-confirm" type="submit" value="Confirmar">

                        </forms>
                    </div>
                </div>
                
            </div>
            <div class="heading_container">
                <img src="img/usuario.jpeg" alt="">
                <h2>Adriana Nakamura</h2>
            </div>
            <div class="row">
                <div class="form_container">
                    <form class="form_login" action="">
                        <div>
                            <label for="">E-mail: adri438@gmail.com</label>
                        </div>
                        <div>
                            <label for="">Telefone: (19) 92331-9863</label>
                        </div>
                        <div>
                            <label for="">Data de Nascimento: 10/02/2022</label>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
    <!-- Perfil Section End-->

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
