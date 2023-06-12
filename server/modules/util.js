export const errors = {
    'noResponsesMarked': new Error('NO_RESPONSES_MARKED'),
    'tooManyResponsesMarked': new Error('TOO_MANY_RESPONSES_MARKED'),
    'emptyResponse': new Error('EMPTY_RESPONSE'),
    'emptyQuestion': new Error('EMPTY_QUESTION'),
    'emptyExplanation': new Error('EMPTY_EXPLANATION'),
    'invalidType': new Error('INVALID_TYPE'),
    'invalidObject': new Error('INVALID_OBJECT'),
    '': new Error(''),
    '': new Error(''),
    '': new Error(''),
    '': new Error(''),
    '': new Error(''),
}

export function selectAllCheckbox(checkboxes) {
    if(checkboxes != undefined || checkboxes != null){
        for(let checkbox of checkboxes) {
            checkbox.checked = true
        }                
    } else {
        console.log('erro ao selecionar todos os checkbox')
    }
}

export function unselectAllCheckbox(checkboxes) {
    if(checkboxes != undefined || checkboxes != null){
        for(let checkbox of checkboxes) {
            checkbox.checked = false
        }                
    } else {
        console.log('erro ao selecionar todos os checkbox')
    }
}

export function verifyAllCheckbox(checkboxes) {
    let checked = 0
    for(let checkbox of checkboxes) {
        if(checkbox.checked) checked++
    }
    if(checkboxes.length == checked) return true 
    else return false
}