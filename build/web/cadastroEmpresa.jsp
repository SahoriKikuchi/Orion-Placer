<%-- 
    Document   : cadastroEmpresa
    Created on : 2 de nov. de 2022, 19:59:33
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
                        Cadastre sua empresa!
                    </h2>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form_container">
                            <form action="${cp}/processaEmpresa" method="POST" enctype="multipart/form-data">
                                <input type="hidden" name="acaoo" value="inserir">
                                <div>
                                    <label for="">Nome da empresa</label>
                                    <input type="text" class="form-control" 
                                           placeholder=""
                                           maxlength="64"
                                           name="nome"/>
                                </div>
                                <div>
                                    <label for="">CNPJ</label>
                                    <input type="text" class="form-control" 
                                           placeholder="XX.XXX.XXX/0001-XX."
                                           length="20"
                                           name="cnpj"/>
                                </div>
                                <div>
                                    <label for="">Telefone para contato</label>
                                    <input type="number" class="form-control" 
                                           placeholder="(00) 90000-0000"
                                           length="14"
                                           name="tel"/>
                                </div>
                                <div>
                                    <label for="">CEP</label>
                                    <input type="text" class="form-control" 
                                           placeholder="00000-000"
                                           length="10"
                                           name="cep"/>
                                </div>
                                <div>
                                    <label for="">Endere??o</label>
                                    <input type="text" class="form-control" 
                                           placeholder=""
                                           maxlength="255"
                                           name="endereco"/>
                                </div>
                                <div>

                                    <label for="">Classifica????o</label>
                                    <jsp:useBean
                                        id="servicos"
                                        scope="page"
                                        class="cadastroclientes.servicos.ClassificacaoServices"/>
                                    <select class="form-control nice-select wide" name="idClassificacao" required>
                                        <c:forEach items="${servicos.todos}" var="classificacao">
                                            <option value="${classificacao.id}">
                                                ${classificacao.classificacao}
                                            </option>
                                        </c:forEach>
<!--                                        <option value="" disabled selected> Como voc?? classifica a sua empresa? </option>
                                        <option value="1"> Pub & Bar </option>
                                        <option value="2"> Eventos Universit??rios </option>
                                        <option value="3"> Restaurantes </option>
                                        <option value="4"> Atividade Recreativa </option>-->
                                    </select>
                                </div>
                                <div>
                                    <label for="">E-mail</label>
                                    <input type="email" class="form-control" placeholder="" name="email"/>
                                </div>
                                <div>
                                    <label for="">Senha</label>
                                    <input type="password" class="form-control" 
                                           placeholder="" 
                                           minlength="8"
                                           maxlength="16"
                                           name="senha"/>
                                </div>
                                <div>
                                    <label for="">Confirme sua senha</label>
                                    <input type="password" class="form-control" 
                                           placeholder="" 
                                           minlength="8"
                                           maxlength="16"
                                           name="cSenha"/>
                                </div>
                                <div>
                                    <label for="">Imagem da sua empresa: </label>
                                    <input type="file" name="arquivos" class="btn" multiple />
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
                                <img src="${cp}/img/logo_cadastropj.png" alt="">
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