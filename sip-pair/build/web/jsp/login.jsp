<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="JavaBeans.Usuario" %>
<%
    session = request.getSession();
    String email = request.getParameter("email");
    String senha = request.getParameter("senha");
    
    Usuario user = new Usuario();
    
    user.email = email;
    user.senha = senha;
    
    if (user.checarLogin()) {
        session.setAttribute("nome", user.nome);
        session.setAttribute("email", user.email);
        session.setAttribute("pkuser", user.pkuser);

        response.sendRedirect(request.getContextPath() + "/index_logado.html");
    } else {
        // Se falhar, exibe mensagem de erro
        out.println("<script>alert('Email ou senha incorretos!')</script>");
        response.sendRedirect(request.getContextPath() + "/login.html");
    }
%>