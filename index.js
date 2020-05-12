const menuBurger = document.querySelector(".menuBurger");
const menuContent = document.querySelector(".menuContent");

menuBurger.addEventListener("click", function(){
    menuBurger.classList.toggle("menuBurger--active");
    menuContent.classList.toggle("menuContent--active");
})
