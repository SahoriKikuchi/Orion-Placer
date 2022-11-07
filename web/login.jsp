<%-- 
    Document   : login.jsp
    Created on : 31 de out. de 2022, 22:17:13
    Author     : Amanda e Lucas
--%>
<%@page import="login.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cp" value="${pageContext.request.contextPath}"/>

<%
    User us = new User();
    boolean a = us.erro;

%>



<!DOCTYPE html>
<html>

    <head>
        <meta charset='utf-8'>
        <meta http-equiv='X-UA-Compatible' content='IE=edge'>
        <link rel="icon" type="image/jpg" href="${cp}/img/icon.png" />
        <title>Login</title>
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
                    <li><a href="${cp}/login.jsp"><span class="glyphicon glyphicon-user"></span></a></li>
                    <!-- Depois de logado:
            <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Sair</a></li>
                    -->
                </ul>
            </div>
        </nav>
        <!-- Navbar end -->


        <!-- Login Section Start -->
        <section class="book_section login_section layout_padding">
            <div class="container_login">
                <div class="heading_container">
                    <h2>
                        Login
                    </h2>
                </div>
                <div class="row">
                    <div class="form_container">
                        <form class="form_login" action="${cp}/processaLogin" method="POST">
                            <div>
                                <input type="email" name="login" class="form-control" placeholder="E-mail" />
                            </div>
                            <div>
                                <input type="password" name="senha" class="form-control" placeholder="Senha" />
                            </div>
                            
                            <div>

                                <div class="btn_box">
                                    <button class="btn btn-primary btn-block mb-4" id="conf">Entrar</button>
                                </div>
                                <div class="btn_box">
                                <a href="#"></a>
                                <a class="w" href="#open-modal" >
                                    <button type="button" class="btn btn-primary btn-block mb-4">Enviar</button>
                                </a>
                                <br>
                                <div id="open-modal" class="class-modal">
                                    <div>
                                        <div id="messageS">
                                <h3>Senha incorreta! Tente novamente</h3>
                            </div>
                                    </div>
                                </div>
                            </div>

                                <div class="text-center">
                                    <div class=""><span>
                                            <br>
                                            <p>Esqueceu a senha? Clique<a href="${cp}/envioEmailSenha.jsp"> aqui</a></p>
                                            <p>Não faz parte da nossa plataforma? Registre-se<a href="${cp}/tipoDeCadastro.jsp">
                                                    aqui</a></p>
                                        </span></div>
                                </div>

                        </form>
                    </div>
                </div>
            </div>
        </section>

        <!-- Login Section End-->

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