<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastro realizado</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">
</head>
<body>
<main class="container">
    <section class="card success">
        <span class="tag">Cadastro recebido</span>
        <h1>Dados enviados com sucesso!</h1>

        <div class="result-box">
            <p><strong>Nome:</strong> ${nome}</p>
            <p><strong>E-mail:</strong> ${email}</p>
        </div>

        <a class="link-button" href="${pageContext.request.contextPath}/index.jsp">Voltar</a>
    </section>
</main>
</body>
</html>
