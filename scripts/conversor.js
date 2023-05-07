function downloadPDF() {
    const item = document.querySelector(".principal-certificado")
    var opt = {
        margin: 0,
        filename: "certificado-patrono-neves.pdf",
        html2canvas: {scale: 2 },
        jsPDF: {unit: "in", format: "letter", orientation: "landscape"},
    };

    html2pdf().set(opt).from(item).save();
}