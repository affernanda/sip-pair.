<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.HttpSession"%>
<%
    session = request.getSession(false);
    if (session != null) {
        out.println("<script>alert('Deslogado!');</script>");
        session.invalidate();

    }
    response.sendRedirect("../index.html");
%>
