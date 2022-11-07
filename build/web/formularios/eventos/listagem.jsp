<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cp" value="${pageContext.request.contextPath}"/>
<c:set var="prefixo" value="processaEventos?acao=preparar"/>
<!DOCTYPE html>

<html>
  <head>
    <title>Eventos Cadastrados</title>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet"
          href="${cp}/css/estilos.css"/>
  </head>

  <body>

    <h1>Eventos Cadastrados</h1>

    <p>
      <a href="${cp}/formularios/eventos/novo.jsp">
        Novo Evento
      </a>
    </p>

    <table class="tabelaListagem">
      <thead>
        <tr>
          <th>Nome do Evento </th>
          <th>Localização </th>
          <th>Data do Evento </th>
          <th>Responsavel pelo evento </th>
          <th>Observação do evento </th>
          <th>Alterar</th>
          <th>Excluir</th>
        </tr>
      </thead>
      <tbody>

        <jsp:useBean
            id="servicos"
            scope="page"
            class="cadastroeventos.servicos.EventosServices"/>

        <c:forEach items="${servicos.todos}" var="eventos">
          <tr>
            <td>${eventos.nome}</td>
            <td>${eventos.localizacao}</td>
            <td>${eventos.data}</td>
            <td>${eventos.responsavel}</td>
            <td>${eventos.obs}</td>
            <td>
            </td>
          </tr>
        </c:forEach>
      </tbody>
    </table>

    <p>
      <a href="${cp}/formularios/eventos/novo.jsp">
        Novo Evento
      </a>
    </p>

    <p><a href="${cp}/index.jsp">Tela Principal</a></p>

  </body>

</html>
