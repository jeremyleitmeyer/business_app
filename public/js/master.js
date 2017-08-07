var myModal = document.getElementById("myModal")

window.addEventListener("load", function(){
  setTimeout(function(){
  
    myModal.classList.remove("hidden")

  }, 3000)
})

var closeModal = document.querySelector(".close")

closeModal.addEventListener ("click",  function() {
	myModal.classList.add("hidden")
})



