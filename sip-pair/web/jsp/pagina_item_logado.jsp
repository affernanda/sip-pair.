<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="JavaBeans.Usuario, JavaBeans.Review, JavaBeans.Favorito, java.util.List" %>
<%
    Usuario user = new Usuario();
    List<Review> reviews = user.listarTodosReviews();

    int pkuser = (int) session.getAttribute("pkuser");
    Favorito favChecker = new Favorito();
    favChecker.pkuser = pkuser;
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
                        <img src="../img/Espresso.jpg" alt="Café espresso">
                        <div class="carousel-text">
                            <h2>Expresso forte</h2>
                            <span class="badge">robusta</span>
                            <p>Para quem gosta de intensidade e sabor marcante...</p>
                            <%
                                favChecker.imagem = "Espresso.jpg";
                                boolean isFavEspresso = favChecker.isFavoritado();
                            %>
                            <h2>
                                <a href="favoritar.jsp?imagem=Espresso.jpg">
                                    <% if (isFavEspresso) { %>
                                    <span style="color: #b02a2a;">♡ Favoritado️</span>
                                    <% } else { %>
                                    <span style="color: #ffffff;">♡ Favoritar️</span>
                                    <% } %>
                                </a>
                            </h2>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="../img/cold-brew.jpg" alt="Cold Brew">
                        <div class="carousel-text">
                            <h2>Cold Brew</h2>
                            <span class="badge">suave</span>
                            <p>Extraído a frio para um sabor leve e refrescante.</p>
                            <%
                                favChecker.imagem = "cold-brew.jpg";
                                boolean isFavColdBrew = favChecker.isFavoritado();
                            %>
                            <h2>
                                <a href="favoritar.jsp?imagem=cold-brew.jpg">
                                    <% if (isFavColdBrew) { %>
                                    <span style="color: #b02a2a;">♡ Favoritado️</span>
                                    <% } else { %>
                                    <span style="color: #ffffff;">♡ Favoritar️</span>
                                    <% } %>
                                </a>
                            </h2>
                        </div>
                    </div>

                    <div class="carousel-item">
                        <img src="../img/capuccino.jpg" alt="Capuccino Clássico">
                        <div class="carousel-text">
                            <h2>Capuccino Clássico</h2>
                            <span class="badge">cremoso</span>
                            <p>Espuma aveludada com o equilíbrio perfeito de café e leite.</p>
                            <%
                                favChecker.imagem = "capuccino.jpg";
                                boolean isFavCapuccinoClassico = favChecker.isFavoritado();
                            %>
                            <h2>
                                <a href="favoritar.jsp?imagem=capuccino.jpg">
                                    <% if (isFavCapuccinoClassico) { %>
                                    <span style="color: #b02a2a;">♡ Favoritado️</span>
                                    <% } else { %>
                                    <span style="color: #ffffff;">♡ Favoritar️</span>
                                    <% } %>
                                </a>
                            </h2>
                        </div>
                    </div>

                    <div class="carousel-item">
                        <img src="../img/etiopesidamo.jpg" alt="Café Etíope Sidamo">
                        <div class="carousel-text">
                            <h2>Café Etíope Sidamo</h2>
                            <span class="badge">arábica</span>
                            <p>Sabor floral e cítrico de uma das regiões mais tradicionais da Etiópia.</p>
                            <%
                                favChecker.imagem = "etiopesidamo.jpg";
                                boolean isFavCafeEtiopicoSidamo = favChecker.isFavoritado();
                            %>
                            <h2>
                                <a href="favoritar.jsp?imagem=etiopesidamo.jpg">
                                    <% if (isFavCafeEtiopicoSidamo) { %>
                                    <span style="color: #b02a2a;">♡ Favoritado️</span>
                                    <% } else { %>
                                    <span style="color: #ffffff;">♡ Favoritar️</span>
                                    <% } %>
                                </a>
                            </h2>
                        </div>
                    </div>

                    <div class="carousel-item">
                        <img src="../img/Mocha.jpg" alt="Mocha Belga">
                        <div class="carousel-text">
                            <h2>Mocha Belga</h2>
                            <span class="badge">achocolatado</span>
                            <p>Uma combinação deliciosa de café e chocolate belga.</p>
                            <%
                                favChecker.imagem = "Mocha.jpg";
                                boolean isFavMochaBelga = favChecker.isFavoritado();
                            %>
                            <h2>
                                <a href="favoritar.jsp?imagem=Mocha.jpg">
                                    <% if (isFavMochaBelga) { %>
                                    <span style="color: #b02a2a;">♡ Favoritado️</span>
                                    <% } else { %>
                                    <span style="color: #ffffff;">♡ Favoritar️</span>
                                    <% } %>
                                </a>
                            </h2>
                        </div>
                    </div>

                    <div class="carousel-item">
                        <img src="../img/FlatWhite.jpg" alt="Flat White Australiano">
                        <div class="carousel-text">
                            <h2>Flat White Australiano</h2>
                            <span class="badge">aveludado</span>
                            <p>Leve, cremoso e suave, com uma base de espresso duplo.</p>
                            <%
                                favChecker.imagem = "FlatWhite.jpg";
                                boolean isFavFlatWhiteAustraliano = favChecker.isFavoritado();
                            %>
                            <h2>
                                <a href="favoritar.jsp?imagem=FlatWhite.jpg">
                                    <% if (isFavFlatWhiteAustraliano) { %>
                                    <span style="color: #b02a2a;">♡ Favoritado️</span>
                                    <% } else { %>
                                    <span style="color: #ffffff;">♡ Favoritar️</span>
                                    <% } %>
                                </a>
                            </h2>
                        </div>
                    </div>

                    <div class="carousel-item">
                        <img src="../img/cha-verde.jpg" alt="Chá Verde Japonês Sencha">
                        <div class="carousel-text">
                            <h2>Chá Verde Japonês Sencha</h2>
                            <span class="badge">antioxidante</span>
                            <p>Chá verde tradicional do Japão, refrescante e saudável.</p>
                            <%
                                favChecker.imagem = "cha-verde.jpg";
                                boolean isFavChaVerdeJaponesSencha = favChecker.isFavoritado();
                            %>
                            <h2>
                                <a href="favoritar.jsp?imagem=cha-verde.jpg">
                                    <% if (isFavChaVerdeJaponesSencha) { %>
                                    <span style="color: #b02a2a;">♡ Favoritado️</span>
                                    <% } else { %>
                                    <span style="color: #ffffff;">♡ Favoritar️</span>
                                    <% } %>
                                </a>
                            </h2>
                        </div>
                    </div>

                    <div class="carousel-item">
                        <img src="../img/camomila.jpg" alt="Chá de Camomila">
                        <div class="carousel-text">
                            <h2>Chá de Camomila</h2>
                            <span class="badge">calmante</span>
                            <p>Perfeito para relaxar e aliviar o estresse.</p>
                            <%
                                favChecker.imagem = "camomila.jpg";
                                boolean isFavChaDeCamomila = favChecker.isFavoritado();
                            %>
                            <h2>
                                <a href="favoritar.jsp?imagem=camomila.jpg">
                                    <% if (isFavChaDeCamomila) { %>
                                    <span style="color: #b02a2a;">♡ Favoritado️</span>
                                    <% } else { %>
                                    <span style="color: #ffffff;">♡ Favoritar️</span>
                                    <% } %>
                                </a>
                            </h2>
                        </div>
                    </div>

                    <div class="carousel-item">
                        <img src="../img/cha-preto.jpg" alt="Chá Preto Darjeeling">
                        <div class="carousel-text">
                            <h2>Chá Preto Darjeeling</h2>
                            <span class="badge">intenso</span>
                            <p>Chá preto de alta qualidade com sabor delicado e floral.</p>
                            <%
                                favChecker.imagem = "cha-preto.jpg";
                                boolean isFavChaPretoDarjeeling = favChecker.isFavoritado();
                            %>
                            <h2>
                                <a href="favoritar.jsp?imagem=cha-preto.jpg">
                                    <% if (isFavChaPretoDarjeeling) { %>
                                    <span style="color: #b02a2a;">♡ Favoritado️</span>
                                    <% } else { %>
                                    <span style="color: #ffffff;">♡ Favoritar️</span>
                                    <% } %>
                                </a>
                            </h2>
                        </div>
                    </div>

                    <div class="carousel-item">
                        <img src="../img/Cha-de-hibisco.jpg" alt="Chá de Hibisco">
                        <div class="carousel-text">
                            <h2>Chá de Hibisco</h2>
                            <span class="badge">refrescante</span>
                            <p>Com sabor levemente ácido e propriedades antioxidantes.</p>
                            <%
                                favChecker.imagem = "Cha-de-hibisco.jpg";
                                boolean isFavChaDeHibisco = favChecker.isFavoritado();
                            %>
                            <h2>
                                <a href="favoritar.jsp?imagem=Cha-de-hibisco.jpg">
                                    <% if (isFavChaDeHibisco) { %>
                                    <span style="color: #b02a2a;">♡ Favoritado️</span>
                                    <% } else { %>
                                    <span style="color: #ffffff;">♡ Favoritar️</span>
                                    <% } %>
                                </a>
                            </h2>
                        </div>
                    </div>

                    <div class="carousel-item">
                        <img src="../img/oolong.jpg" alt="Chá Oolong Taiwanês">
                        <div class="carousel-text">
                            <h2>Chá Oolong Taiwanês</h2>
                            <span class="badge">equilibrado</span>
                            <p>Sabor entre chá verde e preto, com aroma frutado.</p>
                            <%
                                favChecker.imagem = "oolong.jpg";
                                boolean isFavChaOolongTaiwanes = favChecker.isFavoritado();
                            %>
                            <h2>
                                <a href="favoritar.jsp?imagem=oolong.jpg">
                                    <% if (isFavChaOolongTaiwanes) { %>
                                    <span style="color: #b02a2a;">♡ Favoritado️</span>
                                    <% } else { %>
                                    <span style="color: #ffffff;">♡ Favoritar️</span>
                                    <% } %>
                                </a>
                            </h2>
                        </div>
                    </div>

                    <div class="carousel-item">
                        <img src="../img/ervadoce.jpg" alt="Chá de Erva-Doce">
                        <div class="carousel-text">
                            <h2>Chá de Erva-Doce</h2>
                            <span class="badge">digestivo</span>
                            <p>Tradicional chá para auxiliar na digestão e relaxamento.</p>
                            <%
                                favChecker.imagem = "ervadoce.jpg";
                                boolean isFavChaDeErvaDoce = favChecker.isFavoritado();
                            %>
                            <h2>
                                <a href="favoritar.jsp?imagem=ervadoce.jpg">
                                    <% if (isFavChaDeErvaDoce) { %>
                                    <span style="color: #b02a2a;">♡ Favoritado️</span>
                                    <% } else { %>
                                    <span style="color: #ffffff;">♡ Favoritar️</span>
                                    <% } %>
                                </a>
                            </h2>
                        </div>
                    </div>

                    <div class="carousel-item">
                        <img src="../img/carbernet.jpg" alt="Cabernet Sauvignon">
                        <div class="carousel-text">
                            <h2>Cabernet Sauvignon</h2>
                            <span class="badge">tinto</span>
                            <p>Vinho encorpado com notas de frutas vermelhas e especiarias.</p>
                            <%
                                favChecker.imagem = "carbernet.jpg";
                                boolean isFavCabernetSauvignon = favChecker.isFavoritado();
                            %>
                            <h2>
                                <a href="favoritar.jsp?imagem=carbernet.jpg">
                                    <% if (isFavCabernetSauvignon) { %>
                                    <span style="color: #b02a2a;">♡ Favoritado️</span>
                                    <% } else { %>
                                    <span style="color: #ffffff;">♡ Favoritar️</span>
                                    <% } %>
                                </a>
                            </h2>
                        </div>
                    </div>

                    <div class="carousel-item">
                        <img src="../img/blanc.jpg" alt="Sauvignon Blanc">
                        <div class="carousel-text">
                            <h2>Sauvignon Blanc</h2>
                            <span class="badge">branco</span>
                            <p>Vinho fresco, cítrico e com toque herbáceo.</p>
                            <%
                                favChecker.imagem = "blanc.jpg";
                                boolean isFavSauvignonBlanc = favChecker.isFavoritado();
                            %>
                            <h2>
                                <a href="favoritar.jsp?imagem=blanc.jpg">
                                    <% if (isFavSauvignonBlanc) { %>
                                    <span style="color: #b02a2a;">♡ Favoritado️</span>
                                    <% } else { %>
                                    <span style="color: #ffffff;">♡ Favoritar️</span>
                                    <% } %>
                                </a>
                            </h2>
                        </div>
                    </div>

                    <div class="carousel-item">
                        <img src="../img/MalbecArgentino.jpg" alt="Malbec Argentino">
                        <div class="carousel-text">
                            <h2>Malbec Argentino</h2>
                            <span class="badge">tinto</span>
                            <p>Vinho robusto e frutado, típico da Argentina.</p>
                            <%
                                favChecker.imagem = "MalbecArgentino.jpg";
                                boolean isFavMalbecArgentino = favChecker.isFavoritado();
                            %>
                            <h2>
                                <a href="favoritar.jsp?imagem=MalbecArgentino.jpg">
                                    <% if (isFavMalbecArgentino) { %>
                                    <span style="color: #b02a2a;">♡ Favoritado️</span>
                                    <% } else { %>
                                    <span style="color: #ffffff;">♡ Favoritar️</span>
                                    <% } %>
                                </a>
                            </h2>
                        </div>
                    </div>

                    <div class="carousel-item">
                        <img src="../img/chardonnay.jpg" alt="Chardonnay">
                        <div class="carousel-text">
                            <h2>Chardonnay</h2>
                            <span class="badge">branco</span>
                            <p>Vinho branco elegante, com notas de baunilha e frutas tropicais.</p>
                            <%
                                favChecker.imagem = "chardonnay.jpg";
                                boolean isFavChardonnay = favChecker.isFavoritado();
                            %>
                            <h2>
                                <a href="favoritar.jsp?imagem=chardonnay.jpg">
                                    <% if (isFavChardonnay) { %>
                                    <span style="color: #b02a2a;">♡ Favoritado️</span>
                                    <% } else { %>
                                    <span style="color: #ffffff;">♡ Favoritar️</span>
                                    <% } %>
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
                            <h4><%= r.titulo%></h4>
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
