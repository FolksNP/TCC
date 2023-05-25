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