<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Outra Página</title>
</head>
<body>
    <%-- Recupera os cookies --%>
    <% 
    String output = "";
    Cookie[] cookies = request.getCookies();
    if (cookies != null) {
        for (Cookie cookie : cookies) {
            String chave = cookie.getName();
            String valor = cookie.getValue();
            
            if (chave.equals("Nome") || chave.equals("Idade")) {
                output += "Informações pessoais - " + chave + ": " + valor + "<br>";
            } else if (chave.equals("Curso") || chave.equals("Instituicao")) {
                output += "Informações acadêmicas - " + chave + ": " + valor + "<br>";
            } else if (chave.equals("Empresa") || chave.equals("Cargo")) {
                output += "Informações profissionais - " + chave + ": " + valor + "<br>";
            }
        }
    } else {
        output = "Nenhum cookie encontrado.";
    }
    %>

    <h2>Informações dos Cookies:</h2>
    <p><%= output %></p>
</body>
</html>
