const navMenu = document.getElementById("nav-menu");
const btnHamburge = document.getElementById("hamburger");

if (btnHamburge) {
    btnHamburge.addEventListener('click', () => {
        btnHamburge.classList.toggle('show-menu');
        navMenu.classList.toggle('show-menu');
    });
}

navMenu.querySelectorAll('a').forEach(link => {
    link.addEventListener('click', () => {

        btnHamburge.classList.toggle('show-menu');
        navMenu.classList.toggle('show-menu');
        console.log(link);
        
    });
});