<%-- 
    Document   : cadastroUsuario
    Created on : 2 de nov. de 2022, 18:42:36
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
    <title>Cadastro</title>
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

    <!-- Register Section Start -->
    <section class="book_section layout_padding">
        <div class="container">
            <div class="heading_container">
                <h2>
                    Faça seu cadastro!
                </h2>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="form_container">
                        <form action="">
                            <div>
                                <label for="">Nome completo</label>
                                <input type="text" class="form-control" placeholder="" maxlength="64"/>
                            </div>
                            <!-- comment 
                            <div>
                                <label for="">CPF</label>
                                <input type="text" class="form-control" placeholder="XXX.XXX.XXX-X"  />
                            </div>
                            -->
                            <div>
                                <label for="">E-mail</label>
                                <input type="email" class="form-control" placeholder="" maxlength="255" />
                            </div>
                            <div>
                                <label for="">Data de Nascimento:</label>
                                <input type="date" class="form-control" placeholder="" />
                            </div>
                            <div>
                                <label for="">Imagem do perfil: </label>
                                <input type="file" name="arquivos"  /><br>
                            </div>
                            <div>
                                <label for="">Senha</label>
                                <input type="password" class="form-control" 
                                       placeholder="" 
                                       minlength="8"
                                       maxlength="16"/>
                            </div>
                            <div>
                                <label for="">Confirme sua senha</label>
                                <input type="password" class="form-control" 
                                       placeholder="" 
                                       minlength="8"
                                       maxlength="16"/>
                            </div>
                            <div class="btn_box">
                                <button> Cadastrar </button>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="container_cadastropf">
                        <div id="cadastropf">
                            <img src="${cp}/img/logo_pessoa.png" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--Register Section End-->

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
