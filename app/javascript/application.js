import "@hotwired/turbo-rails"
import "controllers"
import "trix"
import "@rails/actiontext"

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

const popoverTriggerList = document.querySelectorAll('[data-bs-toggle="popover"]')
const popoverList = [...popoverTriggerList].map(popoverTriggerEl => new bootstrap.Popover(popoverTriggerEl))

document.addEventListener("turbo:load", (event) =>{
    console.log("turbo:load, runs every time page loads");

    const hiddenElements = document.querySelectorAll('.hidden');
    hiddenElements.forEach((el) => observer.observe(el));
})
