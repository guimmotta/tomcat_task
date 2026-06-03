package br.com.cadastrotomcat.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "HomeServlet", urlPatterns = "/cadastrar")
public class HomeServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        String nome = request.getParameter("nome");
        String email = request.getParameter("email");

        if (nome == null || nome.trim().isEmpty() || email == null || email.trim().isEmpty()) {
            request.setAttribute("erro", "Preencha todos os campos antes de enviar.");
            request.getRequestDispatcher("/index.jsp").forward(request, response);
            return;
        }

        request.setAttribute("nome", nome.trim());
        request.setAttribute("email", email.trim());

        request.getRequestDispatcher("/resultado.jsp").forward(request, response);
    }
}
