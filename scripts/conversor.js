function downloadPDF() {
    const item = document.querySelector(".principal-certificado")
    var opt = {
        margin: [0, 0, 0, 0],
        filename: "certificado-patrono-neves.pdf",
        image: {type: 'png', quality: 0.98},
        html2canvas: {scale: 5 }, /*menos que 3 não rola*/
        jsPDF: {unit: "in", format: "b4", orientation: "landscape"},
    };

    html2pdf().set(opt).from(item).save();
}