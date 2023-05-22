<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Formulário</title>
</head>
<body>
    <form action="MeuServlet" method="post">
        <h2>Informações pessoais:</h2>
        <div>
            <label for="nome">Nome:</label>
            <input type="text" name="nome" id="nome">
        </div>
        <br>
        <div>
            <label for="idade">Idade:</label>
            <input type="number" name="idade" id="idade">
        </div>
        <br>
        <h2>Informações acadêmicas:</h2>
        <div>
            <label for="curso">Curso:</label>
            <input type="text" name="curso" id="curso">
        </div>
        <br>
        <div>
            <label for="instituicao">Instituição:</label>
            <input type="text" name="instituicao" id="instituicao">
        </div>
        <br>

        <h2>Informações profissionais:</h2>
        <div>
            <label for="empresa">Empresa:</label>
            <input type="text" name="empresa" id="empresa">
        </div>
        <br>
        <div>
            <label for="cargo">Cargo:</label>
            <input type="text" name="cargo" id="cargo">
        </div>
        <br>
        

        <br>
        <input type="submit" value="Enviar">
    </form>
</body>
</html>
