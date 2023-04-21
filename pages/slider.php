<!-- <section class="product" id="product"> 
        <h2 class="product-category"><div class="linha"></div><p>Continue Estudando!</p> <div class="linha"></div></h2>
        <button class="preS-btn"><img src="../imgs/setaDireita.png" alt=""></button>
        <button class="nxtS-btn"><img src="../imgs/setaDireita.png" alt=""></button>
        <div class="product-container">
            <div class="product-card">
                <div class="product-image">
                    <span class="discount-tag">50%</span>
                    <img src="../imgs/java.jpg" class="product-thumb" alt="">
                    
                </div>
                <div class="product-info">
                    <h2 class="product-brand">JavaScript</h2>
                    <p class="product-short-description">Front-end</p>
                    
                </div>
            </div>
            <div class="product-card">
                <div class="product-image">
                    <span class="discount-tag">0%</span>
                    <img src="../imgs/java.jpg" class="product-thumb" alt="">
                    
                </div>
                <div class="product-info">
                    <h2 class="product-brand">JavaScript</h2>
                    <p class="product-short-description">Front-end</p>
                    
                </div>
            </div>
            <div class="product-card">
                <div class="product-image">
                    <span class="discount-tag">5%</span>
                    <img src="../imgs/php.jpg" class="product-thumb" alt="">
                    
                </div>
                <div class="product-info">
                    <h2 class="product-brand">PHP</h2>
                    <p class="product-short-description">Back-End</p>
                    
                </div>
            </div>
            <div class="product-card">
                <div class="product-image">
                    <span class="discount-tag">90%</span>
                    <img src="../imgs/php.jpg" class="product-thumb" alt="">
                    
                </div>
                <div class="product-info">
                    <h2 class="product-brand">PHP</h2>
                    <p class="product-short-description">Back-End</p>
                    
                </div>
            </div>
            <div class="product-card">
                <div class="product-image">
                    <span class="discount-tag">50% </span>
                    <img src="../imgs/html.jpg" class="product-thumb" alt="">
                    
                </div>
                <div class="product-info">
                    <h2 class="product-brand">HTML</h2>
                    <p class="product-short-description">Front-End</p>
                    
                </div>
            </div>
            <div class="product-card">
                <div class="product-image">
                    <span class="discount-tag">35% </span>
                    <img src="../imgs/html.jpg" class="product-thumb" alt="">
                    
                </div>
                <div class="product-info">
                    <h2 class="product-brand">HTML</h2>
                    <p class="product-short-description">Front-End</p>
                    
                </div>
            </div>
            <div class="product-card">
                <div class="product-image">
                    <span class="discount-tag">20% </span>
                    <img src="../imgs/php.jpg" class="product-thumb" alt="">
                    
                </div>
                <div class="product-info">
                    <h2 class="product-brand">PHP</h2>
                    <p class="product-short-description">Back-End</p>
                    
                </div>
            </div>
            <div class="product-card">
                <div class="product-image">
                    <span class="discount-tag">12% </span>
                    <img src="../imgs/java.jpg" class="product-thumb" alt="">
                    
                </div>
                <div class="product-info">
                    <h2 class="product-brand">JavaScript</h2>
                    <p class="product-short-description">Front-end</p>
                    
                </div>
            </div>
            <div class="product-card">
                <div class="product-image">
                    <span class="discount-tag">56% </span>
                    <img src="../imgs/java.jpg" class="product-thumb" alt="">
                    
                </div>
                <div class="product-info">
                    <h2 class="product-brand">JavaScript</h2>
                    <p class="product-short-description">Front-end</p>
                    
                </div>
            </div>
            <div class="product-card">
                <div class="product-image">
                    <span class="discount-tag">10% </span>
                    <img src="../imgs/java.jpg" class="product-thumb" alt="">
                    
                </div>
                <div class="product-info">
                    <h2 class="product-brand">JavaScript</h2>
                    <p class="product-short-description">Front-end</p>
                    
                </div>
            </div>
        </div>
    </section>
     -->

    <title>Card Slider</title>
    <style>
        /* Estilos para o slider */
        .card-slider {
            display: flex;
            overflow: hidden; /* Oculta os cartões que excedem o contêiner */
            width: 100%; /* Define a largura total do contêiner */
        }
        
        .card-container {
            display: flex;
            transition: transform 0.3s ease-in-out; /* Adiciona uma transição suave de 0.3 segundos no movimento dos cartões */
        }
        
        .card {
            flex: 0 0 300px; /* Largura de cada cartão */
            margin-right: 16px; /* Espaçamento entre os cartões */
            padding: 16px;
            background-color: #f0f0f0;
            border: 1px solid #ccc;
        }
    </style>

    <div class="card-slider">
        <div class="card-container">
            <div class="card">
                <h3>Card 1</h3>
                <p>Conteúdo do Card 1</p>
            </div>
            <div class="card">
                <h3>Card 2</h3>
                <p>Conteúdo do Card 2</p>
            </div>
            <div class="card">
                <h3>Card 3</h3>
                <p>Conteúdo do Card 3</p>
            </div>
            <!-- Adicione mais cartões conforme necessário -->
        </div>
    </div>

    <script>
        // Função para mover os cartões para a direita
        function slideRight() {
            const cardContainer = document.querySelector('.card-container');
            cardContainer.style.transform = 'translateX(-320px)'; /* Move os cartões para a direita em 320px (largura do cartão + margem) */
        }
        
        // Função para mover os cartões para a esquerda
        function slideLeft() {
            const cardContainer = document.querySelector('.card-container');
            cardContainer.style.transform = 'translateX(0)'; /* Move os cartões para a esquerda em 0px */
        }
    </script>
</body>
