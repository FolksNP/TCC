function downloadPDF() {
    const item = document.querySelector(".principal-certificado")
    var opt = {
        margin: [1, 0, 0, 0],
        filename: "certificado-patrono-neves.pdf",
        image: {type: 'png', quality: 0.98},
        html2canvas: {scale: 4 },
        jsPDF: {unit: "in", format: "a3", orientation: "landscape"},
    };

    html2pdf().set(opt).from(item).save();
}