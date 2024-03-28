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
    window.location.href = "Study_page.jsp";
}

function WrongNote() {
    // 오답노트 페이지로 이동 
    window.location.href = "Answer_note.jsp";
}
// 페이지 이동 함수
function openNotePage(url) {
    window.location.href = url;
}
let intervalTimer;
let startTime;
let elapsedTimeEnd = document.getElementById('elapsedTimeEnd');

document.getElementById('startBtn').addEventListener('click', function () {
    document.getElementById('startAlert').style.display = 'block';
    document.getElementById('elapsedTime').style.display = 'none'; // 경과 시간 숨김
    document.getElementById('endBtn').disabled = false;
    countdownStart(); // 카운트다운 시작
});

document.getElementById('endBtn').addEventListener('click', function () {
    document.getElementById('endAlert').style.display = 'block';
    document.getElementById('startBtn').disabled = true;
    document.getElementById('endBtn').disabled = true;
    clearInterval(intervalTimer); // 타이머 중지
    showEndTime();
    setTimeout(function () {
        document.getElementById('endAlert').style.display = 'none';
    }, 3000); // 3초 후에 알림 창 숨김
});

function closeAlert() {
    document.getElementById('startAlert').style.display = 'none';
    document.getElementById('endAlert').style.display = 'none';
}

function countdownStart() {
    let count = 3;
    const countdownText = document.getElementById('countdownText');
    countdownText.textContent = count;

    intervalTimer = setInterval(() => {
        count--;
        countdownText.textContent = count;
        if (count === 0) {
            clearInterval(intervalTimer);
            document.getElementById('startAlert').style.display = 'none'; // 알림 창 숨김
            startTime = new Date().getTime();
            startCountdown();
        }
    }, 1000);
}

// 카운트다운 함수
function startCountdown() {
    let timer = 0;
    const countdownText = document.getElementById('countdownText');
    const elapsedTimeText = document.getElementById('elapsedTime');

    intervalTimer = setInterval(() => {
        timer++;
        countdownText.textContent = timer;

        // 경과 시간 업데이트
        const elapsedTime = timer;
        elapsedTimeText.textContent = `경과 시간: ${elapsedTime}초`;
        elapsedTimeEnd.textContent = `경과 시간: ${elapsedTime}초`;

        // 누적 시간 업데이트
        saveTotalTime(elapsedTime);
    }, 1000); // 1초마다 감소
}

function showEndTime() {
    const endTimeText = document.getElementById('endTime');
    const elapsedTimeEnd = document.getElementById('elapsedTimeEnd');
    const elapsedTime = Math.floor((new Date().getTime() - startTime) / 1000);
    endTimeText.textContent = `경과 시간: ${elapsedTime}초`;
    elapsedTimeEnd.textContent = `경과 시간: ${elapsedTime}초`;

    // 누적 시간 업데이트
    saveTotalTime(elapsedTime);
}

function saveTotalTime(totalTime) {
    localStorage.setItem('totalTime', totalTime);
}






