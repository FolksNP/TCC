// fetch('localhost:8080/atv/', {

// })
//     .then()
//     .catch(err => console.error(err))


const atv = document.getElementById('atv')
const addQuestao = document.getElementById('addQuestao')
let numQuestao = 0

function obtainQuestion() {
    //fetch('localhost:8080/')
}

function criarQuestao() {
    //
    const questao = document.createElement('div')
    questao.classList.add('questao')
    atv.appendChild(questao)

    //
    const numeracao = document.createElement('label')
    numeracao.classList.add('numeracao')
    numeracao.textContent = `${numQuestao+1}.`
    numQuestao++
    questao.appendChild(numeracao)

    //
    const pergunta = document.createElement('textarea')
    pergunta.classList.add('pergunta')
    pergunta.placeholder = 'digite a pergunta'
    pergunta.maxLength = 50
    numeracao.appendChild(pergunta)

    //TODO: juntar ess função com a abaixo?
    atualizarQuestao()
}

//carregar múltiplas questões
function carregarQuestoes() {
    const questoes = document.querySelectorAll('.questao')
    while(numQuestao < questoes.length) {
        questoes[numQuestao].id = `questao${numQuestao+1}`

        const caracteres = document.createElement('label') 
        caracteres.textContent = '0/150'
        questoes[numQuestao].appendChild(caracteres)

        numeracao.textContent = `${numQuestao+1}.`

        let pergunta = questoes[numQuestao].children[0]

        pergunta.addEventListener('input', () => {
            caracteres.textContent = `${pergunta.value.length}/150`
        }) 
        
        numQuestao++
    }
}

//atualiza uma única questão
function atualizarQuestao() {
    const questoes = document.querySelectorAll('.questao')
    const posicao = questoes.length
    const questao = questoes[posicao-1]

    questao.id = `questao${posicao}`

    //caracteres restantes para a pergunta
    const caracteres = document.createElement('label') 
    caracteres.classList.add('caracteres')
    caracteres.textContent = '0/150'
    questao.appendChild(caracteres)

    //respostas disponíveis para determinada questão 
    const respostaDisp = document.createElement('label') 
    respostaDisp.classList.add('respostaDisp')
    if(respostaDisp.textContent == '') respostaDisp.textContent = '5'
    questao.appendChild(respostaDisp)

    //botão para adicionar nova resposta
    const addResposta = document.createElement('button') 
    addResposta.classList.add('addResposta')
    addResposta.textContent = '+'
    questao.appendChild(addResposta)

    const pergunta = questao.children[0].children[0]
    pergunta.addEventListener('input', () => {
        caracteres.textContent = `${pergunta.value.length}/150`
    }) 

    addResposta.addEventListener('click', () => {
        if(respostaDisp.textContent > 0) {
            respostaDisp.textContent = criarResposta(questao, respostaDisp.textContent)
        }
    })
}

//criar uma resposta para uma questão
function criarResposta(questao, disp) {
    //
    const ordem = document.createElement('label')
    ordem.classList.add('ordemResposta')
    switch(disp) {
        case '5': 
            ordem.textContent = '1.'
            break
        case '4':
            ordem.textContent = '2.'
            break
        case '3':
            ordem.textContent = '3.'
            break
        case '2':
            ordem.textContent = '4.'
            break
        case '1':
            ordem.textContent = '5.'
            break
    }
    questao.appendChild(ordem)

    //textarea que recebe o texto da resposta
    const resposta = document.createElement('textarea')
    resposta.classList.add('resposta')
    resposta.placeholder = 'digite a resposta'
    resposta.maxLength = 50
    ordem.appendChild(resposta)

    //número de caracteres disponíveis para a resposta
    const caracteres = document.createElement('label') 
    caracteres.textContent = '0/50'
    ordem.appendChild(caracteres)

    resposta.addEventListener('input', () => {
        caracteres.textContent = `${resposta.value.length}/50`
    }) 

    return --disp
}

//atualiza uma única resposta
// function atualizarResposta(questao, disp) {
//     console.log('atualizarRespostas')
//     //numeracao
// }

console.log(document.body)

addQuestao.addEventListener('click', criarQuestao)