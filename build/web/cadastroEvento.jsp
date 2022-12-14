<%-- 
    Document   : cadastroEvento.jsp
    Created on : 2 de nov. de 2022, 20:28:16
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
    <title>Cadastro de evento</title>
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

    <!-- Register Section Start -->
    <section class="book_section layout_padding">
        <div class="container">
            <div class="heading_container">
                <h2>
                    Fa??a o cadastro do seu evento!
                </h2>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="form_container">
                        <form action="">
                            <div>
                                <label for="">Nome do Evento:</label>
                                <input type="text" class="form-control" placeholder="" />
                            </div>
                            <div>
                                <label for="">Localiza????o:</label>
                                <input type="text" class="form-control" placeholder="" />
                            </div>
                            <div>
                                <label for="">Dura????o do evento</label>
                            </div>
                            <div>
                                <label for="">In??cio:</label>
                                <input type="date" class="form-control" placeholder="Inicio" />
                            </div>
                            <div>
                                <label for="">T??rmino:</label>
                                <input type="date" class="form-control" placeholder="Termino" />
                            </div>
                            <div>
                                <label for="">Organizadores:</label>
                                <input type="text" class="form-control" placeholder=""/>
                            </div>
                            <div>
                                <label for="">E-mail para contato:</label>
                                <input type="email" class="form-control" placeholder=""/>
                            </div>
                            <div>
                                <label for="">Informa????es adicionais sobre o evento:</label>
                                <textarea type="text" class="form-control" placeholder="Observa????es"> </textarea>
                            </div>
                        <!--BoxStart-->
                                <div class="btn_box">
                                    <a href="#"></a>
                                    
                                    <br>
                                    <div id="open-modal" class="class-modal">
                                        <div>
                                            <a href="#fechar" title="Fechar" class="fechar">X</a>
                                            <h2 class="class-modal-title">Entraremos em contato!</h2>
                                            <div class="modal-m ">
                                                <br>
                                                <p>Iremos analisar a sua proposta de evento para a regi??o, entraremos em contato para obtermos mais informa????es! Fique atento ao seu e-mail.</p>
                                            </div>
                                        </div>
                                    </div> 
                                </div>
                                <!--BoxEnd-->  
                            <div class="btn_box">
                               <a class="w" href="#open-modal" >
                                        <button type="button" class="btn btn-primary btn-block mb-4">Enviar para an??lise</button>
                                    </a>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="container_cadastropf">
                        <div id="cadastropf">
                            <img src="img/logo_cadastropf.png" alt="">
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
                <li class="list-inline-item"><a href="#">Polit??cas de privacidade</a></li>
            </ul>
            <p class="copyright">Orion?? 2022</p>
        </footer>
    </div>
    <!--Footer End-->
</body>

</html>
