<%-- 
    Document   : check
    Created on : 7 de nov. de 2022, 11:03:10
    Author     : Amanda e Lucas
--%>
<%@page import="login.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cp" value="${pageContext.request.contextPath}"/>

<%
    User us = new User();
    RequestDispatcher disp = null;
    String login = request.getParameter("login");
    String senha = request.getParameter("senha");
    boolean status = us.verificarUsuario(login, senha);

    if (status) {
        out.println("Login feito com sucesso");
        if (us.pf) {
            disp = request.getRequestDispatcher("/");
            disp.forward(request, response);

        } else if (us.pj) {
            disp = request.getRequestDispatcher("/");
            disp.forward(request, response);
        }
    } else {
        out.println("Deu ruim!");
        disp = request.getRequestDispatcher("");
    }

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
    </body>
</html>
