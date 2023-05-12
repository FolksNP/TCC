export const applyConfig = new CustomEvent('applyConfig') //evento para aplicar as configurações

//verifica se existe um JSON de configurações
export function verifyConfig() {
    const config = JSON.parse(localStorage.getItem('userSettings'))  
    console.log(config)
    if(config != null) {
        console.log('Arquivo de configuração encontrado!')
        return config 
    }
    return {}
}

//verifica se existe um JSON de configurações, atualizando a páginan de acessibilidade caso haja
export function verifyConfigAcessibilidade(form) {
        const config = JSON.parse(localStorage.getItem('userSettings'))  
        console.log(config)
        if(config != null) {
            console.log('Arquivo de configuração encontrado!')
            refreshConfig(form, config)
            return config 
        }
        return {}
}

function refreshConfig(form, config) {
    const keys = Object.keys(config)
    for(let element of form.elements) {
        keys.forEach(key => {
            if(element.id === key) {
                if(element.type === 'checkbox') {
                    element.checked = config[key]
                } else if(element.type === 'select-one') {
                    element.options.selectedIndex = config[key]
                } else {
                    throw new Error('Invalid Element!')
                }
            }
        })
    }
}

//verifica se o tema da página deve ser alterado para modo escuro
export function verifyAlterarTema(config, darkMode, whiteMode) {
    if(config['alternarTema'] != null) {
        if(config['alternarTema'] == true) {
            darkMode()
        } else {
            whiteMode()
        }
    }
}

export function verifySublinharLink(config, formatacao) {
    if(config['sublinharLink'] != null) {
        if(config['sublinharLink'] == true) {
            formatacao()
        }
    }
}

export function verifyTamanhoFonte(config, formatacao) {
    formatacao(config['tamanhoFonte'])
}

export function verifyEstiloFonte(config, formatacao) {
    formatacao(config['estiloFonte'])
}

export function resolucaoVideo(config, formatacao) {
    formatacao(config['resolucaoVideo'])
} 

export function legendaPadrao(config, formatacao) {
    if(config['legendaPadrao'] != null) {
        if(config['legendaPadrao'] == true) {
            formatacao()
        }
    }
}

export function tamanhoLegenda(config, formatacao) {
    formatacao(config['tamanhoLegenda'])
}

export function fundoLegenda(config, formatacao) {
    formatacao(config['fundoLegenda'])
}

export function corLegenda(config, formatacao) {
    formatacao(config['corLegenda'])
}