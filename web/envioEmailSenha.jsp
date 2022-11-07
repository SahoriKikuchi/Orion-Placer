<%-- 
    Document   : envioEmailSenha
    Created on : 7 de nov. de 2022, 11:23:55
    Author     : amand
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cp" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<!DOCTYPE html>
<html>

    <head>
        <meta charset='utf-8'>
        <meta http-equiv='X-UA-Compatible' content='IE=edge'>
        <link rel="icon" type="image/jpg" href="img/icon.png" />
        <title>Recuperar senha</title>
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
                    <a class="navbar-brand" href="index.jsp">PlaceR</a>
                </div>
                <!--
           <ul class="nav navbar-nav">  
            <li class="active"><a href="#">Home</a></li>      
            <li><a href="#">Page 1</a></li>
            <li><a href="#">Page 2</a></li>    
          </ul>
                -->
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="login.jsp"><span class="glyphicon glyphicon-user"></span></a></li>
                    <!-- Depois de logado:
            <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Sair</a></li>
                    -->
                </ul>
            </div>
        </nav>
        <!-- Navbar end -->


        <!-- Rec Password Section Start -->
        <section class="book_section login_section layout_padding" id="form_rec_senha">
            <div class="container_login">
                <div class="heading_container">
                    <h2>
                        Recuperar senha
                    </h2>
                </div>
                <div class="row">
                    <div class="form_container">
                        <form class="form_login" action="${cp}/recuperarSenha.jsp">
                            <div>
                                <label for="">Insira seu e-mail: </label>
                                <input type="email" class="form-control" placeholder="" name="email"/>
                            </div>
                            <div>
                                <!--BoxStart-->
                                <div class="btn_box">
                                    <a href="#"></a>
                                    <a class="w" href="#open-modal" >
                                        <button type="button" class="btn btn-primary btn-block mb-4">Enviar</button>
                                    </a>
                                    <br>
                                    <div id="open-modal" class="class-modal">
                                        <div>
                                            <a href="#fechar" title="Fechar" class="fechar">X</a>
                                            <h2 class="class-modal-title">E-mail enviado com sucesso!</h2>

                                            <div class="modal-m ">
                                                <br>
                                                <p>Verifique sua caixa de entrada!</p>
                                            </div>
                                        </div>
                                    </div> 
                                </div>
                                <!--BoxEnd-->  
                            </div>
                        </form>
                    </div>
                </div>
        </section>

        <!-- Rec password Section End-->

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