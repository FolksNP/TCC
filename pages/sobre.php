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
            <div class="parceiro1" style="width: 50%;">
                <h3 style="text-align: center; margin-top: 70px;"> Ender Softwares: </h3><br>
                <img  style="margin-left: 25px; margin-bottom: 25px; width: 90%; height: 450px; box-shadow: 5px 5px 20px #001242; border-radius: 10px;" src="../imgs/logoEnder2.png" alt="">
                <button style="margin-left: 270px;" id="btnEnder" class="btnEnder">Conhecer</button>
            </div>
            <div class="parceiro2" style="width: 50%;">
                <h3 style="text-align: center; margin-top: 70px;"> TeachUp: </h3><br>
                <img style="margin-left: 25px; margin-bottom: 25px; width: 90%; height: 450px; box-shadow: 5px 5px 20px #001242; border-radius: 10px;" src="../imgs/teach-up-logo.jpeg">
                <button style="margin-left: 270px;" id="btnTeachUp" class="btnTeachUp">Conhecer</button>
            </div>
        </div>
        </div>
    </div>

    <div id="enderModal" class="modal">

    <!-- Modal content -->
        <div class="modal-content">
        <span class="close">&times;</span>
        <div class="enderModal">
            <h2>Empresa Ender Softwares</h2>
            <img src="../imgs/logoEnder2.png" alt="">
        </div>
        </div>

    </div>

    <div id="teachUpModal" class="modal">
        <!-- Modal content -->
        <div class="modal-content">
        <span class="close2">&times;</span>
        <div class="teachUpModal">
            <h2>Empresa TeachUp</h2>
            <img src="../imgs/teach-up-logo.jpeg" alt="">
        </div>
        </div>

    </div>
    <?php include('footer.php');?>
    <script src="../scripts/sobreParcerias.js"></script>


</body> 
</html>