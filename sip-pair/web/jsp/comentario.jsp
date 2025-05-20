<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="JavaBeans.Comentario" %>
<%
    Comentario review = new Comentario();
    if (review.statusSQL != null) {
        out.println(review.statusSQL);
    }
    review.pkuser = (Integer) session.getAttribute("pkuser");
    review.titulo = request.getParameter("titulo");
    review.nota = request.getParameter("nota");
    review.comentario = request.getParameter("comentario");

    review.criarComentario();
    
    if (review.statusSQL != null) {
        out.println("<script>alert('Algo deu errado, tente novamente!'); window.location.href='../comentario.html';</script>");
    } else {
        out.println("<script>alert('Comentário criado!'); window.location.href='pagina_item_logado.jsp';</script>");
    }
%>