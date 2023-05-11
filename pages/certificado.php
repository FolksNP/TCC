<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Certificado Patrono Neves</title>
    <link rel="stylesheet" href="../styles/css/main.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.10.1/html2pdf.bundle.min.js" integrity="sha512-GsLlZN/3F2ErC5ifS5QtgpiJtWd43JWSuIgh7mbzZ8zBps+dvLusV+eNQATqgA/HdeKFVgA5v3S/cIrLF7QnIg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <link rel="icon" type="image/png" sizes="32x32" href="../imgs/favicon-32x32.png">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.4/jquery.min.js" integrity="sha512-pumBsjNRGGqkPzKHndZMaAG+bir374sORyzM3uulLV14lN5LyykqNk8eEeUlUkB3U0M4FApyaHraT65ihJhDpQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <style>
        .principal-certificado {
            margin: 0 auto;
            margin-top: 20px;
            display: flex;
            width: 1280px;
            height: 720px;
            background-color: white;
            border: 1px solid black;
            justify-content: space-between;
        }
        .principal-certificado .patrono-neves-certificado {
            background-color: #05347e;
            height: 720px;
            width: 120px;
            z-index: 1;
        }
        .principal-certificado .patrono-neves-certificado .caixa-pn {
            margin-top: 40px;
        }
        .principal-certificado .patrono-neves-certificado .caixa-pn .pn-letter {
            color: white;
            text-align: center;
            font-size: 40px;
            font-family: "Cocomat";
        }
        .principal-certificado .conteudo-principal {
            text-align: center;
            width: 41%;
        }
        .principal-certificado .conteudo-principal #certi {
            font-size: 60px;
            margin-top: 50px;
        }
        .principal-certificado .conteudo-principal #conc {
            font-size: 30px;
        }
.principal-certificado .conteudo-principal #dedicacao {
  font-size: 25px;
  margin-top: 100px;
}
.principal-certificado .conteudo-principal #nome-aluno {
  margin-top: 60px;
  margin-bottom: 5px;
  font-family: "dance";
  font-size: 50px;
}
.principal-certificado .conteudo-principal #concli {
  margin-top: 10px;
  font-size: 16px;
}
.principal-certificado .assinaturas {
  display: flex;
  margin-top: 100px;
  justify-content: space-between;
}
.principal-certificado .assinaturas .instrutor, .principal-certificado .assinaturas .plataforma {
  width: 40%;
}
.principal-certificado .assinaturas #nome-instrutor, .principal-certificado .assinaturas #plataforma-ass {
  font-family: "dance";
  margin-bottom: 5px;
}
.principal-certificado .assinaturas #instrutor, .principal-certificado .assinaturas #plat-resp {
  margin-top: 5px;
}
.principal-certificado .conteudo-lateral-direito {
  padding: 0px 90px;
  width: 300px;
}
.principal-certificado .conteudo-lateral-direito .bloco-superior {
  width: 100px;
  height: 200px;
  background-color: #1c2143;
}
.principal-certificado .conteudo-lateral-direito .logo img {
  width: 200%;
  position: relative;
  top: -80px;
  left: -70px;
}
.principal-certificado .conteudo-lateral-direito .bloco-inferior {
  width: 100px;
  height: 200px;
  background-color: #1c2143;
  position: relative;
  bottom: -75px;
}

.caixa-linha {
  position: relative;
  left: -80px;
}
.caixa-linha #detalhe {
  height: 718px;
}

#imagem-gambiarra{
  position: relative;
  margin-top: 0px;
  height: 720px;
  top: -40px;
  left: 3px;
}

/*# sourceMappingURL=certificado.css.map */

    </style>
</head>
<body>

    <?php include('header.php')?>

    <div class="botoes">
        <button class="button-pdf" onclick="downloadPDF()">Baixar seu certificado Patrono Neves</button>
    </div>

    <div class="principal-certificado">
        <div class="patrono-neves-certificado">
            <div class="caixa-pn">

              <img src="../imgs/melhorgambiarra.png" alt="" id="imagem-gambiarra">

            </div>        
        </div>
        <div class="caixa-linha">
            <img id="detalhe" src="../imgs/certificado-detalhe.png" alt="">
        </div>
        <div class="conteudo-principal">

            <h1 id="certi">CERTIFICADO</h1>
            <h3 id="conc"><i>DE CONCLUSÃO DE CURSO</i></h3>

            <p id="dedicacao">Dedicamos este certificado a</p>

            <h1 id="nome-aluno">Marcelo Barbosa</h1>
            <hr>
            <p id="concli">Por concluir o curso de Introdução a Programação Geral de 5 Horas</p>

            <div class="assinaturas">
                <div class="instrutor">
                    <h1 id="nome-instrutor">Felipe Silva</h1>
                    <hr>
                    <p id="instrutor">Diretor de Ensino</p>
                    <br>
                    <p style="color: gray;">Emitido em: 00-00-0000</p>
                </div>
                <div class="plataforma">
                    <h1 id="plataforma-ass">Pedro Arthur</h1>
                    <hr>
                    <p id="plat-resp">Diretor Executivo</p>
                    <br>
                    <p style="color: gray;">Código: aBcDeFgHiJk</p>
                </div>
            </div>

        </div>
        <div class="conteudo-lateral-direito">
            <div class="bloco-superior"></div>
            <div class="logo">
                <img src="../imgs/logoTCC.png" alt="">
            </div>
            <div class="bloco-inferior"></div>
        </div>
    </div>
    
    <!-- gerador btn = gerarPDF -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.4/jquery.min.js" integrity="sha512-pumBsjNRGGqkPzKHndZMaAG+bir374sORyzM3uulLV14lN5LyykqNk8eEeUlUkB3U0M4FApyaHraT65ihJhDpQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/printThis/1.15.0/printThis.min.js" integrity="sha512-d5Jr3NflEZmFDdFHZtxeJtBzk0eB+kkRXWFQqEc1EKmolXjHm2IKCA7kTvXBNjIYzjXfD5XzIjaaErpkZHCkBg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="../scripts/gerador.js"></script>
    <!-- conversor btn = downloadPDF -->
    <script src="../scripts/conversor.js"></script>
    
    <?php include('footer.php')?>
</body>
</html>