<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Atividade</title>
    <link rel="stylesheet" href="../styles/css/main.css">
</head>
<body>
    <div class="caixa-atividades" id="atividades">
        <h1 id="atv-head">Atividades - Patrono Neves, Exercitar para aprender.</h1>
        <p id="txt-addAtv">Adicione atividades abaixo:</p>
        <div id="mensagem"></div>
        <div class="controle-atv">
            <input type="checkbox" id="selectAll">
            <button id="addQuestao">Adicionar</button>
            <button id="delQuestao">Deletar</button>
            <button id="salvarAtv">Salvar</button>
        </div>
        <div id="atv">

        </div>
    </div>
    <script type="module" src="http://localhost:8080/tema"></script>
    <script type="module" src="http://localhost:8080/util"></script>
    <script type="module" src="http://localhost:8080/atividade"></script>
</body>
</html>