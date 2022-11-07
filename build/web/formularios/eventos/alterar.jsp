<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>

<html>
  <head>
    <title>Alterar Evento</title>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet"
          href="${cp}/css/estilos.css"/>
  </head>

  <body>

    <h1>Alterar Evento</h1>

    <form method="post"  action="${cp}/processaEventos">

      <input name="acao" type="hidden" value="alterar"/>
      <input name="id" type="hidden" value="${requestScope.eventos.id}"/>

      <table>
        <tr>
          <td class="alinharDireita">Nome do evento:</td>
          <td>
            <input name="nome"
                   type="text"
                   size="20"
                   maxlength="64"
                   required
                   value="${requestScope.eventos.nome}"/>
          </td>
        </tr>
        <tr>
          <td class="alinharDireita">Localização:</td>
          <td>
            <input name="localização"
                   type="text"
                   size="20"
                   maxlength="100"
                   required
                   value="${requestScope.eventos.localizacao}"/>
          </td>
        </tr>
         <tr>
          <td class="alinharDireita">Data do Evento:</td>
          <td>
            <fmt:formatDate 
                pattern="yyyy-MM-dd"
                value="${requestScope.eventos.data}"
                var="data" scope="page"/>
            <input name="data"
                   type="date"
                   size="8"
                   placeholder="dd/mm/yyyy"
                   required
                   value="${data}"/>
          </td>
        </tr>
        <tr>
          <td class="alinharDireita">Responsavel pelo evento:</td>
          <td>
            <input name="responsavel"
                   type="text"
                   size="20"
                   maxlength="80"
                   required
                   value="${requestScope.eventos.responsavel}"/>
          </td>
        </tr>
        <tr>
          <td class="alinharDireita">Observação do evento:</td>
          <td>
            <input name="obs"
                   type="text"
                   size="20"
                   maxlength="100"
                   required
                   value="${requestScope.eventos.obs}"/>
          </td>
        </tr>        
        <tr>
          <td>
            <a href="${cp}/formularios/eventos/listagem.jsp">Voltar</a>
          </td>
          <td class="alinharDireita">
            <input type="submit" value="Alterar"/>
          </td>
        </tr>
      </table>

    </form>

  </body>

</html>
