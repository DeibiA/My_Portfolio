const navMenu = document.getElementById("nav-menu"),
    btnToggle = document.getElementById("btn-toggle"),
    bntClose = document.getElementById("btn-close");

if (btnToggle) {
    btnToggle.addEventListener('click', (e) => {
        e.preventDefault()
        navMenu.classList.add('show-menu');
    });
}

if(bntClose) {
    bntClose.addEventListener('click', (e) => {
       e.preventDefault()
        navMenu.classList.remove('show-menu')
    });
}


const navLink = document.querySelectorAll('.nav__link');

navLink.forEach((link) => {
    link.addEventListener(("click"), () => {
        navMenu.classList.remove('show-menu')
        console.log("oi");
    });
    
    
});