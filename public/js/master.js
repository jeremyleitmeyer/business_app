var myModal = document.getElementById("myModal")

window.addEventListener("load", function(){
  setTimeout(function(){
  
    myModal.classList.remove("hidden")

  }, 3000)
})

var close = document.querySelector("#close")

close.onclick = function() {
	myModal.classList.add("hidden")
}