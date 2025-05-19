<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page import="JavaBeans.Comentario" %>
<%@ page import="java.util.List" %>
<%
    session = request.getSession(false);
    String nome = "";
    String email = "";
    String idade = "";
    Integer pkuser = null;

    if (session != null) {
        nome = (String) session.getAttribute("nome");
        email = (String) session.getAttribute("email");
        pkuser = (Integer) session.getAttribute("pkuser");
        idade = (String) session.getAttribute("idade");

    } else {
        response.sendRedirect(request.getContextPath() + "/login.jsp");
    }
    
    Comentario review = new Comentario();
    List<Comentario> cs = review.listarComentarios(pkuser);
%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>sip-n-pair.</title>
        <link rel="stylesheet" href="../css/perfil.css">
        <link href="https://fonts.googleapis.com/css2?family=EB+Garamond&display=swap" rel="stylesheet">
    </head>
    <body>
    <header class="topbar">
      <a href="../index_logado.html" class="logo">sip & pair.</a>

      <nav class="menu">
        <a href="../sobre_logado.html" class="active">Sobre Nós</a>
      </nav>

      <a href="perfil.jsp" class="profile-link">
        Perfil
      </a>
    </header>
        <main>
            <!-- Perfil -->
            <div class="perfil">
                <div class="perfil-foto">
                    <img src="../img/foto-perfil.jpg" alt="Foto de perfil">
                    <p>life is short,<br>have a sip.</p>
                </div>

                <div class="perfil-descricao">
                    <h1>@<%= nome%></h1>
                    <p>Email: <%= email%></p>
                    <p>Bem-vindo ao seu perfil personalizado!</p>
                </div>
            </div>  

            <!-- Favoritos -->
            <div class="favoritos">
                <div class="favoritos-titulo">
                    <img src="img/coracao-favoritos.png" alt="">
                    <h2>favoritos</h2>
                </div>

                <div class="favoritos-grid">

                </div>
            </div>

            <!-- Notas -->
            <div class="notas">
                <div class="notas-titulo">
                    <img src="img/estrela.png" alt="">
                    <h3>notas</h3>
                </div>

                <div class="notas-grid">
                    <% for (Comentario c : cs) {%>
                    <div class="notas-card">
                        <div class="usuario-notas">
                            <img src="../img/foto-perfil.jpg" alt="Foto" />
                            <p>@<%= nome%></p>
                        </div>
                        <div class="notas-postagem">
                            <h4><%= c.titulo%></h4>
                            <p>Nota: <%= c.nota%></p>
                            <p><%= c.comentario%></p>
                        </div>
                    </div>
                    <% } %>
                    <% if (cs.isEmpty()) { %>
                    <p>Você ainda não fez nenhum comentário.</p>
                    <% }%>
                </div>
            </div>
        </main>

        <footer>
            <div class="footer-englobamento">
                <div class="titulo-footer">
                    <a href="../index_logado.html">sip & pair.</a>
                </div>
                <div class="footer">
                    <p>Fale Conosco &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Loremipsum@outlook.com.br</p>
                </div>
            </div>
        </footer>
    </body>
</html>
