import { errors, selectAllCheckbox, unselectAllCheckbox, verifyAllCheckbox } from './util'

// fetch('localhost:8080/atv/', {

// })
//     .then()
//     .catch(err => console.error(err))


const atv = document.getElementById('atv')
const addQuestao = document.getElementById('addQuestao')
const delQuestao = document.getElementById('delQuestao')
const salvarAtv = document.getElementById('salvarAtv')
const selectAll = document.getElementById('selectAll')
const mensagem = document.getElementById('mensagem')
let atvObj
let numQuestao = 0

function convertPosicao(posicao = '') {
    const index = posicao.indexOf('.')
    return posicao.slice(0, index)
}

function criarQuestao() {
    //limite de questão (50)

    //questao
    const questao = document.createElement('div')
    questao.classList.add('questao')
    atv.appendChild(questao)

    //label para checkbox de seleção
    const lblCheckbox = document.createElement('label')
    lblCheckbox.classList.add('lblCheckbox')
    questao.appendChild(lblCheckbox)

    //checkbox para a seleção da questão
    const checkbox = document.createElement('input')
    checkbox.type = 'checkbox'
    checkbox.classList.add('checkboxQuestao')
    lblCheckbox.appendChild(checkbox)
    checkbox.addEventListener('change', () => {
        if(!checkbox.checked) {
            selectAll.checked = false
        } else {
            const checkboxes = document.querySelectorAll('.checkboxQuestao')
            if(verifyAllCheckbox(checkboxes)) selectAll.checked = true
        }
    })

    //numeracao da questao
    const numeracao = document.createElement('label')
    numeracao.classList.add('numeracao')
    questao.appendChild(numeracao)

    //numero questao
    const numeroQuestao = document.createElement('label')
    //numeroQuestao.classList.add('')
    numeroQuestao.textContent = `${numQuestao+1}.`
    numQuestao++
    numeracao.appendChild(numeroQuestao)

    //texto da questao
    const pergunta = document.createElement('textarea')
    pergunta.classList.add('pergunta')
    pergunta.placeholder = 'digite a pergunta'
    pergunta.maxLength = 300
    numeracao.appendChild(pergunta)

    const questoes = document.querySelectorAll('.questao')
    const posicao = questoes.length

    questao.id = `questao${posicao}`

    //caracteres restantes para a pergunta
    const caracteres = document.createElement('label') 
    caracteres.classList.add('contCaractQuestao')
    caracteres.textContent = '0/300'
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

    //div onde as respostas são armazenadas
    const respostas = document.createElement('div')
    respostas.classList.add('respostas')
    questao.appendChild(respostas)

    //explicacao da resposta correta
    const explicacao = document.createElement('textarea')
    explicacao.classList.add('explicacao')
    explicacao.placeholder = 'digite a explicação da resposta'
    explicacao.maxLength = 300
    questao.appendChild(explicacao)

    //contagem de caracteres questao
    const caracteresExplicacao = document.createElement('label')
    caracteresExplicacao.classList.add('contCaractExplicacao')
    caracteresExplicacao.textContent = '0/300'
    questao.appendChild(caracteresExplicacao)

    //listeners    
    pergunta.addEventListener('input', () => {
        caracteres.textContent = `${pergunta.value.length}/300`
    }) 

    explicacao.addEventListener('input', () => {
        caracteresExplicacao.textContent = `${explicacao.value.length}/300`
    }) 

    addResposta.addEventListener('click', () => {
        if(respostaDisp.textContent > 0) {
            respostaDisp.textContent = criarResposta(respostas, questao, respostaDisp.textContent)
        }
    })

    selectAll.checked = false
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

//criar uma resposta para uma questão
function criarResposta(respostas, questao, disp) {
    //label que armazena a ordem da resposta e os elementos relacionados a isso
    const ordem = document.createElement('span')
    ordem.classList.add('ordemResposta')

    const numeracao = document.createElement('p')
    numeracao.classList.add('numResp')

    const respostaDisp = questao.querySelector('.respostaDisp')

    switch(disp) {
        case '5': 
            numeracao.textContent = '1'
            break
        case '4':
            numeracao.textContent = '2'
            break
        case '3':
            numeracao.textContent = '3'
            break
        case '2':
            numeracao.textContent = '4'
            break
        case '1':
            numeracao.textContent = '5'
            break
    }
    respostas.appendChild(ordem)
    ordem.appendChild(numeracao)

    //input radio utilizado para definir qual a resposta correta
    const radio = document.createElement('input')
    radio.type = 'radio'
    radio.classList.add('radioResposta')
    ordem.prepend(radio)

    //textarea que recebe o texto da resposta
    const resposta = document.createElement('textarea')
    resposta.classList.add('resposta')
    resposta.placeholder = 'digite a resposta'
    resposta.maxLength = 100
    radio.name = `resposta${questao.id}`
    ordem.appendChild(resposta)

    //número de caracteres disponíveis para a resposta
    const caracteres = document.createElement('label') 
    caracteres.classList.add('contCaractResp')
    caracteres.textContent = '0/100'
    ordem.appendChild(caracteres)

    //botão para remover nova resposta
    const btnRemoveResposta = document.createElement('button') 
    btnRemoveResposta.classList.add('removeResposta')
    btnRemoveResposta.textContent = '-'
    ordem.appendChild(btnRemoveResposta)    

    resposta.addEventListener('input', () => {
        caracteres.textContent = `${resposta.value.length}/100`
    }) 

    btnRemoveResposta.addEventListener('click', () => {
        if(respostaDisp.textContent >= 0) {
            try {
                console.log(numeracao)
                removeItem(questao.querySelector('.respostas'), numeracao.textContent, '.numResp')
                console.log(questao.querySelector('.respostaDisp'))
                questao.querySelector('.respostaDisp').textContent = ++disp
            } catch(err) {
                console.error(err)
            }
        }
    })
    
    return --disp
}

function removeItem(itens, index, numItem) {
    let itemNovo, itemAntigo
    let labelItemNovo, labelItemAntigo

    if(typeof itens === 'object') {
        if(itens instanceof NodeList) {
            itemNovo = itens[index+1]
            itemAntigo = itens[index]
        } else if(itens instanceof HTMLElement) {
            itemNovo = itens.children[index-1]
            itemAntigo = itens.children[index]
            console.log(index)
            console.log(itemNovo)
            console.log(itemAntigo)
        } else {
            throw errors.invalidObject
        }
    } else {
        throw errors.invalidType
    }

    if(itemNovo != undefined) {
        if(itens instanceof HTMLElement) {
            itens.replaceChild(itemNovo, itemAntigo)
            labelItemNovo = itemNovo.querySelector(numItem)
            labelItemAntigo = itemAntigo.querySelector(numItem)

            console.log(labelItemNovo)
            console.log(labelItemAntigo)

            labelItemNovo.textContent = Number(labelItemAntigo.textContent) - 1
    
            let i = Number(index)
            console.log(i)
            console.log(itens.children[i])
            while(itens.children[i] != undefined) {
                itens.children[i].querySelector(numItem).textContent = i+1
                i++
            }
        
        } else {
            atv.replaceChild(itemNovo, itemAntigo)
            labelItemNovo = itemNovo.querySelector(numItem).querySelector('label')
            labelItemAntigo = itemAntigo.querySelector(numItem).querySelector('label')

            labelItemNovo.textContent = labelItemAntigo.textContent
            itemNovo.id = itemAntigo.id

            let i = Number(index) + 1
    
            while(itens[i] != undefined) {
                itens[i].querySelector(numItem).querySelector('label').textContent = `${i}.`
                itens[i].id = `questao${i}`
                i++
            }
        }
    } else {
        itemAntigo.remove()
    }
}

function removeItens(indexes, numItem) {
    const indexesOriginal = indexes.length
    let questoes
    for(let i = 0; i < indexesOriginal; i++) {
        questoes = atv.querySelectorAll('.questao')
        removeItem(questoes, indexes[0], numItem)
        indexes.shift() //remove o indice do item que acabou de ser removido
        for(let index of indexes) {
            index--
        }
        numQuestao--
    }
    unselectAllCheckbox(document.querySelectorAll('input[type=checkbox]'))
    console.log('removeItens terminou!')
}

function removeAll(itens) {
    for(let item of itens) {
        item.remove()
    }
}

console.log(document.body)

addQuestao.addEventListener('click', criarQuestao)

selectAll.addEventListener('change', () => {
    const checkboxes = document.querySelectorAll('.checkboxQuestao')
    if(selectAll.checked) {
        selectAllCheckbox(checkboxes)
    } else {
        unselectAllCheckbox(checkboxes)
    }
})

delQuestao.addEventListener('click', () => {
    const questoesCheckbox = document.querySelectorAll('.checkboxQuestao')
    const questoes = document.querySelectorAll('.questao')

    console.log(questoesCheckbox)

    if(questoesCheckbox.length > 0) {
        console.log('questoesCheckbox nao é indefinido')
        let questoesCheckboxSelecionadas
        if(selectAll.checked) {
            removeAll(questoes)
        } else {
            questoesCheckboxSelecionadas = []
            for(let i = 0; i < questoesCheckbox.length; i++) {
                if(questoesCheckbox[i].checked) questoesCheckboxSelecionadas.push(i)
            }

            questoesCheckboxSelecionadas.reverse()

            console.log(questoesCheckboxSelecionadas)
            removeItens(questoesCheckboxSelecionadas, '.numeracao')
        }
    }
    selectAll.checked = false
})

salvarAtv.addEventListener('click', () => {
    const questoes = document.querySelectorAll('.questao')
    atvObj = {}
    for(let questao of questoes) {
        const id = questao.id
        const numeracao = questao.querySelector('.numeracao').querySelector('label')
        const pergunta = questao.querySelector('.numeracao').querySelector('.pergunta')
        const explicacao = questao.querySelector('.explicacao')
        const respostas = questao.querySelectorAll('.ordemResposta')

        console.log(numeracao)
        console.log(explicacao)
        console.log(pergunta)

        if(explicacao.value != '' && pergunta.value != '') {
            atvObj[id] = {}
            atvObj[id]['explicacao'] = explicacao.value
            atvObj[id]['pergunta'] = pergunta.value
            atvObj[id]['ordemQuestao'] = convertPosicao(numeracao.textContent)
            atvObj[id]['tipo'] = 'radio'
            atvObj[id]['numRespostas'] = respostas.length
            atvObj[id]['respostas'] = {}
            
            let respIndex = 0
            let radio
            let respCorretaIsSet = 0

            for(let resposta of respostas) {
                respIndex++

                if(resposta.querySelector('.resposta').value != '') {
                    radio = resposta.querySelector('.radioResposta')
                    radio.value = respIndex
    
                    atvObj[id]['respostas'][`resposta${respIndex}`] = {}
                    atvObj[id]['respostas'][`resposta${respIndex}`]['opcao'] = resposta.querySelector('.resposta').value
                    atvObj[id]['respostas'][`resposta${respIndex}`]['ordemResposta'] = resposta.querySelector('.numResp').textContent
                    atvObj[id]['respostas'][`resposta${respIndex}`]['respostaCorreta'] = (radio.checked) ? 1 : 0

                    if(radio.checked) {
                        atvObj[id]['respostas'][`resposta${respIndex}`]['respostaCorreta'] = 1
                        respCorretaIsSet++
                    } else {
                        atvObj[id]['respostas'][`resposta${respIndex}`]['respostaCorreta'] = 0
                    }

                } else {
                    alert(`A resposta ${respIndex} na questao ${id} está vazia!`)
                    throw errors.emptyResponse
                }
            }

            if(respCorretaIsSet === 1) {
                console.log(atvObj)
                fetch('http://localhost:8080/cadAtividade', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json; charset=UTF-8'
                    },
                    body: JSON.stringify(atvObj)
                })
                .then((result) => {console.log('atividades cadastradas com sucesso! result: ' + result); console.log(result)})
                .catch((err) => console.error(err))

            } else {
                if(respCorretaIsSet > 1) {
                    alert(`Muitas respostas marcadas na questao ${id} como verdadeira!`)
                    throw errors.tooManyResponsesMarked
                } else {
                    alert(`Nenhuma resposta foi marcada na questao ${id} como verdadeira!`)
                    throw errors.noResponsesMarked
                }
            }

        } else {
            if(explicacao.value === '') {
                alert(`A explicação na questao ${id} está vazia!`)
                throw errors.emptyExplanation
            } else {
                alert(`A pergunta na questao ${id} está vazia!!`)
                throw errors.emptyQuestion
            }
        }
    }
    console.log(atvObj)
})

//TODO (local): implementar a seleção específica das respostas e das questões para deletá-las, criar a parte de explicações, criar um marcador para definir qual resposta é verdadeira, praparar o registro dentro de um objeto e então usá-lo para o encode em JSON das informações colocadas nas atividades;
//TODO (servidor): enviar para o servidor, decodificar as informações no servidor, cadastrar no banco;
//TODO (renderizar): autentificação utilizando codProfessor, passar essas informações para esse arquivo quando o professor for alterar uma atividade já existente, renderização na parte do aluno.