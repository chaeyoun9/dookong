// 첫 번째 그래프 데이터 설정
const data1 = {
    labels: ['January', 'February', 'March', 'April', 'May', 'June', 'July'],
    datasets: [
        {
            label: '저번주 보다!',
            data: [100, 80, 90, 70, 90, 50, 100],
            fill: false,
            tension: 0.4,
            pointStyle: 'circle',
        },
        {
            label: '이번주에 더!',
            data: [40, 60, 20, 20, 30, 35, 42],
            fill: false,
            tension: 0.4,
            pointStyle: 'rectRounded',
        }
    ]
};
const config1 = {
    type: 'line',
    data: data1,
    options: {
        animations: {
            radius: {
                duration: 400,
                easing: 'linear',
                loop: (context) => context.active
            }
        },
        hoverRadius: 12,
        hoverBackgroundColor: 'yellow',
        interaction: {
            mode: 'nearest',
            intersect: false,
            axis: 'x'
        },
        plugins: {
            tooltip: {
                enabled: false
            },
            legend: {
                labels: {
                    font: {
                        size: 14,
                        weight: 'bold',
                        color: 'blue',
                    },
                },
            },
            title: {
                display: true,
                text: '주차별 개선율',
                font: {
                    size: 20,
                    weight: 'bold',
                    color: 'rgba(50, 55, 150, 1)',
                },
            },
        },
        scales: {
            x: {
                grid: {
                    display: false
                },
                ticks: {
                    display: false
                }
            },
            y: {
                grid: {
                    display: false
                },
                ticks: {
                    callback: function (value, index, values) {
                        return value + '%';
                    },
                    maxTicksLimit: 10,
                }
            }
        },
    },
};

var ctx1 = document.getElementById('snake').getContext('2d');
var myChart1 = new Chart(ctx1, config1);



//두 번째 그래프 데이터 설정
const data2 = {
    labels: ['22.10.28', '22.11.24', '23.02.15', '23.02.24', '23.03.18', '23.04.25'],
    datasets: [
        {
            label: '회차별 점수',
            data: [45, 67, 80, 55, 71, 50],
            fill: false,
            borderColor: 'purple',
            pointBackgroundColor: 'rgb(75, 192, 192)',
            pointRadius: 6,
            pointHoverRadius: 8,
            borderWidth: 3,
            type: 'line',
        },
        {
            label: '',
            data: [45, 67, 80, 55, 71, 50],
            backgroundColor: 'rgba(75, 192, 192, 0.5)',
            borderWidth: 1,
            type: 'bar',
        }
    ],
};

const config2 = {
    data: data2,
    options: {
        plugins: {
            title: {
                display: true,
                text: '회차별 점수',
                font: {
                    size: 20,
                    weight: 'bold',
                    color: 'rgba(50, 55, 150, 1)',
                },
            },
            legend: {
                display: false,
            },
        },
        scales: {
            x: {
                display: true,
                grid: {
                    display: false,
                },
                ticks: {
                    display: true,
                    color: 'rgba(50, 55, 103, 1)',
                    font: {
                        weight: 'bold',
                    },
                },
            },
            y: {
                display: true,
                min: 0,
                max: 100,
                ticks: {
                    stepSize: 20,
                    color: 'rgba(50, 55, 103, 1)',
                    font: {
                        weight: 'bold',
                    },
                },
                grid: {
                    display: true,
                },
            },
        },
    },
};

var ctx2 = document.getElementById('snake2').getContext('2d');
var myChart2 = new Chart(ctx2, config2);

// 세 번째 그래프 설정 및 생성 (Bar chart)
const data3 = {
    labels: ['1과목', '2과목', '3과목', '4과목', '5과목'],
    datasets: [{
        label: '지울거',
        data: [80, 65, 88, 70, 80],
        backgroundColor: ['Orange',
            'blue',
            'rgba(75, 192, 192)',
            'red',
            'rgba(144, 238, 144)',
        ],
        borderWidth: 0.1,
        borderRadius: 15,
        barThickness: 8,
    }]
};

const config3 = {
    type: 'bar',
    data: data3,
    options: {
        indexAxis: 'y',
        elements: {
            bar: {
                borderWidth: 0.1,
            }
        },
        responsive: true,
        plugins: {
            legend: {
                display: false,
            },
            title: {
                display: true,
                text: '과목별 평균 점수',
                font: {
                    size: 20,
                    weight: 'bold',
                    color: 'rgba(50, 55, 150, 1)',
                }
            }
        },
        scales: {
            x: {
                display: false,
                grid: {
                    display: false,
                },
            },
            y: {
                grid: {
                    display: false,
                },
                ticks: {
                    beginAtZero: true
                }
            }
        }
    }
};
var ctx3 = document.getElementById('snake3').getContext('2d');
var myChart3 = new Chart(ctx3, config3);




// 네 번째 그래프 데이터 설정
const data4 = {
    labels: ['1과목', '2과목', '3과목', '4과목', '5과목'],
    datasets: [{
        label: '학습 진행률',
        data: [75, 60, 85, 50, 70],
        backgroundColor: 'rgba(20, 255, 255, 0.5)',
        borderColor: 'rgba(75, 192, 192, 1)',
        borderWidth: 1,
        borderRadius: 10,
        barThickness: 15,
    }]
};
const config4 = {
    type: 'bar',
    data: data4,
    options: {
        responsive: true,
        plugins: {
            legend: {
                display: false,
            },
            title: {
                display: true,
                text: '과목별 학습 진행률',
                font: {
                    size: 20,
                    weight: 'bold',
                    color: 'rgba(50, 55, 150, 1)',

                }
            }
        },
        scales: {
            x: {
                grid: {
                    display: false,
                },
            },
            y: {
                min: 0,
                max: 100,
                ticks: {
                    stepSize: 10,
                    beginAtZero: true
                },



            }
        }
    },
};
var ctx4 = document.getElementById('snake4').getContext('2d');
var myChart4 = new Chart(ctx4, config4);


// 다섯 번째 그래프 데이터 설정 (Doughnut chart)
const data5 = {
    datasets: [{
        label: '데이터셋',
        data: [30, 70],
        backgroundColor: [
            "white",
            'rgba(144, 238, 144)',
        ],
        borderWidth: 4,
        hoverOffset: 4
    }]
};
const config5 = {
    type: 'doughnut',
    data: data5,
    options: {
        responsive: false,
        plugins: {
            legend: {
                position: 'top',
            },
            title: {
                display: false,
                text: '이번달 메이커스와 함께 15일 공부했어요'
            }
        },
        cutout: 90,
        layout: {
            padding: {
                right: 50
            }
        }
    }
};
var ctx5 = document.getElementById('snake5').getContext('2d');
var myChart5 = new Chart(ctx5, config5);
document.getElementById('snake5').style.width = '220px';
document.getElementById('snake5').style.height = '170px';

// 캘린더 디자인
let currentDate = new Date();
let currentMonth = currentDate.getMonth();
let currentYear = currentDate.getFullYear();
const monthNames = ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'];
const dayNames = ['일', '월', '화', '수', '목', '금', '토'];

function generateCalendar(month, year) {
    const firstDayOfMonth = new Date(year, month, 1);
    const daysInMonth = new Date(year, month + 1, 0).getDate();

    document.getElementById('month-year').innerText = `${monthNames[month]} ${year}`;

    const calendarGrid = document.getElementById('calendar-grid');
    calendarGrid.innerHTML = '';

    for (let i = 0; i < dayNames.length; i++) {
        const dayNameCell = document.createElement('div');
        dayNameCell.classList.add('calendar-day');
        dayNameCell.textContent = dayNames[i];
        dayNameCell.style.backgroundColor = '#f0f0f0';
        calendarGrid.appendChild(dayNameCell);
    }

    for (let i = 0; i < firstDayOfMonth.getDay(); i++) {
        const emptyCell = document.createElement('div');
        emptyCell.classList.add('calendar-day', 'empty-cell');
        calendarGrid.appendChild(emptyCell);
    }

    for (let day = 1; day <= daysInMonth; day++) {
        const dayCell = document.createElement('div');
        dayCell.classList.add('calendar-day');
        dayCell.textContent = day;
        calendarGrid.appendChild(dayCell);
    }
}

function prevMonth() {
    currentMonth--;
    if (currentMonth < 0) {
        currentMonth = 11;
        currentYear--;
    }
    generateCalendar(currentMonth, currentYear);
}

function nextMonth() {
    currentMonth++;
    if (currentMonth > 11) {
        currentMonth = 0;
        currentYear++;
    }
    generateCalendar(currentMonth, currentYear);
}

generateCalendar(currentMonth, currentYear);


//==============================================캘린더
//주소검색 스크립트
document.getElementById("search-btn").addEventListener("click", function () {
    var userInput = document.getElementById("search-input").value;
    searchAddress(userInput);
});

function searchAddress(query) {
    console.log("사용자가 검색한 주소:", query);
}
//궁금한것 스크립트_메인
document.getElementById("search-btn2").addEventListener("click", function () {
    var userInput = document.getElementById("search-input2").value;
    searchAddress(userInput);
});

function searchAddress(query) {
    console.log("사용자가 검색한 주소:", query);
}
//궁금한것 스크립트_학습페이지
document.getElementById("search-btn3").addEventListener("click", function () {
    var userInput = document.getElementById("search-input3").value;
    searchAddress(userInput);
});

function searchAddress(query) {
    console.log("사용자가 검색한 주소:", query);
}
//===================================================================

document.addEventListener('DOMContentLoaded', function () {
    const logoutBtn = document.getElementById('logout-btn');
    const modal = document.getElementById('logoutModal');
    const confirmBtn = document.getElementById('confirmBtn');
    const closeBtn = document.getElementById('closeBtn');

    logoutBtn.addEventListener('click', function () {
        modal.style.display = 'block'; // 모달 표시
    });

    confirmBtn.addEventListener('click', function () {
        window.location.href = 'Logout.html'; // 로그아웃 페이지 경로로 수정
    });

    closeBtn.addEventListener('click', function () {
        modal.style.display = 'none'; // 모달 숨김
    });

    window.addEventListener('click', function (event) {
        if (event.target === modal) {
            modal.style.display = 'none'; // 모달 숨김
        }
    });
});

