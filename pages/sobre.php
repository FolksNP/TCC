<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Paulo Reglus Neves Freire</title>
    <link rel="stylesheet" href="sobre.css">
    <link rel="stylesheet" href="../styles/css/main.css">
    <link rel="icon" type="image/png" sizes="32x32" href="../imgs/favicon-32x32.png">
</head>
<body>
    
    <?php include('header.php');?>

    <!--
    Superior: Header Posterior: Footer
    aqui será composto de três conteúdos, o primeiro vai ser sobre o paulo freire, o segundo é sobre a patrono neves e terceiro sobre o projeto

    Paulo freire: aqui vamos contar um pouco sobre sua história, e seus trabalhos na educação
    Patrono neves: sua história, missão, visão, valores.
    Projeto: aqui é sobre o nosso trabalho.
    -->
    <div class="container-sobre">

        <div class="paulo-freire">
            <div class="lado-esquerdo">
                <img src="../imgs/paulo-freire.png" class="imagem" alt="imagem-paulo-freire">
            </div>
            <div class="lado-direito" id="lado-direito">
                <h1 id="paulo-freire-texto">Paulo Reglus Neves Freire - Quem era?</h1>
                <p id="paulo-freire-texto">Paulo Reglus Neves Freire (Recife, 19 de setembro de 1921 — São Paulo, 2 de maio de 1997) foi um educador, pedagogo e filósofo brasileiro. É considerado um dos pensadores mais notáveis na história da pedagogia mundial, tendo influenciado o movimento chamado pedagogia crítica. É também o Patrono da Educação Brasileira.</p>
                <p id="paulo-freire-texto">Paulo Freire defendia a tese de que a educação deve valorizar a cultura do aluno, reconhecendo que, estando alfabetizado ou não, o aluno leva à escola uma cultura própria, que não é pior nem melhor que a do professor e, portanto, há um aprendizado mútuo.</p>
                <p id="paulo-freire-texto"><i>"Quem ensina aprende ao ensinar. E quem aprende ensina ao aprender."</i> - Paulo Freire</p>
                <p id="paulo-freire-texto"><i>"Educação não transforma o mundo. Educação muda as pessoas. Pessoas transformam o mundo."</i> - Paulo Freire</p>
            </div>
        </div>

        <div class="patrono-neves" id="patrono-neves">
            <div class="lado-esquerdo">
            <h1 style="text-align: center; margin-bottom: 10px;">Patrono Neves - #For_education</h1>
            <div class="cards" id="cards">
                <div class="missao">
                    <h2>Nossa missão</h2>
                    <p class="txt-indent">Nossa missão é levar o ensino de disciplinas menos divulgadas para o grande público com qualidade e de maneira gratuita, isto é, criar um ambiente agradável e seguro para o aprendizado de matérias menos difundidas. Procurando atender um público com necessidades mais específicas enquanto se mantém interativo e interessante para o usuário.
                    O principal benefício que a nossa empresa tem a oferecer são aulas de áreas de conhecimento menos divulgadas, pois nos focamos em fortalecer justamente no que as outras empresas não focam, como áreas de cultura, economia, tipografia etc.
                    O segundo benefício que oferecemos é a interatividade no estudo, de maneira a tornar o aprendizado mais dinâmico e agradável. Para isso planejamos criar ferramentas adaptáveis que aumentem o conforto dos usuários e o dinamismo das atividades.
                    </p>
                </div>
                <div class="visao">
                    <h2>Nossa visão</h2>
                    <p class="txt-indent">A visão da nossa empresa é única e objetiva estabelecer uma boa educação para futuros trabalhadores, pretendemos explorar as habilidades e conhecimento inexplorados das pessoas. Queremos que nossos clientes possam se encontrar profissionalmente na área em que desejam com uma posição de destaque.</p>
                </div>
                <div class="valores">
                    <h2>Nossos valores</h2>
                    <p>•	Qualidade</p>
                    <p>•	Excelência</p>
                    <p>•	Segurança Digital</p>
                    <p>•	Ética</p>
                    <p>•	Atualizações</p>
                    <p>•	Incentivo a disciplina</p>
                    <p>•	Interatividade</p>
                    <p>•	Suporte</p>

                </div>
            </div>
            </div>
            <div class="lado-direito">
                <img src="../imgs/logoTCC.png" alt="">
            </div>
        </div>
    </div>

    <div class="parcerias" id="parcerias">
        <div class="parceria-cont">
        <h1 style="text-align: center; margin-top: 15px;">Conheça nossos Parceiros!</h1> 
        <h2>Aqui estão aqueles que ajudaram a tornar isso possível:</h2> 
        <div class="parceiros">
            <div class="parceiro1">
                <h3> Ender Softwares: </h3><br>
                <img src="../imgs/logoEnder2.png" alt="">
                <button id="btnEnder" class="btnEnder">Conhecer</button>
            </div>
            <div class="parceiro2">
                <h3> TeachUp: </h3><br>
                <img src="../imgs/teach-up-logo.jpeg">
                <button id="btnTeachUp" class="btnTeachUp">Conhecer</button>
            </div>
        </div>
        </div>
    </div>

    <div id="enderModal" class="modal">

    <!-- Modal content -->
        <div class="modal-content">
        <span class="close">&times;</span>
        <div class="enderModal">
            <div class="modal-superior-ender">
                <h2>Empresa Ender Softwares</h2>
                <img src="../imgs/logoEnder2.png" alt="">
            </div>
            <div class="sobreEnder">
                <p>A EnderSoftwares, estabelece um projeto com a finalidade de criar uma nova era para os programadores. O mercado profissional dos técnicos de informática aumentou cerca de 38%, perante a este crescimento, as empresas começaram a ser mais exigentes com a nova demanda de programadores. Uma das dificuldades de alguns desses programadores, é a questão da experiência, logo, a EnderSoftwares ajudará o programador a adquirir prática, network e contato com clientes para assim ter a experiência desejada pelas empresas.
                Nosso propósito é contribuir para o avanço profissional das pessoas, empresas e da sociedade, utilizando a tecnologia ao nosso favor.
                </p>
                <br>
                <a href="" class="link-parceiros">Visite a EnderSoftwares</a>
            </div>
        </div>
        </div>

    </div>

    <div id="teachUpModal" class="modal">
        <!-- Modal content -->
        <div class="modal-content">
        <span class="close2">&times;</span>
        <div class="teachUpModal">
            <div class="modal-superior-teach">
                <h2>Empresa TeachUp</h2>
                <img src="../imgs/teach-up-logo(cortada).jpg" alt="">
            </div>
            <div class="sobreTeachUp">
                <p>TeachUp é um projeto com o intuito de facilitar a vida dos jovens. Navegar em uma rede social ao mesmo tempo que se aprende sobre os hobbies que sempre teve interesse, mas nunca encontrou uma plataforma específica para isso.
                Uma rede social no qual você não precisa ser um profissional para ensinar os assuntos nos quais você domina e também não precisa pagar ou estar-se matriculado para aprender assuntos nos quais tenha interesse. Basta ter uma conta no TeachUp! Aprendendo e se divertindo.</p>
                <br>
                <a href="" class="link-parceiros">Visite a TeachUp</a>
            </div>
        </div>
        </div>

    </div>
    <?php include('footer.php');?>
    <script src="../scripts/sobreParcerias.js"></script>

</body> 
</html>