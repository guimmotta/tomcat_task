<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastro Tomcat</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">
</head>
<body>
<main class="container">
    <section class="card">
        <span class="tag">Servlet + JSP + Tomcat</span>
        <h1>Cadastro simples</h1>
        <p>Preencha os dados abaixo para testar o envio do formulário para um Servlet.</p>

        <% if (request.getAttribute("erro") != null) { %>
            <div class="alert"><%= request.getAttribute("erro") %></div>
        <% } %>

        <form action="${pageContext.request.contextPath}/cadastrar" method="post">
            <label for="nome">Nome</label>
            <input id="nome" name="nome" type="text" placeholder="Digite seu nome">

            <label for="email">E-mail</label>
            <input id="email" name="email" type="email" placeholder="Digite seu e-mail">

            <button type="submit">Enviar cadastro</button>
        </form>
    </section>
</main>
</body>
</html>
