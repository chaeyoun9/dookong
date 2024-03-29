document.addEventListener('DOMContentLoaded', function () {
    const customTypeCategory = document.getElementById('custom-type-category');
    const customDateCategory = document.getElementById('custom-date-category');
    const customSubjectCategory = document.getElementById('custom-subject-category');
    const customTypeSubcategories = document.getElementById('custom-type-subcategories');
    const customDateSubcategories = document.getElementById('custom-date-subcategories');
    const customSubjectSubcategories = document.getElementById('custom-subject-subcategories');

    customTypeCategory.addEventListener('click', function () {
        customTypeSubcategories.classList.toggle('show-subcategories');
        customDateSubcategories.classList.remove('show-subcategories');
        customSubjectSubcategories.classList.remove('show-subcategories');
        adjustPosition(customTypeCategory, customTypeSubcategories);
    });

    customDateCategory.addEventListener('click', function () {
        customDateSubcategories.classList.toggle('show-subcategories');
        customTypeSubcategories.classList.remove('show-subcategories');
        customSubjectSubcategories.classList.remove('show-subcategories');
        adjustPosition(customDateCategory, customDateSubcategories);
    });

    customSubjectCategory.addEventListener('click', function () {
        customSubjectSubcategories.classList.toggle('show-subcategories');
        customTypeSubcategories.classList.remove('show-subcategories');
        customDateSubcategories.classList.remove('show-subcategories');
        adjustPosition(customSubjectCategory, customSubjectSubcategories);
    });

    customTypeSubcategories.addEventListener('mouseleave', function () {
        customTypeSubcategories.classList.remove('show-subcategories');
    });

    customDateSubcategories.addEventListener('mouseleave', function () {
        customDateSubcategories.classList.remove('show-subcategories');
    });

    customSubjectSubcategories.addEventListener('mouseleave', function () {
        customSubjectSubcategories.classList.remove('show-subcategories');
    });

    function adjustPosition(categoryBtn, subcategoriesDiv) {
        const rect = categoryBtn.getBoundingClientRect();
    }
});

function toggleNote() {
    // 현재 페이지로 이동
    window.location.href = "Study_page.html";
}

function WrongNote() {
    // 오답노트 페이지로 이동 
    window.location.href = "answer_note.html";
}
// 페이지 이동 함수
function openNotePage(url) {
    window.location.href = url;
}
