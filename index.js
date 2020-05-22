const menuBurger = document.querySelector(".menuBurger");
const menuContent = document.querySelector(".menuContent");

menuBurger.addEventListener("click", function(){
    menuBurger.classList.toggle("menuBurger--active");
    menuContent.classList.toggle("menuContent--active");
});


const filtersButton = document.querySelector(".filtersButton");
const filtersBox = document.querySelector(".filtersBox");

filtersButton.addEventListener("click", function(){
    filtersBox.classList.toggle("filtersBox--active");
});

