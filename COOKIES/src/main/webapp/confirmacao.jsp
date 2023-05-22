<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Confirmação</title>
</head>
<body>
    <h2>Confirmação</h2>

    <%-- Exibe a mensagem de confirmação --%>
    <p><%= request.getAttribute("mensagem") %></p>

    <%-- Link para acessar manualmente o arquivo "dados.jsp" --%>
    <p>Acesse os dados <a href="dados.jsp">aqui</a>.</p>
</body>
</html>
