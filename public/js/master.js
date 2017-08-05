var myModal = document.getElementById("myModal")

window.addEventListener("load", function(){
  setTimeout(function(){
  
    myModal.classList.remove("hidden")

  }, 1000)
})

var close = document.querySelector("#close")

close.onclick = function() {
	myModal.classList.add("hidden")
}