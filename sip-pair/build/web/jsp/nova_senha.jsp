<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="JavaBeans.Usuario"%>

<%
    Usuario user = new Usuario();
    try {
        user.pkuser = (int) session.getAttribute("pkuser");
    } catch (Exception e) {
        out.println("<script>alert('Sessão expirada. Faça o processo novamente.'); window.location.href='" + request.getContextPath() + "/forgot.html';</script>");
        return;
    }
    
    user.senha = request.getParameter("senha");
    
    if(user.atualizarDados()){
        session.removeAttribute("pkuser");
        out.println("<script>alert('Senha atualizada!'); window.location.href='" + request.getContextPath() + "/index.html';</script>");
    } else {
        out.println("<script>alert('Algo deu errado, tente novamente!'); window.location.href='" + request.getContextPath() + "/mudar_senha.html' </script>");
    }
%>
