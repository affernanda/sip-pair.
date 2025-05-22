<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="JavaBeans.Usuario"%>
<%
    Usuario user = new Usuario();

    if (user.statusSQL != null) {
        out.println(user.statusSQL);
    }

    user.email = request.getParameter("email");
    boolean emailValido = user.checarEmail();

    if (emailValido) {
        session.setAttribute("pkuser", user.pkuser);
        response.sendRedirect(request.getContextPath() + "/mudar_senha.html");
    } else {
        out.println("<script>alert('Email não cadastrado!'); window.location.href='" + request.getContextPath() + "/forgot.html';</script>");
    }
%>
