const headerLogo = document.querySelector(".header-logo");
const headerDrug = document.querySelector(".header-drug");
const headerMedicine = document.querySelector(".header-medicine");
const headerCalendar = document.querySelector(".header-calendar");
const headerAnnouncement = document.querySelector(".header-announcement");
const headerLogin = document.querySelector(".header-login");
const headerJoin = document.querySelector(".header-join");
const headerMypage = document.querySelector(".header-mypage");


headerLogo.addEventListener(('click'), () => {
    location.href="/index.html";
});
headerDrug.addEventListener(('click'), () => {
    location.href="/drug/modal.html";
});
headerMedicine.addEventListener(('click'), () => {
    location.href="/medicine/medicine-search-main.html";
});
headerCalendar.addEventListener(('click'), () => {
    location.href="/calendar/calenda2.html";
});
headerAnnouncement.addEventListener(('click'), () => {
    location.href="/announcement/announcement.html";
});
headerLogin.addEventListener(('click'), () => {
    location.href="/login/login.html";
});
headerJoin.addEventListener(('click'), () => {
    location.href="/join/join.html";
});
headerMypage.addEventListener(('click'), () => {
    location.href="/mypage/mypageInfo.html";
});
