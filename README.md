# Cadastro Tomcat - Servlet + JSP

Aplicação Java Web simples e leve, criada com **Servlet**, **JSP**, **Maven** e deploy em **Apache Tomcat**.

O objetivo do projeto é demonstrar o fluxo básico de uma aplicação Java Web tradicional: uma página JSP envia dados para um Servlet, o Servlet processa as informações e retorna uma página de resultado.

## Tecnologias utilizadas

- Java 17
- Maven
- Jakarta Servlet
- JSP
- HTML
- CSS
- Apache Tomcat
- WAR

## Funcionalidades

- Página inicial com formulário
- Envio de nome e e-mail
- Validação simples de campos obrigatórios
- Servlet recebendo dados via POST
- Página de resultado exibindo as informações enviadas
- Empacotamento em arquivo `.war`
- Deploy no Apache Tomcat

## Estrutura do projeto

```txt
cadastro-tomcat-servlet-jsp/
 ├── pom.xml
 └── src/
     └── main/
         ├── java/
         │   └── br/com/cadastrotomcat/
         │       └── controller/
         │           └── HomeServlet.java
         │
         └── webapp/
             ├── index.jsp
             ├── resultado.jsp
             ├── assets/
             │   └── css/
             │       └── style.css
             └── WEB-INF/
                 └── web.xml
```

## Fluxo da aplicação

```txt
index.jsp
   ↓ formulário POST
HomeServlet
   ↓ processa os dados
resultado.jsp
   ↓ exibe resposta
Apache Tomcat
```

## Como gerar o WAR

Na raiz do projeto, execute:

```bash
mvn clean package
```

Caso o Maven não esteja configurado no PATH, é possível usar o Maven interno do IntelliJ:

```powershell
& "C:\Program Files\JetBrains\IntelliJ IDEA 2026.1.2\plugins\maven\lib\maven3\bin\mvn.cmd" clean package
```

Após o build, o arquivo será gerado em:

```txt
target/CadastroTomcat.war
```

## Como fazer deploy no Tomcat

1. Gere o arquivo `.war` com Maven.
2. Copie o arquivo:

```txt
target/CadastroTomcat.war
```

3. Cole na pasta `webapps` do Tomcat:

```txt
apache-tomcat/webapps
```

4. Inicie o Tomcat:

```bash
startup.bat
```

ou, no Windows:

```powershell
& "C:\caminho\do\apache-tomcat\bin\startup.bat"
```

## Como acessar

Depois do deploy, acesse:

```txt
http://localhost:8080/CadastroTomcat
```

ou:

```txt
http://localhost:8080/CadastroTomcat/index.jsp
```

## Autor

Desenvolvido por **Aguinaldo Motta**.
