// fetch('localhost:8080/atv/', {

// })
//     .then()
//     .catch(err => console.error(err))


const atv = document.getElementById('atv')
const addQuestao = document.getElementById('addQuestao')
let i = 0

function obtainQuestion() {
    //fetch('localhost:8080/')
}

function criarQuestao() {
    const questao = document.createElement('div')
    questao.classList.add('questao')
    const pergunta = document.createElement('textarea')
    pergunta.classList.add('pergunta')
    pergunta.placeholder = 'digite a pergunta'
    atv.appendChild(questao)
    questao.appendChild(pergunta)
    atualizarQuestao()
}

function criarResposta(questao) {
    const resposta = document.createElement('input')
    resposta.type = 'textfield'
    resposta.classList.add('resposta')
    questao.appendChild(resposta)
}

function carregarQuestoes() {
    const questoes = document.querySelectorAll('.questao')
    while(i < questoes.length) {
        questoes[i].id = `questao${i+1}`

        const numeracao = document.createElement('label')
        const caracteres = document.createElement('label') 

        caracteres.textContent = '0/150'

        numeracao.htmlFor = questoes[i].id
        document.body.appendChild(numeracao)
        questoes[i].appendChild(caracteres)

        numeracao.textContent = `${i+1}.`

        console.log(questoes[i].children[0])

        let pergunta = questoes[i].children[0]

        pergunta.addEventListener('input', () => {
            console.log(pergunta.value.length)
            caracteres.textContent = `${pergunta.value.length}/150`
        }) 
        
        i++
    }
}

function atualizarQuestao() {
    const questoes = document.querySelectorAll('.questao')
    const posicao = questoes.length
    const questao = questoes[posicao-1]

    console.log(`questao${posicao}`)
    console.log(questao)

    questao.id = `questao${posicao}`

    const numeracao = document.createElement('label')
    numeracao.textContent = `${posicao}.`
    console.log(numeracao.textContent)
    numeracao.htmlFor = questao.id

    const caracteres = document.createElement('label') 
    caracteres.textContent = '0/150'

    document.body.appendChild(numeracao)
    questao.appendChild(caracteres)

    console.log(questao.children[0])

    let pergunta = questao.children[0]

    pergunta.addEventListener('input', () => {
        console.log(pergunta.value.length)
        caracteres.textContent = `${pergunta.value.length}/150`
    }) 
}

console.log(document.body)

//carregarQuestoes()

addQuestao.addEventListener('click', criarQuestao)