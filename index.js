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

// const headerContent = document.querySelector(".headerContent");
// for(i=0; i<5; i++){
//     setTimeout(function(){
//         headerContent.style.backgroundImage = "url('img/mac.jpg')";
//     }, 2000);
//     setTimeout(function(){
//         headerContent.style.backgroundImage = "url('img/samsung.jpg')";
//     }, 4000);
//     setTimeout(function(){
//         headerContent.style.backgroundImage = "url('img/xiaomi.jpg')";
//     }, 6000);
// }