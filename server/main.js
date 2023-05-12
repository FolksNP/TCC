const cors = require('cors')
const express = require('express')
const mysql = require('mysql')
const path = require('path')
const favicon = require('serve-favicon')

const app = express()

const porta = (process.env.PORT === 'undefined') ? process.env.PORT : 8080

app.listen(porta, () => {
    console.log(`Iniciando servidor na porta ${porta}...`)
})

//Define um favicon para as URLs do servidor
app.use(favicon(path.resolve(__dirname, '..', 'imgs/assets', 'favicon-32x32.png')))


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

connection.connect((e) => {
    if(e) throw e
    console.log('Conectado ao banco de dados!')
})

//Definição de rotas
app.get('/', (req, res) => {
    connection.query('SELECT * FROM alunos', (e, results) => {
        if(e) throw e
        res.send(results)
        console.log(results)
    })
})

app.route('/shared').get((req, res) => {
    res.sendFile(path.join(__dirname, '/modules/shared.js'))
})

app.route('/acessibilidade').get((req, res) => {
    res.sendFile(path.join(__dirname, '/modules/acessibilidade.js'))
})

app.route('/tema').get((req, res) => {
    res.sendFile(path.join(__dirname, '/modules/tema.js'))
})

app.route('/progresso/aula').post((req, res) => {

})

app.route('/matricula/atividade').post((req, res) => {
    matricula = JSON.parse(req.body)
    matricula['codProgresso']
})

app.route('/video').get((req, res) => {
    res.sendFile(path.join(__dirname, '/modules/video.js'))
})

app.route('/video').patch((req, res) => {
    res.sendFile(path.join(__dirname, '/modules/video.js'))
})

//Rota padrão para solicitações HTTP
app.all('*', (req, res) => {
    res.status(404).send('Página não encontrada!')
})