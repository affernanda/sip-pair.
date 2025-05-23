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
                    <!-- Café -->
                    <div class="carousel-item active"> 
                        <div class="imagem-carrossel">
                            <img src="../img/Espresso.jpg" alt="Café espresso">
                            <%
                                favChecker.imagem = "Espresso.jpg";
                                boolean isFavEspresso = favChecker.isFavoritado();
                            %>
                            <h3>
                                <a href="favoritar.jsp?imagem=Espresso.jpg">
                                    <% if (isFavEspresso) { %>
                                    <span style="color: #b02a2a;">♡ Favoritado️</span>
                                    <% } else { %>
                                    <span style="color: #ffffff;">♡ Favoritar️</span>
                                    <% } %>
                                </a>
                            </h3>
                        </div>
                        <div class="carousel-text">
                            <h2>Expresso forte <span class="badge">Robusto</span></h2>
                            <p>Para quem gosta de intensidade e sabor marcante...</p>
                            <p class="combine-text">
                                isso combina com...
                            </p>
                            <div class="combina-itens">
                                <div class="item">
                                    <img src="../img/chocolate.jpg" alt="chocolate amargo">
                                    <p>chocolate amargo</p>
                                </div>
                                <div class="item">
                                    <img src="../img/tiramisu.jpg" alt="tiramisu">
                                    <p>tiramisu</p>
                                </div>
                                <div class="item">
                                    <img src="../img/biscoito.jpg" alt="biscoito de amêndoa">
                                    <p>biscoito de amêndoa</p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="carousel-item"> 
                        <div class="imagem-carrossel">
                            <img src="../img/cold-brew.jpg" alt="Cold Brew">
                            <%
                                favChecker.imagem = "cold-brew.jpg";
                                boolean isFavColdBrew = favChecker.isFavoritado();
                            %>
                            <h3>
                                <a href="favoritar.jsp?imagem=cold-brew.jpg">
                                    <% if (isFavColdBrew) { %>
                                    <span style="color: #b02a2a;">♡ Favoritado️</span>
                                    <% } else { %>
                                    <span style="color: #ffffff;">♡ Favoritar️</span>
                                    <% } %>
                                </a>
                            </h3>
                        </div>
                        <div class="carousel-text">
                            <h2>Cold Brew <span class="badge">suave</span></h2>
                            <p>Extraído a frio para um sabor leve e refrescante.</p>
                            <p class="combine-text">
                                isso combina com...
                            </p>
                            <div class="combina-itens">
                                <div class="item">
                                    <img src="../img/cheesecake-frutas-vermelhas.jpg" alt="Cheesecake de frutas vermelhas">
                                    <p>Cheesecake de frutas vermelhas</p>
                                </div>
                                <div class="item">
                                    <img src="../img/muffin-mirtilo.jpg" alt="Muffin de mirtilo">
                                    <p>Muffin de mirtilo</p>
                                </div>
                                <div class="item">
                                    <img src="../img/barra-cereal-castanhas.jpg" alt="Barra de cereal com castanhas">
                                    <p>Barra de cereal com castanhas</p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="carousel-item"> 
                        <div class="imagem-carrossel">
                            <img src="../img/capuccino.jpg" alt="Capuccino Clássico">
                            <%
                                favChecker.imagem = "capuccino.jpg";
                                boolean isFavCapuccinoClassico = favChecker.isFavoritado();
                            %>
                            <h3>
                                <a href="favoritar.jsp?imagem=capuccino.jpg">
                                    <% if (isFavCapuccinoClassico) { %>
                                    <span style="color: #b02a2a;">♡ Favoritado️</span>
                                    <% } else { %>
                                    <span style="color: #ffffff;">♡ Favoritar️</span>
                                    <% } %>
                                </a>
                            </h3>
                        </div>
                        <div class="carousel-text">
                            <h2>Capuccino Clássico <span class="badge">cremoso</span></h2>
                            <p>Espuma aveludada com o equilíbrio perfeito de café e leite.</p>
                            <p class="combine-text">
                                isso combina com...
                            </p>
                            <div class="combina-itens">
                                <div class="item">
                                    <img src="../img/croissant-amanteigado.jpg" alt="Croissant amanteigado">
                                    <p>Croissant amanteigado</p>
                                </div>
                                <div class="item">
                                    <img src="../img/biscoito-canela.jpg" alt="Biscoito de canela">
                                    <p>Biscoito de canela</p>
                                </div>
                                <div class="item">
                                    <img src="../img/pao-de-queijo.jpg" alt="Pão de queijo">
                                    <p>Pão de queijo</p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="carousel-item"> 
                        <div class="imagem-carrossel">
                            <img src="../img/etiopesidamo.jpg" alt="Café Etíope Sidamo">
                            <%
                                favChecker.imagem = "etiopesidamo.jpg";
                                boolean isFavCafeEtiopicoSidamo = favChecker.isFavoritado();
                            %>
                            <h3>
                                <a href="favoritar.jsp?imagem=etiopesidamo.jpg">
                                    <% if (isFavCafeEtiopicoSidamo) { %>
                                    <span style="color: #b02a2a;">♡ Favoritado️</span>
                                    <% } else { %>
                                    <span style="color: #ffffff;">♡ Favoritar️</span>
                                    <% } %>
                                </a>
                            </h3>
                        </div>
                        <div class="carousel-text">
                            <h2>Café Etíope Sidamo <span class="badge">arábica</span></h2>
                            <p>Sabor floral e cítrico de uma das regiões mais tradicionais da Etiópia.</p>
                            <p class="combine-text">
                                isso combina com...
                            </p>
                            <div class="combina-itens">
                                <div class="item">
                                    <img src="../img/queijo-cabra.jpg" alt="Queijo de cabra">
                                    <p>Queijo de cabra</p>
                                </div>
                                <div class="item">
                                    <img src="../img/frutas-secas.jpg" alt="Frutas secas">
                                    <p>Frutas secas (damasco, figo)</p>
                                </div>
                                <div class="item">
                                    <img src="../img/bolo-especiarias.jpg" alt="Bolo de especiarias">
                                    <p>Bolo de especiarias</p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="carousel-item"> 
                        <div class="imagem-carrossel">
                            <img src="../img/Mocha.jpg" alt="Mocha Belga">
                            <%
                                favChecker.imagem = "Mocha.jpg";
                                boolean isFavMochaBelga = favChecker.isFavoritado();
                            %>
                            <h3>
                                <a href="favoritar.jsp?imagem=Mocha.jpg">
                                    <% if (isFavMochaBelga) { %>
                                    <span style="color: #b02a2a;">♡ Favoritado️</span>
                                    <% } else { %>
                                    <span style="color: #ffffff;">♡ Favoritar️</span>
                                    <% } %>
                                </a>
                            </h3>
                        </div>
                        <div class="carousel-text">
                            <h2>Mocha Belga <span class="badge">achocolatado</span></h2>
                            <p>Uma combinação deliciosa de café e chocolate belga.</p>
                            <p class="combine-text">
                                isso combina com...
                            </p>
                            <div class="combina-itens">
                                <div class="item">
                                    <img src="../img/brownie-chocolate.jpg" alt="Brownie de chocolate">
                                    <p>Brownie de chocolate</p>
                                </div>
                                <div class="item">
                                    <img src="../img/chantilly-frutas-vermelhas.jpg" alt="Chantilly com frutas vermelhas">
                                    <p>Chantilly com frutas vermelhas</p>
                                </div>
                                <div class="item">
                                    <img src="../img/trufas-chocolate.jpg" alt="Trufas de chocolate">
                                    <p>Trufas de chocolate</p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="carousel-item"> 
                        <div class="imagem-carrossel">
                            <img src="../img/FlatWhite.jpg" alt="Flat White Australiano">
                            <%
                                favChecker.imagem = "FlatWhite.jpg";
                                boolean isFavFlatWhiteAustraliano = favChecker.isFavoritado();
                            %>
                            <h3>
                                <a href="favoritar.jsp?imagem=FlatWhite.jpg">
                                    <% if (isFavFlatWhiteAustraliano) { %>
                                    <span style="color: #b02a2a;">♡ Favoritado️</span>
                                    <% } else { %>
                                    <span style="color: #ffffff;">♡ Favoritar️</span>
                                    <% } %>
                                </a>
                            </h3>
                        </div>
                        <div class="carousel-text">
                            <h2>Flat White Australiano <span class="badge">aveludado</span></h2>
                            <p>Leve, cremoso e suave, com uma base de espresso duplo.</p>
                            <p class="combine-text">
                                isso combina com...
                            </p>
                            <div class="combina-itens">
                                <div class="item">
                                    <img src="../img/cookies-aveia.jpg" alt="Cookies de aveia">
                                    <p>Cookies de aveia</p>
                                </div>
                                <div class="item">
                                    <img src="../img/torrada-gelei.jpg" alt="Torrada com geleia">
                                    <p>Torrada com geleia</p>
                                </div>
                                <div class="item">
                                    <img src="../img/pao-artesanal-manteiga.jpg" alt="Pão artesanal com manteiga">
                                    <p>Pão artesanal com manteiga</p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Chá Verde Japonês Sencha -->
                    <div class="carousel-item"> 
                        <div class="imagem-carrossel">
                            <img src="../img/cha-verde.jpg" alt="Chá Verde Japonês Sencha">
                            <%
                                favChecker.imagem = "cha-verde.jpg";
                                boolean isFavChaVerdeJaponesSencha = favChecker.isFavoritado();
                            %>
                            <h3>
                                <a href="favoritar.jsp?imagem=cha-verde.jpg">
                                    <% if (isFavChaVerdeJaponesSencha) { %>
                                    <span style="color: #b02a2a;">♡ Favoritado️</span>
                                    <% } else { %>
                                    <span style="color: #ffffff;">♡ Favoritar️</span>
                                    <% } %>
                                </a>
                            </h3>
                        </div>
                        <div class="carousel-text">
                            <h2>Chá Verde Japonês Sencha <span class="badge">antioxidante</span></h2>
                            <p>Chá verde tradicional do Japão, refrescante e saudável.</p>
                            <p class="combine-text">
                                isso combina com...
                            </p>
                            <div class="combina-itens">
                                <div class="item">
                                    <img src="../img/sushi.jpg" alt="Sushi">
                                    <p>Sushi</p>
                                </div>
                                <div class="item">
                                    <img src="../img/salada-gergelim.jpg" alt="Salada com gergelim">
                                    <p>Salada com gergelim</p>
                                </div>
                                <div class="item">
                                    <img src="../img/onigiri.jpg" alt="Bolinho de arroz (onigiri)">
                                    <p>Bolinho de arroz (onigiri)</p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Chá de Camomila -->
                    <div class="carousel-item"> 
                        <div class="imagem-carrossel">
                            <img src="../img/camomila.jpg" alt="Chá de Camomila">
                            <%
                                favChecker.imagem = "camomila.jpg";
                                boolean isFavChaDeCamomila = favChecker.isFavoritado();
                            %>
                            <h3>
                                <a href="favoritar.jsp?imagem=camomila.jpg">
                                    <% if (isFavChaDeCamomila) { %>
                                    <span style="color: #b02a2a;">♡ Favoritado️</span>
                                    <% } else { %>
                                    <span style="color: #ffffff;">♡ Favoritar️</span>
                                    <% } %>
                                </a>
                            </h3>
                        </div>
                        <div class="carousel-text">
                            <h2>Chá de Camomila <span class="badge">calmante</span></h2>
                            <p>Perfeito para relaxar e aliviar o estresse.</p>
                            <p class="combine-text">
                                isso combina com...
                            </p>
                            <div class="combina-itens">
                                <div class="item">
                                    <img src="../img/biscoitos-mel.jpg" alt="Biscoitos de mel">
                                    <p>Biscoitos de mel</p>
                                </div>
                                <div class="item">
                                    <img src="../img/torrada-gelei-maca.jpg" alt="Torrada com geleia de maçã">
                                    <p>Torrada com geleia de maçã</p>
                                </div>
                                <div class="item">
                                    <img src="../img/queijo-brie.jpg" alt="Queijo brie">
                                    <p>Queijo brie</p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Chá Preto Darjeeling -->
                    <div class="carousel-item"> 
                        <div class="imagem-carrossel">
                            <img src="../img/cha-preto.jpg" alt="Chá Preto Darjeeling">
                            <%
                                favChecker.imagem = "cha-preto.jpg";
                                boolean isFavChaPretoDarjeeling = favChecker.isFavoritado();
                            %>
                            <h3>
                                <a href="favoritar.jsp?imagem=cha-preto.jpg">
                                    <% if (isFavChaPretoDarjeeling) { %>
                                    <span style="color: #b02a2a;">♡ Favoritado️</span>
                                    <% } else { %>
                                    <span style="color: #ffffff;">♡ Favoritar️</span>
                                    <% } %>
                                </a>
                            </h3>
                        </div>
                        <div class="carousel-text">
                            <h2>Chá Preto Darjeeling <span class="badge">aromático</span></h2>
                            <p>Conhecido como o "Champagne dos chás", rico e floral.</p>
                            <p class="combine-text">
                                isso combina com...
                            </p>
                            <div class="combina-itens">
                                <div class="item">
                                    <img src="../img/scones-creme-geleia.jpg" alt="Scones com creme e geleia">
                                    <p>Scones com creme e geleia</p>
                                </div>
                                <div class="item">
                                    <img src="../img/torta-maca.jpg" alt="Torta de maçã">
                                    <p>Torta de maçã</p>
                                </div>
                                <div class="item">
                                    <img src="../img/sanduiche-pepino.jpg" alt="Sanduíche de pepino">
                                    <p>Sanduíche de pepino</p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Chá de Hibisco -->
                    <div class="carousel-item"> 
                        <div class="imagem-carrossel">
                            <img src="../img/Cha-de-hibisco.jpg" alt="Chá de Hibisco">
                            <%
                                favChecker.imagem = "Cha-de-hibisco.jpg";
                                boolean isFavChaHibisco = favChecker.isFavoritado();
                            %>
                            <h3>
                                <a href="favoritar.jsp?imagem=Cha-de-hibisco.jpg">
                                    <% if (isFavChaHibisco) { %>
                                    <span style="color: #b02a2a;">♡ Favoritado️</span>
                                    <% } else { %>
                                    <span style="color: #ffffff;">♡ Favoritar️</span>
                                    <% } %>
                                </a>
                            </h3>
                        </div>
                        <div class="carousel-text">
                            <h2>Chá de Hibisco <span class="badge">refrescante</span></h2>
                            <p>Sabor levemente ácido e floral, ótimo para dias quentes.</p>
                            <p class="combine-text">
                                isso combina com...
                            </p>
                            <div class="combina-itens">
                                <div class="item">
                                    <img src="../img/salada-frutas-citricas.jpg" alt="Salada de frutas cítricas">
                                    <p>Salada de frutas cítricas</p>
                                </div>
                                <div class="item">
                                    <img src="../img/queijo-feta-mel.jpg" alt="Queijo feta com mel">
                                    <p>Queijo feta com mel</p>
                                </div>
                                <div class="item">
                                    <img src="../img/bolo-limao.jpg" alt="Bolo de limão">
                                    <p>Bolo de limão</p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Chá Oolong Taiwanês -->
                    <div class="carousel-item"> 
                        <div class="imagem-carrossel">
                            <img src="../img/oolong.jpg" alt="Chá Oolong Taiwanês">
                            <%
                                favChecker.imagem = "oolong.jpg";
                                boolean isFavChaOolongTaiwanes = favChecker.isFavoritado();
                            %>
                            <h3>
                                <a href="favoritar.jsp?imagem=oolong.jpg">
                                    <% if (isFavChaOolongTaiwanes) { %>
                                    <span style="color: #b02a2a;">♡ Favoritado️</span>
                                    <% } else { %>
                                    <span style="color: #ffffff;">♡ Favoritar️</span>
                                    <% } %>
                                </a>
                            </h3>
                        </div>
                        <div class="carousel-text">
                            <h2>Chá Oolong Taiwanês <span class="badge">suave</span></h2>
                            <p>Entre o chá verde e preto, com sabor floral e frutado.</p>
                            <p class="combine-text">
                                isso combina com...
                            </p>
                            <div class="combina-itens">
                                <div class="item">
                                    <img src="../img/frutos-do-mar-grelhados.jpg" alt="Frutos do mar grelhados">
                                    <p>Frutos do mar grelhados</p>
                                </div>
                                <div class="item">
                                    <img src="../img/dim-sum.jpg" alt="Bolinhos de carne (dim sum)">
                                    <p>Bolinhos de carne (dim sum)</p>
                                </div>
                                <div class="item">
                                        <img src="../img/legumes-salteados.jpg" alt="Legumes salteados">
                                    <p>Legumes salteados</p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Chá de Erva-Doce -->
                    <div class="carousel-item"> 
                        <div class="imagem-carrossel">
                            <img src="../img/ervadoce.jpg" alt="Chá de Erva-Doce">
                            <%
                                favChecker.imagem = "erva-doce.jpg";
                                boolean isFavChaErvaDoce = favChecker.isFavoritado();
                            %>
                            <h3>
                                <a href="favoritar.jsp?imagem=erva-doce.jpg">
                                    <% if (isFavChaErvaDoce) { %>
                                    <span style="color: #b02a2a;">♡ Favoritado️</span>
                                    <% } else { %>
                                    <span style="color: #ffffff;">♡ Favoritar️</span>
                                    <% } %>
                                </a>
                            </h3>
                        </div>
                        <div class="carousel-text">
                            <h2>Chá de Erva-Doce <span class="badge">digestivo</span></h2>
                            <p>Ajuda na digestão com sabor doce e suave.</p>
                            <p class="combine-text">
                                isso combina com...
                            </p>
                            <div class="combina-itens">
                                <div class="item">
                                    <img src="../img/torrada-ricota-mel.jpg" alt="Torrada com ricota e mel">
                                    <p>Torrada com ricota e mel</p>
                                </div>
                                <div class="item">
                                    <img src="../img/salada-frutas-frescas.jpg" alt="Salada de frutas frescas">
                                    <p>Salada de frutas frescas</p>
                                </div>
                                <div class="item">
                                    <img src="../img/biscoitos-anis.jpg" alt="Biscoitos de anis">
                                    <p>Biscoitos de anis</p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Vinhos - Cabernet Sauvignon -->
                    <div class="carousel-item"> 
                        <div class="imagem-carrossel">
                            <img src="../img/carbernet.jpg" alt="Cabernet Sauvignon">
                            <%
                                favChecker.imagem = "carbernet.jpg";
                                boolean isFavCabernetSauvignon = favChecker.isFavoritado();
                            %>
                            <h3>
                                <a href="favoritar.jsp?imagem=carbernet.jpg">
                                    <% if (isFavCabernetSauvignon) { %>
                                    <span style="color: #b02a2a;">♡ Favoritado️</span>
                                    <% } else { %>
                                    <span style="color: #ffffff;">♡ Favoritar️</span>
                                    <% } %>
                                </a>
                            </h3>
                        </div>
                        <div class="carousel-text">
                            <h2>Cabernet Sauvignon <span class="badge">encorpado</span></h2>
                            <p>Vinho tinto robusto, ideal para acompanhar carnes vermelhas.</p>
                            <p class="combine-text">
                                isso combina com...
                            </p>
                            <div class="combina-itens">
                                <div class="item">
                                    <img src="../img/carne-vermelha-grelhada.jpg" alt="Carne vermelha grelhada">
                                    <p>Carne vermelha grelhada</p>
                                </div>
                                <div class="item">
                                    <img src="../img/queijos-curados.jpg" alt="Queijos curados">
                                    <p>Queijos curados (parmesão, cheddar)</p>
                                </div>
                                <div class="item">
                                    <img src="../img/chocolate.jpg" alt="Chocolate amargo">
                                    <p>Chocolate amargo</p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Vinhos - Sauvignon Blanc -->
                    <div class="carousel-item"> 
                        <div class="imagem-carrossel">
                            <img src="../img/blanc.jpg" alt="Sauvignon Blanc">
                            <%
                                favChecker.imagem = "blanc.jpg";
                                boolean isFavSauvignonBlanc = favChecker.isFavoritado();
                            %>
                            <h3>
                                <a href="favoritar.jsp?imagem=blanc.jpg">
                                    <% if (isFavSauvignonBlanc) { %>
                                    <span style="color: #b02a2a;">♡ Favoritado️</span>
                                    <% } else { %>
                                    <span style="color: #ffffff;">♡ Favoritar️</span>
                                    <% } %>
                                </a>
                            </h3>
                        </div>
                        <div class="carousel-text">
                            <h2>Sauvignon Blanc <span class="badge">fresco</span></h2>
                            <p>Vinho branco leve, perfeito para saladas e frutos do mar.</p>
                            <p class="combine-text">
                                isso combina com...
                            </p>
                            <div class="combina-itens">
                                <div class="item">
                                    <img src="../img/salada-folhas-verdes-queijo-cabra.jpg" alt="Salada de folhas verdes com queijo de cabra">
                                    <p>Salada de folhas verdes com queijo de cabra</p>
                                </div>
                                <div class="item">
                                    <img src="../img/frutos-do-mar-ostras-camarao.jpg" alt="Frutos do mar (ostras, camarão)">
                                    <p>Frutos do mar (ostras, camarão)</p>
                                </div>
                                <div class="item">
                                    <img src="../img/queijo-feta.jpg" alt="Queijo feta">
                                    <p>Queijo feta</p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Vinhos - Malbec Argentino -->
                    <div class="carousel-item"> 
                        <div class="imagem-carrossel">
                            <img src="../img/MalbecArgentino.jpg" alt="Malbec Argentino">
                            <%
                                favChecker.imagem = "MalbecArgentino.jpg";
                                boolean isFavMalbecArgentino = favChecker.isFavoritado();
                            %>
                            <h3>
                                <a href="favoritar.jsp?imagem=MalbecArgentino.jpg">
                                    <% if (isFavMalbecArgentino) { %>
                                    <span style="color: #b02a2a;">♡ Favoritado️</span>
                                    <% } else { %>
                                    <span style="color: #ffffff;">♡ Favoritar️</span>
                                    <% } %>
                                </a>
                            </h3>
                        </div>
                        <div class="carousel-text">
                            <h2>Malbec Argentino <span class="badge">intenso</span></h2>
                            <p>Vinho tinto com notas frutadas, ótimo para churrasco.</p>
                            <p class="combine-text">
                                isso combina com...
                            </p>
                            <div class="combina-itens">
                                <div class="item">
                                    <img src="../img/churrasco.jpg" alt="Churrasco">
                                    <p>Churrasco</p>
                                </div>
                                <div class="item">
                                    <img src="../img/pimentao-grelhado.jpg" alt="Pimentão grelhado">
                                    <p>Pimentão grelhado</p>
                                </div>
                                <div class="item">
                                    <img src="../img/queijo-provolone.jpg" alt="Queijo provolone">
                                    <p>Queijo provolone</p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Vinhos - Rosé Provence -->
                    <div class="carousel-item"> 
                        <div class="imagem-carrossel">
                            <img src="../img/rose.jpg" alt="Rosé Provence">
                            <%
                                favChecker.imagem = "rose.jpg";
                                boolean isFavRoseProvence = favChecker.isFavoritado();
                            %>
                            <h3>
                                <a href="favoritar.jsp?imagem=rose.jpg">
                                    <% if (isFavRoseProvence) { %>
                                    <span style="color: #b02a2a;">♡ Favoritado️</span>
                                    <% } else { %>
                                    <span style="color: #ffffff;">♡ Favoritar️</span>
                                    <% } %>
                                </a>
                            </h3>
                        </div>
                        <div class="carousel-text">
                            <h2>Rosé Provence <span class="badge">leve</span></h2>
                            <p>Vinho rosé delicado, ideal para pratos mediterrâneos.</p>
                            <p class="combine-text">
                                isso combina com...
                            </p>
                            <div class="combina-itens">
                                <div class="item">
                                    <img src="../img/salada-quinoa-legumes.jpg" alt="Salada de quinoa com legumes">
                                    <p>Salada de quinoa com legumes</p>
                                </div>
                                <div class="item">
                                    <img src="../img/tapas-mediterraneas.jpg" alt="Tapas mediterrâneas">
                                    <p>Tapas mediterrâneas</p>
                                </div>
                                <div class="item">
                                    <img src="../img/queijo-brie.jpg" alt="Queijo brie">
                                    <p>Queijo brie</p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Vinhos - Chardonnay Californiano -->
                    <div class="carousel-item"> 
                        <div class="imagem-carrossel">
                            <img src="../img/chardonnay.jpg" alt="Chardonnay Californiano">
                            <%
                                favChecker.imagem = "chardonnay.jpg";
                                boolean isFavChardonnayCaliforniano = favChecker.isFavoritado();
                            %>
                            <h3>
                                <a href="favoritar.jsp?imagem=chardonnay.jpg">
                                    <% if (isFavChardonnayCaliforniano) { %>
                                    <span style="color: #b02a2a;">♡ Favoritado️</span>
                                    <% } else { %>
                                    <span style="color: #ffffff;">♡ Favoritar️</span>
                                    <% } %>
                                </a>
                            </h3>
                        </div>
                        <div class="carousel-text">
                            <h2>Chardonnay Californiano <span class="badge">elegante</span></h2>
                            <p>Vinho branco encorpado, perfeito com frango grelhado e camarão.</p>
                            <p class="combine-text">
                                isso combina com...
                            </p>
                            <div class="combina-itens">
                                <div class="item">
                                    <img src="../img/frango-grelhado-ervas.jpg" alt="Frango grelhado com ervas">
                                    <p>Frango grelhado com ervas</p>
                                </div>
                                <div class="item">
                                    <img src="../img/camarao-alho-oleo.jpg" alt="Camarão ao alho e óleo">
                                    <p>Camarão ao alho e óleo</p>
                                </div>
                                <div class="item">
                                    <img src="../img/queijo-camembert.jpg" alt="Queijo camembert">
                                    <p>Queijo camembert</p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Vinhos - Syrah Australiano -->
                    <div class="carousel-item"> 
                        <div class="imagem-carrossel">
                            <img src="../img/syrah.jpg" alt="Syrah Australiano">
                            <%
                                favChecker.imagem = "syrah.jpg";
                                boolean isFavSyrahAustraliano = favChecker.isFavoritado();
                            %>
                            <h3>
                                <a href="favoritar.jsp?imagem=syrah.jpg">
                                    <% if (isFavSyrahAustraliano) { %>
                                    <span style="color: #b02a2a;">♡ Favoritado️</span>
                                    <% } else { %>
                                    <span style="color: #ffffff;">♡ Favoritar️</span>
                                    <% } %>
                                </a>
                            </h3>
                        </div>
                        <div class="carousel-text">
                            <h2>Syrah Australiano <span class="badge">potente</span></h2>
                            <p>Vinho tinto forte, acompanha carne de cordeiro e guisado de legumes.</p>
                            <p class="combine-text">
                                isso combina com...
                            </p>
                            <div class="combina-itens">
                                <div class="item">
                                    <img src="../img/carne-cordeiro.jpg" alt="Carne de cordeiro">
                                    <p>Carne de cordeiro</p>
                                </div>
                                <div class="item">
                                    <img src="../img/guisado-legumes.jpg" alt="Guisado de legumes">
                                    <p>Guisado de legumes</p>
                                </div>
                                <div class="item">
                                    <img src="../img/queijo-gouda.jpg" alt="Queijo gouda">
                                    <p>Queijo gouda</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <button class="carousel-btn next">❯</button>
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
                    <p>Fale Conosco &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sac@sipandpair.com.br</p>
                </div>
            </div>
        </footer>
    </body>
    <script src="../js/carrossel.js" defer></script>
</html>
