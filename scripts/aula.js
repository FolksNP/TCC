function getEstimatedBandwidth() {
    const teste = new Image()
    const testFileSize = 1024 * 1024
    const timeout = 5000

    let startTime
    let endTime

    const loadTestFile = () => {
        return new Promise((resolve, reject) => {
            // define o tempo inicial
            startTime = performance.now()

            testElement.addEventListener('load', resolve)

            testElement.addEventListener('error', reject)

            //definindo o tempo limite para o carregamento
            setTimeout(reject, timeout)

            testElement.src = `test-file.jpg?${Date.now()}`
        })
    }

    return loadTestFile()
        .then(() => {
            //Calcula o tempo de conclusão
            endTime = performance.now()

            const duration = (endTime - startTime) / 1000

            const estimatedBandwidth = (testFileSize * 8) / (duration / 1000000)
            
            return estimatedBandwidth
        })
        .catch((err) => {
            console.error(err)
            return -1
        })
}

function adjustChuckSize() {
    const estimatedBandwidth = getEstimatedBandwidth();

    let chuckSize = 1

    if(estimatedBandwidth >= 10) {
        chuckSize = 10
    } else if(estimatedBandwidth >= 5) {
        chuckSize = 5
    } else {
        chuckSize = 1
    }

    return chuckSize * 1024 * 1024 //tamanho da chunk em bytes
}

const form = document.querySelector('form')
document.addEventListener('DOMContentLoaded', () => {
    const progressBar = document.getElementById('progress-bar')
    const fileAula = document.getElementById('fileAula')
    const upload = new plupload.Uploader({
        browse_button: 'fileAula',
        drop_element: document.querySelector('.videoUpload'),
        url: 'aula.act.php',
        chuck_size: '1mb', // depois implementar um ajuste automático de chuck
        max_file_size: '120mb',
        filters: {
            mime_types: [
                { 'title': 'Vídeos', 'extensions': 'mp4'}
            ]
        }
    })

    upload.init()

    upload.bind('FilesAdded', (up, files) => {
        console.log('files addead')
    })
    
    upload.bind('UploadProgress', (up, files) => {
        console.log('upload progress')
        progressBar.textContent = `Progresso do upload: ${files[0].percent}%`
    })

    upload.bind('FileUploaded', (up, files) => {
        progressBar.textContent = 'Upload concluído'
        let file = file.nativeFile
        console.log(file)
        const fileURL = URL.createObjectURL(file.nativeFile)
        document.querySelector("video").src = fileURL
    })

    upload.bind('Error', (up, err) => {
        progressBar.textContent = 'Erro ao realizar o upload'
        console.error(err)
    }) 

    console.log('teste')

    form.addEventListener('submit', (err) => {
        err.preventDefault()
        upload.start()
    })

    fileAula.addEventListener('change', (event) => {
        let file = fileAula.files[0];
        console.log(file)
        let blobURL = URL.createObjectURL(file);
        document.querySelector("video").src = blobURL;
    })
})