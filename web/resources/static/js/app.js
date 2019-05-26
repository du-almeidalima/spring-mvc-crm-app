"use strict";

// UI Elements
const ui = {
    navItems : document.querySelectorAll(".nav-item")
};

// Adding Event Listeners to UI Elements
// function loadEventListeners(){
//     ui.navItems.forEach(item => {
//         item.addEventListener("click", activeNavItem)
//     })
//
// }

// Function to add active class to a navbar item depending on path
function activeNavItem(){

    // Function variables
    const navItems = {
        about       : document.querySelector("#about"),
        customer    : document.querySelector("#customer"),
        home        : document.querySelector("#home"),
        me          : document.querySelector("#me")
    };
    const path = window.location.pathname.split("/");

    if (path[2] in navItems){
        navItems[path[2]].classList.add("nav-active");
    }
}

window.addEventListener('DOMContentLoaded', activeNavItem);