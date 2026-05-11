const navMenu = document.getElementById("nav-menu"),
    btnToggle = document.getElementById("btn-toggle"),
    btnClose = document.getElementById("btn-close");

if (btnToggle) {
    btnToggle.addEventListener('click', () => {
        navMenu.classList.add('show-menu');
    });
}

if(btnClose) {
    btnClose.addEventListener('click', () => {
        navMenu.classList.remove('show-menu')
    });
}


const navLink = document.querySelectorAll('.nav__link');

navLink.forEach( (link) => {
    link.addEventListener('click', () => {
        navMenu.classList.remove('show-menu')
    });
});