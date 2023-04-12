// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
//= require_self

import "@hotwired/turbo-rails"
import "controllers"

const observer = new IntersectionObserver((entries) => {
    entries.forEach((entry) => {
        console.log(entry)
        if (entry.isIntersecting){
            entry.target.classList.toggle('show', entry.isIntersecting);
        } else {
            entry.target.classList.remove('show');
        }
    });
});

document.addEventListener("turbo:load", (event) =>{
    console.log("turbo:load, runs every time page loads");

    const hiddenElements = document.querySelectorAll('.hidden');
    hiddenElements.forEach((el) => observer.observe(el));
})

