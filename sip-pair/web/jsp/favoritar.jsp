<%@ page import="JavaBeans.Favorito" %>
<%
    String imagem = request.getParameter("imagem");
    int pkuser = (int) session.getAttribute("pkuser");

    if (imagem != null && !imagem.isEmpty()) {
        Favorito fav = new Favorito();
        fav.pkuser = pkuser;
        fav.imagem = imagem;

        if (fav.isFavoritado()) {
            fav.removerFavorito();
            if (fav.statusSQL == null) {
                out.println("<script>alert('Item removido dos favoritos!'); window.location.href='pagina_item_logado.jsp';</script>");
            } else {
                out.println("<script>alert('" + fav.statusSQL + "'); window.location.href='pagina_item_logado.jsp';</script>");
            }
        } else {
            fav.salvarFavorito();
            if (fav.statusSQL == null) {
                out.println("<script>alert('Item favoritado com sucesso!'); window.location.href='pagina_item_logado.jsp';</script>");
            } else {
                out.println("<script>alert('" + fav.statusSQL + "'); window.location.href='pagina_item_logado.jsp';</script>");
            }
        }
    } else {
        out.println("<script>alert('Imagem inválida!'); window.location.href='pagina_item_logado.jsp';</script>");
    }
%>
