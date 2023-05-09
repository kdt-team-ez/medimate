const navLogo = document.querySelector(".header-logo");
const navDrug = document.querySelector(".header-drug");
const navMedicine = document.querySelector(".header-medicine");
const navCalendar = document.querySelector(".header-calendar");
const navAnnouncement = document.querySelector(".header-announcement");
const navLogin = document.querySelector(".header-login");
const navJoin = document.querySelector(".header-join");
const searchPill = document.querySelector(".btn_detail2");

navLogo.addEventListener('click',()=>{
    location.href='../index.html';
})
navDrug.addEventListener('click', () => {
    location.href='../drug/main.html';
})
navMedicine.addEventListener('click', () => {
    location.href='./medicine-search-main.html';
})
navCalendar.addEventListener('click', () => {
    location.href='../calendar/calenda2.html';
})
navAnnouncement.addEventListener('click', () => {
    location.href='../announcement/announcement.html';
})
navLogin.addEventListener('click', () => {
    location.href='../login/login.html';
})
navJoin.addEventListener('click', () => {
    location.href='../join.html';
})
searchPill.addEventListener('click', () => {
    location.href='./searchPill.html';
})

const modalClose = document.querySelectorAll(".xbtn");

modalClose.forEach((v) => {
    v.addEventListener('click', () => {
        modalInfo.classList.remove('active');
        modalWrite.classList.remove('active');
    });
});
