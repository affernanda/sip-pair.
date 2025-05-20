<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="JavaBeans.Usuario, JavaBeans.Review, java.util.List" %>
<%
    Usuario user = new Usuario();
    List<Review> reviews = user.listarTodosReviews();
%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="../css/pagina_item.css">
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100..900;1,100..900&display=swap');
        </style>
        <title>sip&pair</title>
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
            <section class="carousel">
                <button class="carousel-btn prev">❮</button>
                <div class="carousel-container">
                    <div class="carousel-item active">
                        <img src="../img/A_small_cup_of_coffee.JPG" alt="Café preto">
                        <div class="carousel-text">
                            <h2>Café preto ★★★</h2>
                            <span class="badge">arábico</span>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce vulputate leo sed facilisis varius...</p>
                            <h2>
                                <a href="favoritar.jsp?imagem=/web/img/A_small_cup_of_coffee.JPG">
                                    <span style="color: #b02a2a;">♡ Favoritado️</span>
                                </a>
                            </h2>
                        </div>
                    </div>

                    <div class="carousel-item">
                        <img src="../img/capuccino.jpg" alt="Café com leite">
                        <div class="carousel-text">
                            <h2>Café com leite ★★</h2>
                            <span class="badge">blend</span>
                            <p>Uma mistura suave de café com leite, ideal para o café da manhã...</p>
                            <h2>
                                <a href="favoritar.jsp?imagem=/web/img/capuccino.jpg">
                                    <span style="color: #ffffff;">♡ Favoritar️</span>
                                </a>
                            </h2>
                        </div>
                    </div>

                    <div class="carousel-item">
                        <img src="../img/Espresso.jpg" alt="Café espresso">
                        <div class="carousel-text">
                            <h2>Expresso forte ★★★★</h2>
                            <span class="badge">robusta</span>
                            <p>Para quem gosta de intensidade e sabor marcante...</p>
                            <h2>
                                <a href="favoritar.jsp?imagem=/web/img/Espresso.jpg">
                                    <span style="color: #b02a2a;">❤️</span>
                                </a>
                            </h2>
                        </div>
                    </div>
                </div>
                <button class="carousel-btn next">❯</button>
            </section>

            <section class="combina">
                <h3>isso combina com...</h3>
                <div class="combina-itens">
                    <img src="../img/A_small_cup_of_coffee.JPG" alt="Pão de queijo">
                    <img src="../img/A_small_cup_of_coffee.JPG" alt="Bolo de fubá">
                    <img src="../img/A_small_cup_of_coffee.JPG" alt="Biscoito amanteigado">
                </div>
            </section>

            <section class="comentarios">
                <h3>Comentários</h3>
                <div class="criar-publicacao">
                    <a href="../comentario.html">Criar comentário</a>
                </div>
                <ul class="comentarios-lista">
                    <% for (Review r : reviews) {%>
                    <li>
                        <img src="../img/A_small_cup_of_coffee.JPG" alt="avatar" />
                        <div>
                            <strong>@<%= r.nomeUsuario%></strong>
                            <p><%= r.comentario%></p>
                        </div>
                        <span class="stars">
                            <%
                                int nota = Integer.parseInt(r.nota);
                                for (int i = 0; i < nota; i++) {
                                    out.print("★");
                                }
                                for (int i = nota; i < 5; i++) {
                                    out.print("☆");
                                }
                            %>
                        </span>
                    </li>
                    <% }%>
                </ul>
            </section>
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
    <script src="../js/carrossel.js" defer></script>
</html>
