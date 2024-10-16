const cors = require('cors')
const express = require('express')
const session = require('express-session')
const mysql = require('mysql')
const path = require('path')
const favicon = require('serve-favicon')
const bodyParser = require('body-parser')

const app = express()

const porta = (process.env.PORT === 'undefined') ? process.env.PORT : 8080

app.listen(porta, () => {
    console.log(`Iniciando servidor na porta ${porta}...`)
})

//Define um favicon para as URLs do servidor
app.use(favicon(path.resolve(__dirname, '..', 'imgs/assets', 'favicon-32x32.png')))

//Middleware para converter o body das requisições
app.use(bodyParser.json())

//Middleware para habilitar a sessão
app.use(session({
    secret: '5jN&L#3cA*GpIu$7Rv@9tY!QbS6mE1yW4oXq8PwDz2FkVxT',
    resave: false,
    saveUninitialized: true
}))


//Permite o uso de qualquer tipo de headers
app.use((req, res, next) => {
    res.header('Access-Control-Allow-Origin', '*');
    next();
})


//Permite o acesso de várias origens
app.use(cors({
    origin: '*',
    headers: '*',
    methods: ['GET', 'POST', 'PUT', 'PATCH']
}))


//Conexão do banco de dados
const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'patrononeves'
}) 

connection.connect((err) => {
    if(err) throw err
    console.log('Conectado ao banco de dados!')
})

//Definição de rotas
app.get('/', (req, res) => {
    connection.query('SELECT * FROM alunos', (err, results) => {
        if(err) throw err
        res.send(results)
        console.log(results)
    })
})

app.route('/shared').get((req, res) => {
    res.sendFile(path.join(__dirname, '/modules/shared.js'))
})

app.route('/atividade').get((req, res) => {
    res.sendFile(path.join(__dirname, '/modules/atividade.js'))
})

app.route('/util').get((req, res) => {
    res.sendFile(path.join(__dirname, '/modules/util.js'))
})

app.route('/acessibilidade').get((req, res) => {
    res.sendFile(path.join(__dirname, '/modules/acessibilidade.js'))
})

app.route('/tema').get((req, res) => {
    res.sendFile(path.join(__dirname, '/modules/tema.js'))
})

app.route('/cadAtividade').post((req, res) => {
    let questao = req.body
    const queryQuestao = 'INSERT INTO questoes (codQuestao, atividade, explicacao, ordemQuestao, pergunta, tipo, imagem) VALUES ?' 
    console.log('questao:')
    console.log(questao)
    connection.query(queryQuestao, [
            null, 
            1,
            questao['explicacao'],
            questao['ordemQuestao'],
            questao['pergunta'],
            questao['tipo'],
            null
        ], (err, results) => {
            if(err) res.send('Erro ao inserir dados:' + err)
            else res.send('Dados inseridos com sucesso!')
        }
    )

    const queryRespostas = 'INSERT INTO respostas (codRespostas, questao, opcao, ordemResposta, respostaCorreta) VALUES ?'
    const respostas = questao['respostas']
    console.log(respostas)
    for(let resposta in respostas) {
        console.log('teste resposta')
        console.log(resposta)
        connection.query(queryRespostas, [
            null,
            1,
            resposta['opcao'],
            resposta['ordemResposta'],
            resposta['respostaCorreta']
        ], (err, results) => {
                if(err) res.send('Erro ao inserir dados:' + err)
                else res.send('Dados inseridos com sucesso!')
            }
        )
    }
})

//inicia o progresso do video à partir dessa tabela
app.route('/progresso').get((req, res) => {
    connection.query(
        `SELECT progressaoVideo FROM progressos WHERE codProgressoAula = ?`,
        req.session.codProgresso,
        (err, progressaoVideo) => {
            if(err) {
                res.status(500).send('Erro ao obter dados! ' + err)
            }
            console.log(progressaoVideo)
            res.status(200).send(progressaoVideo)
        }
    )
})

//recebe e atribui a uma variável o valor de codProgresso
app.route('/progresso').post((req, res) => {
    req.session.codProgresso = req.body
    res.send(req.body)
})

//atualiza a data de conclusão de progresso
app.route('/progresso').patch((req, res) => {
    const dataConclusao = req.body
    connection.query(`UPDATE progressos SET dataConclusao = ? WHERE codProgresso = ?`,
    [dataConclusao, req.session.codProgresso], (err, result) => {
        if(err) {
            res.status(500).send('Erro ao inserir os dados! ' + err)
            return
        }
        console.log('Dados inseridos com sucesso!')
        res.status(200).send('Dados inseridos com sucesso!')
    })
})

//atualiza a progressão do vídeo
app.route('/progresso/aula').patch((req, res) => {
    const progressaoVideo = req.body
    //const codProgresso = req.locals
    connection.query(`UPDATE progressosaulas SET progressaoVideo = ? WHERE codProgressoAula = ?`,
    [progressaoVideo, codProgresso], (err, result) => {
        if(err) {
            res.status(500).send('Erro ao inserir os dados! ' + err)
            return
        }
        console.log('Dados inseridos com sucesso!')
        res.status(200).send('Dados inseridos com sucesso!')
    })
})

app.route('/matricula/atividade').post((req, res) => {
    matricula = JSON.parse(req.body)
    matricula['codProgresso']
})

app.route('/video').get((req, res) => {
    res.sendFile(path.join(__dirname, '/modules/video.js'))
})

//Rota padrão para solicitações HTTP
app.all('*', (req, res) => {
    res.status(404).send('Página não encontrada!')
})