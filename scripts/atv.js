// fetch('localhost:8080/atv/', {

// })
//     .then()
//     .catch(err => console.error(err))


const atv = document.getElementById('atv')
const addQuestao = document.getElementById('addQuestao')
const delQuestao = document.getElementById('delQuestao')
const salvarAtv = document.getElementById('salvarAtv')
let atvObj
let numQuestao = 0

function convertPosicao(posicao) {
    const index = posicao.indexOf('.')
    return posicao.slice(0, index)
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
    pergunta.maxLength = 150
    numeracao.appendChild(pergunta)

    //
    const explicacao = document.createElement('textarea')
    explicacao.classList.add('explicacao')
    explicacao.placeholder = 'digite a explicação da resposta'
    explicacao.maxLength = 150
    numeracao.appendChild(explicacao)

    const questoes = document.querySelectorAll('.questao')
    const posicao = questoes.length

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

    pergunta.addEventListener('input', () => {
        caracteres.textContent = `${pergunta.value.length}/150`
    }) 

    addResposta.addEventListener('click', () => {
        if(respostaDisp.textContent > 0) {
            respostaDisp.textContent = criarResposta(questao, respostaDisp.textContent)
        }
    })

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

}

//criar uma resposta para uma questão
function criarResposta(questao, disp) {
    //label que armazena a ordem da resposta e os elementos relacionados a isso
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

    //input radio utilizado para definir qual a resposta correta
    const radio = document.createElement('input')
    radio.type = 'radio'
    radio.classList.add('radioResposta')
    ordem.prepend(radio)

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
delQuestao.addEventListener('click', () => {

})
salvarAtv.addEventListener('click', () => {
    const questoes = document.querySelectorAll('.questao')
    atvObj = {}
    for(let questao of questoes) {
        const id = questao.id
        const numeracao = questao.children[0]
        const pergunta = numeracao.children[0]
        const explicacao = numeracao.children[1]
        const respostas = questao.querySelectorAll('.ordemResposta')

        atvObj[id] = {}
        atvObj[id]['explicacao'] = explicacao.value
        atvObj[id]['pergunta'] = pergunta.value
        atvObj[id]['ordemQuestao'] = convertPosicao(numeracao.textContent)
        atvObj[id]['tipo'] = 'radio'
        atvObj[id]['numRespostas'] = respostas.length

        let respIndex = 1
        let respostaId
        let radio

        for(let resposta of respostas) {
            respostaId = `resposta${respIndex}`

            radio = resposta.querySelector('.radioResposta')
            radio.name = `resposta${questao.id}`
            radio.value = respIndex
            console.log(radio.checked)

            atvObj[id][respostaId] = {}
            atvObj[id][respostaId]['opcao'] = resposta.querySelector('.resposta').value
            atvObj[id][respostaId]['ordemResposta'] = convertPosicao(resposta.textContent)
            atvObj[id][respostaId]['respostaCorreta'] = (radio.checked) ? 1 : 0
            respIndex++
        }
    }

    console.log(atvObj)

    // fetch('localhost:8080/cadQuestao', {
    //     method: 'POST',
    //     body: JSON.stringify(atvObj),
    //     headers: {
    //         'Content-Type': 'application/json; charset=UTF-8'
    //     }
    // })
    // .then(() => console.log('atividades cadastradas com sucesso'))
    // .catch((err) => console.error(err))
})

//TODO (local): implementar a seleção específica das respostas e das questões para deletá-las, criar a parte de explicações, criar um marcador para definir qual resposta é verdadeira, praparar o registro dentro de um objeto e então usá-lo para o encode em JSON das informações colocadas nas atividades;
//TODO (servidor): enviar para o servidor, decodificar as informações no servidor, cadastrar no banco;
//TODO (renderizar): autentificação utilizando codProfessor, passar essas informações para esse arquivo quando o professor for alterar uma atividade já existente, renderização na parte do aluno.