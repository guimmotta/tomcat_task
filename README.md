# Cadastro Tomcat - Servlet e JSP

Aplicação Java Web simples e leve desenvolvida com **Servlet**, **JSP**, **Maven** e deploy no **Apache Tomcat**.

O objetivo do projeto é demonstrar o fluxo básico de uma aplicação Java Web tradicional, onde uma página JSP envia dados de um formulário para um Servlet, que processa as informações e retorna uma página de resultado.

---

## Tecnologias utilizadas

- Java 11
- Jakarta Servlet
- JSP
- HTML5
- CSS3
- Maven
- Apache Tomcat 10

---

## Funcionalidades

- Página inicial com formulário de cadastro
- Envio de dados via método `POST`
- Processamento dos dados em um Servlet
- Validação simples dos campos
- Exibição de mensagem de erro caso os campos estejam vazios
- Página de resultado com os dados enviados

---

## Estrutura do projeto

```txt
cadastro-tomcat-servlet-jsp/
 ├── pom.xml
 └── src/
     └── main/
         ├── java/
         │   └── br/
         │       └── com/
         │           └── cadastrotomcat/
         │               └── controller/
         │                   └── HomeServlet.java
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

---

## Fluxo da aplicação

```txt
index.jsp
   ↓
Formulário envia dados via POST
   ↓
HomeServlet
   ↓
Validação dos dados
   ↓
resultado.jsp
```

---

## Como executar o projeto

### 1. Gerar o arquivo WAR

Na raiz do projeto, execute:

```bash
mvn clean package
```

Caso o Maven não esteja configurado no PATH, é possível usar o Maven interno do IntelliJ:

```powershell
& "C:\Program Files\JetBrains\IntelliJ IDEA 2026.1.2\plugins\maven\lib\maven3\bin\mvn.cmd" clean package
```

Após o build, o arquivo `.war` será gerado em:

```txt
target/CadastroTomcat.war
```

---

## Deploy no Apache Tomcat

### 1. Copiar o WAR

Copie o arquivo:

```txt
target/CadastroTomcat.war
```

para a pasta `webapps` do Tomcat:

```txt
apache-tomcat-10.1.55/webapps
```

---

### 2. Iniciar o Tomcat

No Windows, execute:

```bash
startup.bat
```

Ou, para acompanhar os logs no terminal:

```bash
catalina.bat run
```

---

### 3. Acessar a aplicação

Após o deploy, acesse:

```txt
http://localhost:8080/CadastroTomcat
```

---

## Observação sobre versão do Java

Este projeto foi configurado para compilar com **Java 11**, garantindo compatibilidade com o Tomcat utilizado no ambiente de execução.

No `pom.xml`, a configuração principal é:

```xml
<release>11</release>
```

Caso o Tomcat esteja rodando com Java 11, o projeto também deve ser compilado para Java 11.

---

## Exemplo de uso

1. Acesse a aplicação pelo navegador.
2. Preencha o nome e o e-mail.
3. Clique em **Enviar cadastro**.
4. O Servlet processará os dados.
5. A página de resultado exibirá as informações enviadas.

---

## Objetivo do projeto

Este projeto foi criado com foco em praticar:

- Criação de aplicação Java Web tradicional
- Uso de Servlets
- Uso de JSP
- Empacotamento `.war`
- Deploy manual no Apache Tomcat
- Estrutura básica de projeto Maven Web

---

## Autor

Desenvolvido por **Aguinaldo Motta**.
