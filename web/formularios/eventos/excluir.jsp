<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>

<html>
  <head>
    <title>Excluir Evento</title>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet"
          href="${cp}/css/estilos.css"/>
  </head>

  <body>

    <h1>Excluir Evento</h1>

    <form method="post" action="${cp}/processaEventos">

      <input name="acao" type="hidden" value="excluir"/>
      <input name="id" type="hidden" value="${requestScope.eventos.id}"/>

      <table>
        <tr>
          <td class="alinharDireita">Nome do Evento:</td>
          <td>${requestScope.eventos.nome}</td>
        </tr>
        <tr>
          <td class="alinharDireita">Localização:</td>
          <td>${requestScope.eventos.localizacao}</td>
        </tr>
        <tr>
          <td class="alinharDireita">Data do Evento:</td>
          <td>${requestScope.eventos.data}</td>
        </tr>
        <tr>
          <td class="alinharDireita">Responsavel pelo evento:</td>
          <td>${requestScope.eventos.responsavel}</td>
        </tr>
        <tr>
          <td class="alinharDireita">Observação do evento:</td>
          <td>${requestScope.eventos.obs}</td>
        </tr>
        <tr>
          <td>
            <a href="${cp}/formularios/eventos/listagem.jsp">Voltar</a>
          </td>
          <td class="alinharDireita">
            <input type="submit" value="Excluir"/>
          </td>
        </tr>
      </table>

    </form>

  </body>

</html>
