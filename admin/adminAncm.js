const ancmInfoBtn = document.querySelectorAll(".ancm-info-btn");

ancmInfoBtn.forEach((v) => {
    v.addEventListener('click', () => {
        location.href='adminAncmEdit.html';
    });
});