import { verifyConfig, verifyAlterarTema, applyConfig } from "./shared.js"

const video = document.querySelector('iframe')
console.log(video)



function carregarProg() {
    fetch('http://localhost:8080/video')
        .then(res => JSON.parse(res))
        .then(data => {
            
        })
        .catch(err => console.error(err))
}

function patchProg() {
    fetch('http://localhost:8080/video', {
        method: 'PATCH',
        body: JSON.stringify(),
        headers: {
            'Content-type': 'application/json; charset=UTF-8'
        }
    })
        .then(data => console.log())
        .catch(err => console.error(err))
}