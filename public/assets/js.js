
var openFilter = document.querySelector(".open-filter")


if(openFilter){
  var filter = document.querySelector(".filtre-container")
  var closeFiltre = document.querySelector(".close-filters");
  closeFiltre.addEventListener('click',function(){
    console.log("hello")
    filter.classList.remove("show-filtre")
  })
  openFilter.addEventListener('click',function(){
    filter.classList.toggle("show-filtre")
  })
}


var carouselItems = document.querySelectorAll(".carousel-item");



  var carouselIndex = 0;
  var carouselInterval = setInterval(function() {
    var nextIndex = (carouselIndex + 1) % carouselItems.length;
    carouselItems[carouselIndex].classList.remove("active");
    carouselItems[nextIndex].classList.add("active");
    carouselIndex = nextIndex;
  }, 3000);


var navbar = document.querySelector(".navbar ul")
var menu = document.querySelector(".menu i")
var listItems = document.querySelectorAll(".navbar ul li a")

if(navbar){
  menu.addEventListener('click',function(){
    navbar.classList.toggle("show")
 })
 document.addEventListener('click', function(event) {
     if (!navbar.contains(event.target) && !menu.contains(event.target)) {
       navbar.classList.remove('show');
     }
   });
 for (let i = 0; i < listItems.length; i++) {
     listItems[i].addEventListener('click',function(){
         navbar.classList.remove("show");
     })
     
 }
}





const counter = document.querySelector('.counter');


let count = 1;

if(counter){
  const minusBtn = counter.querySelector('.left-button');
const plusBtn = counter.querySelector('.right-button');
const middle = counter.querySelector('.middle');
  minusBtn.addEventListener('click', () => {
    if (count > 1) {
        count--;
        middle.textContent = count;
    }
});

plusBtn.addEventListener('click', () => {
    count++;
    middle.textContent = count;
});
}



const openPopupBtn = document.getElementById("openPopupBtn");
const popup = document.getElementById("popup");
const close = document.getElementsByClassName("close")[0];

if(openPopupBtn){
  openPopupBtn.onclick = function() {
    popup.style.display = "block";
  }
  
  close.onclick = function() {
    popup.style.display = "none";
  }
  
  window.onclick = function(event) {
    if (event.target == popup) {
      popup.style.display = "none";
    }
  }
}

var selectvalue = document.querySelectorAll("#typeacheter");
if (selectvalue) {
  var decantagePrice = document.querySelector(".decantage-price")
  var totalPrice = document.querySelector(".total-price")
  decantagePrice.style.display="none"
  // Check if the elements exist before accessing their style properties
  if (decantagePrice && totalPrice) {
    for (let i = 0; i < selectvalue.length; i++) {
      selectvalue[i].addEventListener('change',function(){
        if(selectvalue[i].value == "decantage"){
          totalPrice.style.display = "none"
          decantagePrice.style.display = ""
        } else {
          decantagePrice.style.display = "none"
          totalPrice.style.display = "block"
        }
      })
    }
  } else {
    console.log("One or both of the elements not found");
  }
}

// Get the popup button, popup container and close button




var perfumeCard = document.querySelectorAll('.card')