<%-- 
    Document   : perfilPJ
    Created on : 7 de nov. de 2022, 11:13:11
    Author     : Amanda e Lucas
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
        <link rel="icon" type="image/jpg" href="${cp}/img/icon.png" />
        <title>Perfil da sua empresa</title>
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
        <link rel='stylesheet' type='text/css' media='screen' href='${cp}/css/style.css'>
        <script src='main.js'></script>
    </head>

    <body>

        <!-- Navbar start -->
        <nav class="navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header logo">
                    <a class="navbar-brand" href="${cp}/index_logado.jsp">PlaceR</a>
                </div>
                <!--
           <ul class="nav navbar-nav">  
            <li class="active"><a href="#">Home</a></li>      
            <li><a href="#">Page 1</a></li>
            <li><a href="#">Page 2</a></li>    
          </ul>
                -->
                <ul class="nav navbar-nav navbar-right">
                    <li><a href=""><span class="glyphicon glyphicon-envelope"></span></a></li>
                    <li><a href="${cp}/index.jsp"><span class="glyphicon glyphicon-log-in"></span> Sair</a></li>
                    <!-- Depois de logado:
            <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Sair</a></li>
                    -->
                </ul>
            </div>
        </nav>
        <!-- Navbar end -->

        <!--Info Section Start-->
        <section class="info_section">
            <div class="container-info-perfil-pj">


                <a class="w" href="#open-modal">
                    <div class="img-edit">

                        <img src="${cp}/img/icones/icon_edit.png" alt="">
                    </div>
                </a>
                <br>
                <div id="open-modal" class="class-modal">
                    <div>
                        <a href="#fechar" title="Fechar" class="fechar">X</a>
                        <h2 class="class-modal-title">Edite suas informações!</h2>

                        <forms class="modal-m" action="${cp}/processaEmpresa">

                            <input type="hidden" name="acao" value="alterar">
                            <label>Foto da empresa</label>
                            <input type="file" name="arquivos" class="input-text"><br>

                            <p>E-mail</p>
                            <input type="email" id="email" required="required" class="input-text"><br><br>


                            <p>Telefone para contato</p>
                            <input type="number" id="telefone" required="required" class="input-number"><br><br>


                            <p>Informações sobre o estabelecimento</p>
                            <input type="text" id="informacoes_adc" required="required" class="input-text"><br><br>
                            
                            <input class="btn-confirm" type="submit" value="Confirmar">

                        </forms>
                    </div>
                </div>

                <div class="box-i box-1">
                    <h3>Quintal Bar</h3>
                    <div class="size-img-inf">
                        <img src="img/img_logo_quintal.png" alt="">
                    </div>
                </div>
                <div class="box-i box-2">
                    <h3>Informações</h3>
                    <div>
                        <p style="font-size: 12px;">O menu deste pub & bar é recomendado para os amantes da culinária.
                            Espere um ambiente acolhedor neste pub & bar. Pub & bar Quintal tem classificação 4.6 no sistema
                            de avaliação do Google.</p>

                    </div>
                    <h4>Endereço:</h4>
                    <p style="font-size: 12px;">Av. Dr. Durval Nicolau, 1210 - Parque Colina da Mantiqueira, São João da Boa
                        Vista - SP, 13874-371</p>
                    <div class="size-img-inf">
                        <iframe
                            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3700.021870295393!2d-46.77308258505105!3d-21.972123685494992!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94c9cb56eb03054f%3A0x96255ba3c0af6042!2sQuintal!5e0!3m2!1spt-BR!2sbr!4v1656470391144!5m2!1spt-BR!2sbr"
                            style="width: 100%; height: 300px; border:0;" allowfullscreen="" loading="lazy"
                            referrerpolicy="no-referrer-when-downgrade"></iframe>
                    </div>
                </div>
                <div class="box-i box-3">
                    <h4>Avaliações</h4>
                    <span class="fa fa-star checked"></span>
                    <span class="fa fa-star checked"></span>
                    <span class="fa fa-star checked"></span>
                    <span class="fa fa-star"></span>
                    <span class="fa fa-star"></span>
                    <p class="avaliacao">Classificação de 4.1 baseado em 254 avaliações</p>

                </div>
                <!--Se for um restaurante a funcionalidade desse botão de reserva-->
                <!--
                <div class="box-i box-4">
                    <div>
                        <h6>Gostou do local? Pretende visitá-lo? Realize sua reserva</h6>
                        <button type="button" class="btn-reserv-info">Reservar</button>
                    </div>
                </div>
                -->
            </div>

            <!--Modal ERP Start-->


            <!--Modal ERP End-->
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
