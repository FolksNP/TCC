// Get the modal
var modal = document.getElementById("enderModal");

// Get the button that opens the modal
var btn = document.getElementById("btnEnder");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks on the button, open the modal
btn.onclick = function() {
  modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
  modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}

// Get the modal
var modal2 = document.getElementById("teachUpModal");

// Get the button that opens the modal2
var btn = document.getElementById("btnTeachUp");

// Get the <span> element that closes the modal2
var span = document.getElementsByClassName("close2")[0];

// When the user clicks on the button, open the modal2
btn.onclick = function() {
  modal2.style.display = "block";
}

// When the user clicks on <span> (x), close the modal2
span.onclick = function() {
  modal2.style.display = "none";
}

// When the user clicks anywhere outside of the modal2, close it
window.onclick = function(event) {
  if (event.target == modal2) {
    modal2.style.display = "none";
  }
}