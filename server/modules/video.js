import { verifyConfig, applyConfig } from "./shared"

const video = document.querySelector('video')
console.log(video)

//obtém o momento em que o vídeo havia parado e inicia à partir daí
function carregarProg() {
    fetch('http://localhost:8080/progresso')
        .then(progressaoVideo => {
            console.log(progressaoVideo)
            video.currentTime = progressaoVideo
        })
        .catch(err => console.error(err))
}

//atualiza a data de conclusão de progresso
function patchProg() {
    const date = new Date()
    const data = `${date.getFullYear()}/${date.getMonth()+1}/${date.getDate()}`
    fetch('http://localhost:8080/progresso', {
        method: 'PATCH',
        body: data,
        headers: {
            'Content-type': 'text/plain; charset=UTF-8' 
        }
    })
    .catch(err => console.error(err))
}

//atualiza a progressão do vídeo
function patchProgAula() {
    currentTime = video.currentTime
    console.log(currentTime)
    fetch('http://localhost:8080/progresso/aula', {
        method: 'PATCH',
        body: currentTime,
        headers: {
            'Content-type': 'text/plain; charset=UTF-8'
        }
    })
        .then(data => console.log('Progressão de vídeo atualizada!'))
        .catch(err => console.error(err))
}

video.addEventListener('play', () => {
    const progressTimer = setInterval(patchProgAula, 10000) 

    video.addEventListener('pause', () => {
        try {
            clearInterval(progressTimer)
            patchProgAula()
        } catch(err) {
            console.error(err)
        }
    })

    video.addEventListener('ended', () => {
        try {
            clearInterval(progressTimer)
            patchProgAula()
            patchProg()
        } catch(err) {
            console.error(err)
        } 
    })
})

//Pular video
function skipForward(seconds) {
    video.currentTime = (video.currentTime + seconds <= video.duration) ? video.currentTime + seconds : video.duration
}

//Voltar video
function skipBackward(seconds) {
    video.currentTime = (video.currentTime - seconds >= 0) ? video.currentTime - seconds : 0
}

function mute() {
    video.muted = (video.muted == true)? false : true
}

//atalhos do vídeo
document.addEventListener('keyup', (event) => {
    const key = event.key
    switch(key) {
        case  ' ' || 'P':
            video.pause()
        case 'ArrowUp':
            video.volume = (video.volume+0.05 <= 1.00) ? video.volume + 0.05 : 1
        case 'ArrowDown':
            video.volume = (video.volume-0.05 >= 0) ? video.volume - 0.05 : 0
        case 'ArrowRight':
            skipForward(5)
        case 'ArrowLeft':
            skipBackward(5)
        case 'M':
            mute()
        case 'R':
            video.load()
        case 'T' || 'C':
            //Ativa Legendas
        case 'F':
            //Fullscreen
        case 'Esc':
            //Sai do Fullscreen
    } 
})

let currentTime = carregarProg()