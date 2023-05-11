import { verifyConfig, verifyAlterarTema, applyConfig } from "./shared"

const form = document.querySelector('form')
const button = document.getElementById('alter-button')


let config = verifyConfig(form)
config = {}
console.log(applyConfig)

document.addEventListener('applyConfig', () => {
    verifyAlterarTema(config, () => {
        //recebe a formatacao de dark mode
    })
})

document.dispatchEvent(applyConfig)

button.addEventListener('click', saveConfig)    

function saveConfig() {
    console.log()
    let id
    for(let element of form.elements) {
        id = element.id
        if(element.type === 'checkbox') {
            config[id] = element.checked
        } else if (element.type === 'select-one'){
            config[id] = element.options.selectedIndex
        } else {
            throw new Error('Invalid Element!')
        }
    }

    try {
        localStorage.setItem(`userSettings`, JSON.stringify(config))
        console.log('Arquivo gravado com sucesso!')
        document.dispatchEvent(applyConfig)
        return true
    } catch(err) {
        console.error(err)
        return false
    }
}