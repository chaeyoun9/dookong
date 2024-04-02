<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.dookong.model.MemberDTO"%>
<%@ page import="com.dookong.model.OneKnowlDTO"%>
<%@ page import="com.dookong.model.OneKnowlDAO"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>Makers</title>
<meta name="description" content="Figma htmlGenerator">
<meta name="author" content="htmlGenerator">

<link
	href="https://fonts.googleapis.com/css?family=SeoulHangang+CBL&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=SeoulHangang+CB&display=swap"
	rel="stylesheet">

<link rel="stylesheet" href="assets/css/Main_Page.css?after">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href='fullcalendar/main.css' rel='stylesheet' />
<script src='fullcalendar/main.js'></script>
<script
	src="https://cdn.jsdelivr.net/npm/fullcalendar@6.1.11/index.global.min.js"></script>
<link
	href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<link src:
	url='https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2201-2@1.0/GangwonEdu_OTFBoldA.woff'>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<script
	src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=011f9701e3d12de2d1801227d712e025&libraries=services"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/js/all.min.js"></script>


<style>
body {
	background: white;
	font-family: "Gowun Dodum", sans-serif;
	margin: 0%;
	padding: auto;
}
</style>
</head>

<body>

	<%
	String name = (String) session.getAttribute("name");
	MemberDTO dto = (MemberDTO) session.getAttribute("dto");
	System.out.println(request.getAttribute("content"));

	OneKnowlDAO odao = new OneKnowlDAO();
	int know_seq = odao.rd();
	OneKnowlDTO rdQ = odao.printk(know_seq);
	System.out.println(know_seq);
	System.out.println("rdq" + rdQ);
	%>
	+
	<div class="e266_5958">
		<div class="e253_5953">
			<div class="e253_5898"></div>
			<div class="e253_5955">
				<div class="e253_5943">
					<div class="e253_5875"></div>
					<div class="e253_5876"></div>

					<div class="categories">
						<a href="Study_page.jsp" class="category-btn">
							<div class="category-icon">&#128218;</div>
							<div class="category-title">학습 페이지</div>
						</a> <a href="newtest.jsp" class="category-btn">
							<div class="category-icon">&#128202;</div>
							<div class="category-title">학습 대시보드</div>
						</a> <a href="My_page.jsp" class="category-btn">
							<div class="category-icon">&#128100;</div>
							<div class="category-title">마이페이지</div>
						</a> <a href="#" id="logout-btn" class="category-btn">
							<div class="category-icon">&#128075;</div>
							<div class="category-title">Sign Out</div>
						</a>
					</div>

					const port1 = 3000;

					<div class="e253_58978">
						<img src="img/Makers.png" width="256" height="60">
					</div>



					<!-- <h1 class="e253_5894">완두콩 : MAKERS</h1> -->
					<div class="e253_5897">
						<img src="img/사용자 프로필.jpg" width="153" height="182">
					</div>




					<div class="e253_5902">
						<!--주차별 개선율-->
						<canvas id="snake" width="150" height="90"></canvas>
					</div>

					<div class="e253_5903">
						<!--과목별 학습 진행률-->
						<canvas id="snake4" width="150" height="100"></canvas>
					</div>

					<div class="e253_5904">
						<!--회차별 점수-->
						<canvas id="snake2" width="150" height="120"></canvas>
					</div>

					<div class="e253_5905">
						<!--과목별 평균점수-->
						<canvas id="snake3" width="180" height="140"></canvas>
					</div>

					<!--=================================28일 오후 추가 ↓ ===============================-->
					<!--To-do List-->
					<div class="e253_5906">
						<div class="to_do_list">
							<div class="container">
								<h2 class="h11">To-Do List</h2>
								<input type="text" id="taskInput" placeholder="할 일을 입력하세요">
								<ul id="taskList"></ul>
							</div>

						</div>
					</div>
					<!--=================================28일 오후 추가 ↑ ===============================-->
					<div class="e253_5907"></div>
					<!--지도API 백그라운드-->
					<div class="e253_5908"></div>
					<!--풀이시간-->
					<!-- <span class="e253_5942">1H 47M</span> -->

					<!--=================================28일 오전 추가 ↓ ===============================-->
					<div class="e253_5942">
						<div id="elapsedTimeContainer">
							<span id="elapsedTime"></span>S
						</div>
					</div>

					<div class="e253_5909"></div>
					<div class="e253_59099">
						<canvas id="snake5"></canvas>
						<!--도넛새끼-->
					</div>


					<!--  출석 데이터 연결 완료 -->


					<span class="e253_59473">메이커스와 함께
						<h1 id="clickCount"><%=session.getAttribute("dateCnt")%></h1>일
						공부했어요
					</span>
					<button class="e253_59474" type="submit" id="clickButton"
						name="clicked" onclick="updateCount()()">출석하기</button>

					<div class="calendar-container">
						<div class="calendar-header">
							<button onclick="prevMonth()">⇦ 이전달</button>
							<h3 id="curMonthDisplay"></h3>
							<button onclick="nextMonth()">다음달 ⇨</button>
						</div>
						<div class="calendar-body" id="calendarGrid"></div>
					</div>

					<!--  출석 데이터 연결 스크립트 -->
					<script>
				function updateCount(){
					var countSpan = document.getElementById("clickCount");
				    var currentCount = parseInt(countSpan.textContent);
				    currentCount++;
				    countSpan.textContent = currentCount;
					
				    var xhr = new XMLHttpRequest();
			        xhr.open("POST", "ClickCountServlet", true); 
			        xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
			        xhr.onreadystatechange = function () {
			            if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
			                console.log(xhr.responseText); // 서버로부터의 응답을 콘솔에 출력
			            }
			        };
			        
			        // POST 요청 보내기
			        var data = "count=" + currentCount; // 서버로 보낼 데이터 형식을 정의합니다. 이 경우 count 값만 보냅니다.
			        xhr.send(data);
			        
				    // 버튼 비활성화 및 다시 활성화
				    document.getElementById("clickButton").disabled = true;
				    setTimeout(function() {
				        document.getElementById("clickButton").disabled = false;
				    }, 24 * 60 * 60 * 1000); // 24시간 후에 다시 활성화 (24 * 60 * 60 * 1000)
				    
				   
				    
					
				}
				
				
	
			</script>


					<div class="e253_5910"></div>
					<!--한줄지식-->
					<div class="e253_5911"></div>
					<!--캘린더-->

					<div class="calendar-container">
						<div class="calendar-header">
							<button onclick="prevMonth()">⇦ 이전달</button>
							<h3 id="curMonthDisplay"></h3>
							<button onclick="nextMonth()">다음달 ⇨</button>
						</div>
						<div class="calendar-body" id="calendarGrid"></div>
					</div>

					<div class="modal-container" id="modalBox">
						<div class="modal-content">
							<div class="modal-header">
								<h3>일정 확인</h3>
							</div>
							<div class="modal-body">
								<input type="text" id="schedInputModal" placeholder="일정을 적어주세요">
								<button onclick="addScheduleModal()">추가</button>
								<div class="schedule-list" id="schedListModal"></div>
								<button class="close-btn_1" onclick="closeModal()">닫기</button>
							</div>
							<div class="modal-footer"></div>
						</div>
					</div>
					<!-- ==================================================================================== -->
					<!-- 기존캘린더 작업 주석처리 -->
					<!--<div class="e253_5911"></div><!--캘린더-->
					<!-- 
          <div class="calendar">
            <div class="calendar-header">
              <button onclick="prevMonth()">&lt; 이전 달</button>
              <h2 id="month-year"></h2>
              <button onclick="nextMonth()">다음 달 &gt;</button>
            </div>
            <div class="calendar-grid" id="calendar-grid"></div>
            <div class="btn-container">
            </div>
          </div> -->



					<div class="search-container2">
						<!-- 검색 입력창 -->
						<input type="text" id="search-input2" autofocus name="question"
							placeholder="궁금한 것이 있나요?">
						<!-- 검색 버튼 -->
						<button id="search-btn2" aria-label="Search" onclick="openModal()"
							disabled>
							<i class="fas fa-search"></i>
						</button>
					</div>
					<!-- 검색 결과 표시 영역 -->
					<div id="search-results2"></div>
					<!-- 모달 창 -->
					<div id="myModal" class="modal1">
						<div class="modal-content1">
							<!-- 모달 창 닫기 버튼 -->
							<span class="close1" onclick="closeModal()">&times;</span>
							<!-- 이전 버튼 -->
							<button id="prev-button" onclick="showPrev()">이전</button>
							<!-- 다음 버튼 -->
							<button id="next-button" onclick="showNext()">다음</button>
							<!-- 모달 내용 표시 영역 -->
							<div id="modal-content1"></div>
						</div>
					</div>

					<!-- <div class="search-container2">
            <input id="search-input2" type="text" autofocus name="question" placeholder="궁금한 것이 있나요?">
            <button id="search-btn2" aria-label="Search">
              <i class="fas fa-search"></i>
            </button>
          </div>
          <div id="search-results2"></div> -->


				</div>
				<div class="e253_5944">
					<div class="ei253_5944_3_9146"></div>
					<div class="ei253_5944_3_9147"></div>
				</div>
				<div class="e253_5949"></div>
				<span class="e253_5951"><%=rdQ.getKnowl_title()%></span>
				<div class="e253_5947"></div>
				<span class="e253_5948">한줄 지식</span>
				<!-- <div class="e253_59471"></div>
            <h1 class="e253_59481">:Makers 평균 점수 랭킹</h1> -->


				<div class="search-container">
					<div>
						<input id="searchInput" type="text" placeholder="주소를 입력하세요">
					</div>
					<div>
						<button id="search-btn" type="submit" onclick="search()">검색</button>
					</div>
				</div>


				<div class="e253_59492">
					<div id="map" style="width: 320px; height: 200px;"></div>




				</div>

				<div class="e253_59491"></div>
				<span class="e253_5952"><%=rdQ.getKnowl_content()%></span> <span
					class="e253_5954"></span>
			</div>
		</div>
		<h1 class="e253_5941"><%=name%>님의<br>오늘 풀이시간
		</h1>
	</div>


	<div id="logoutModal" class="modal">
		<div class="modal-content">
			<p>로그아웃 하시겠습니까?</p>
			<button id="confirmBtn" class="modal-btn confirm-btn">확인</button>
			<button id="closeBtn" class="modal-btn close-btn">취소</button>
		</div>
	</div>

	<script>
	
	 document.addEventListener('DOMContentLoaded', function () {
	      const logoutBtn = document.getElementById('logout-btn');
	      const modal = document.getElementById('logoutModal');
	      const confirmBtn = document.getElementById('confirmBtn');
	      const closeBtn = document.getElementById('closeBtn');

	      logoutBtn.addEventListener('click', function () {
	        modal.style.display = 'block'; // 모달 표시
	      });

	      confirmBtn.addEventListener('click', function () {
	        window.location.href = 'Main_Login.jsp'; // 로그아웃 페이지 경로로 수정
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

	   // api 시작
	   // 검색 입력창 요소
       const searchInput = document.getElementById('search-input2');
       // 검색 버튼 요소
       const searchButton = document.getElementById('search-btn2');
       // 모달 요소
       const modal = document.getElementById('myModal');
       // 모달 내용 요소
       const modalContent = document.getElementById('modal-content1');
       // 이전 버튼 요소
       const prevButton = document.getElementById('prev-button');
       // 다음 버튼 요소
       const nextButton = document.getElementById('next-button');
       
       // 현재 인덱스 변수 초기화
       let currentIndex = -1;
       
       // 질문과 답변을 저장할 배열
       let questionsAndAnswers = [];
       console.log(questionsAndAnswers)

       // 입력값이 변경될 때마다 전송 버튼의 활성화 여부를 결정
       searchInput.addEventListener('input', () => {
      searchButton.disabled = searchInput.value.trim() === "";
    });

	   // 모달을 열기 위한 함수
       async function openModal() {
           const question = searchInput.value.trim();

           if (!question) {
               return;
           }

           searchButton.disabled = true;

           try {
               const apiUrl = 'http://localhost:3000/makers';
               const response = await fetch(apiUrl, {
                   method: 'POST',
                   headers: {
                       'Content-Type': 'application/json',
                   },
                   body: JSON.stringify({ question }),
               });

               if (!response.ok) {
                   throw new Error(`궁금증 해결 실패! HTTP status: ${response.status}`);
               }

               const data = await response.json();
               if (data && data.assistant) {
                   modalContent.innerHTML = "<strong>답변:"+data.assistant+"</strong>";
                   modal.style.display = 'block';

                   // 새로운 질문과 답을 배열에 추가
                   questionsAndAnswers.push({ question, answer: data.assistant });
                   // 현재 인덱스를 업데이트
                   currentIndex = questionsAndAnswers.length - 1;
                   // 이전과 다음 버튼의 활성화 여부를 업데이트
                   updateButtonStates();
                   console.log(data.assistant);
               } else {
                   displayError('정보를 가져오는 데 문제가 발생했습니다.');
               }
           } catch (error) {
               displayError(`에러 발생: ${error.message}`);
           } finally {
               sendButton.disabled = false;
               inputText.value = '';
           }
       }
	   
	   // 모달 닫기
       function closeModal() {
           modal.style.display = 'none';
       }
	
	   // 이전 버튼 동작
       function showPrev() {
           if (currentIndex > 0) {
               currentIndex--;
               updateModalContent();
           }
       }

	   // 다음 버튼 동작
       function showNext() {
           if (currentIndex < questionsAndAnswers.length - 1) {
               currentIndex++;
               updateModalContent();
           }
       }

	   // 모달 내용 업데이트
       function updateModalContent() {
           modalContent.innerHTML = `<strong>질문:</strong> ${questionsAndAnswers[currentIndex].question}<br><strong>답변:</strong> ${questionsAndAnswers[currentIndex].answer}`;
           updateButtonStates();
       }

	   // 이전버튼, 다음버튼 활성화 여부 업데이트 
       function updateButtonStates() {
           prevButton.disabled = currentIndex <= 0;
           nextButton.disabled = currentIndex >= questionsAndAnswers.length - 1;
       }

	   // 에러 표시
       function displayError(message) {
           alert(`에러 발생: ${message}`);
       }
	   // api 끝 
	   
   function showTotalTime() {
      const totalTime = localStorage.getItem('totalTime');
      if (totalTime) {
        document.getElementById('elapsedTime').textContent = totalTime;
      }
    }
    //<!--=================================28일 오전 추가 ↓ ===============================-->
    window.onload = function () {
      showTotalTime();
    };

    //< !--================================= 28일 오전 추가 ↑ ===============================-->

    //<!--=================================28일 오후 추가 ↓ ===============================-->
    const taskInput = document.getElementById('taskInput');
    const taskList = document.getElementById('taskList');
    let tasks = [];

    loadTasks(); // 페이지 로드 시 할 일 목록 불러오기

    function addTask() {
      const taskText = taskInput.value.trim();
      if (taskText !== '') {
        tasks.push({ text: taskText, completed: false });
        saveTasks(); // 변경된 할 일 목록 저장
        renderTasks(); // 변경된 목록 화면에 출력
        taskInput.value = '';
      }
    }

    function saveTasks() {
      localStorage.setItem('tasks', JSON.stringify(tasks));
    }

    function loadTasks() {
      if (localStorage.getItem('tasks')) {
        tasks = JSON.parse(localStorage.getItem('tasks'));
        renderTasks();
      }
    }

    function renderTasks() {
      taskList.innerHTML = '';
      tasks.forEach((task, index) => {
        const li = document.createElement('li');
        li.innerHTML = `
        	<span class="check-btn">&#x2714;</span>
            <span style="position: relative; z-index: 500;">${task.text}</span>
            <span class="delete-btn">&#x2716;</span>
        `;
        if (task.completed) {
          li.classList.add('checked');
        }
        li.querySelector('.check-btn').addEventListener('click', function (e) {
          e.stopPropagation();
          tasks[index].completed = !tasks[index].completed;
          saveTasks();
          renderTasks();
        });
        li.querySelector('.delete-btn').addEventListener('click', function (e) {
          e.stopPropagation();
          tasks.splice(index, 1);
          saveTasks();
          renderTasks();
        });
        li.addEventListener('click', function () {
          tasks[index].completed = !tasks[index].completed;
          saveTasks();
          renderTasks();
        });
        taskList.appendChild(li);
      });
    }

    taskInput.addEventListener('keypress', function (e) {
      if (e.key === 'Enter') {
        addTask();
      }
    });

    taskList.addEventListener('click', function (e) {
      if (e.target.tagName === 'LI') {
        const index = Array.from(e.target.parentNode.children).indexOf(e.target);
        tasks[index].completed = !tasks[index].completed;
        saveTasks();
        renderTasks();
      }
    });

    //----------------------------------------캘린더 수정

    const calendarGridElem = document.getElementById('calendarGrid');
    const curMonthDisplayElem = document.getElementById('curMonthDisplay');
    const modalBoxElem = document.getElementById('modalBox');
    const schedInputModalElem = document.getElementById('schedInputModal');
    const schedListModalElem = document.getElementById('schedListModal');

    let curDate = new Date();
    let curMonth = curDate.getMonth();
    let curYear = curDate.getFullYear();
    let curDay = curDate.getDate();
    let schedules = [];
    let firstDayOfMonth, lastDateOfMonth;

    function renderCalendar() {
      calendarGridElem.innerHTML = '';
      curMonthDisplayElem.textContent = `${curYear}년 ${curMonth + 1}월`;

      firstDayOfMonth = new Date(curYear, curMonth, 1).getDay();
      lastDateOfMonth = new Date(curYear, curMonth + 1, 0).getDate();

      for (let i = 0; i < firstDayOfMonth; i++) {
        const dayCell = createDayCell('', true);
        calendarGridElem.appendChild(dayCell);
      }

      for (let day = 1; day <= lastDateOfMonth; day++) {
        const dayCell = createDayCell(day);
        calendarGridElem.appendChild(dayCell);
      }

      const totalCells = 42; // 6 rows * 7 days
      const remainingCells = totalCells - (firstDayOfMonth + lastDateOfMonth);
      for (let i = 0; i < remainingCells; i++) {
        const dayCell = createDayCell('', true);
        calendarGridElem.appendChild(dayCell);
      }
      updateDotIndicators();
    }
    function createDayCell(day, isInactive = false) {
      const dayCell = document.createElement('div');
      dayCell.textContent = day;
      dayCell.classList.add('day-cell');
      if (isInactive) {
        dayCell.classList.add('inactive');
      } else {
        dayCell.addEventListener('click', function () {
          showModal(parseInt(day));
        });
      }
      const dot = document.createElement('div');
      dot.classList.add('dot');
      dayCell.appendChild(dot);

      return dayCell;
    }
    function prevMonth() {
      curMonth--;
      if (curMonth < 0) {
        curMonth = 11;
        curYear--;
      }
      updateMonthData();
      renderCalendar();
    }
    function nextMonth() {
      curMonth++;
      if (curMonth > 11) {
        curMonth = 0;
        curYear++;
      }
      updateMonthData();
      renderCalendar();
    }
    function updateMonthData() {
      firstDayOfMonth = new Date(curYear, curMonth, 1).getDay();
      lastDateOfMonth = new Date(curYear, curMonth + 1, 0).getDate();
    }
    function showModal(day) {
      modalBoxElem.style.display = 'flex';
      renderSchedList(day);
    }
    function closeModal() {
      modalBoxElem.style.display = 'none';
    }
    function addScheduleModal() {
      const schedText = schedInputModalElem.value.trim();
      if (schedText !== '') {
        schedules.push({ day: curDay, text: schedText });
        renderSchedList(curDay);
        schedInputModalElem.value = '';
        closeModal();
        renderCalendar();
      }
    }
    function renderSchedList(day) {
      curDay = day;
      schedListModalElem.innerHTML = '';
      schedules.forEach(schedule => {
        if (schedule.day === day) {
          const schedItem = document.createElement('div');
          schedItem.classList.add('schedule-item');
          schedItem.textContent = schedule.text;
          const deleteBtn = document.createElement('button');
          deleteBtn.textContent = '일정 삭제';
          deleteBtn.addEventListener('click', function () {
            deleteSchedule(day, schedule.text);
          });
          schedItem.appendChild(deleteBtn);
          schedListModalElem.appendChild(schedItem);
        }
      });
      updateDotIndicators();
    }
    function deleteSchedule(day, text) {
      schedules = schedules.filter(schedule => !(schedule.day === day && schedule.text === text));
      renderSchedList(day);
      updateDotIndicators();
      renderCalendar();
    }
    function updateDotIndicators() {
      const dots = document.querySelectorAll('.dot');
      dots.forEach((dot, index) => {
        if (index < firstDayOfMonth || index >= firstDayOfMonth + lastDateOfMonth) {
          dot.style.display = 'none';
        } else {
          const day = index - firstDayOfMonth + 1;
          if (hasSchedule(day)) {
            dot.style.display = 'block';
          } else {
            dot.style.display = 'none';
          }
        }
      });
    }
    function hasSchedule(day) {
      return schedules.some(schedule => schedule.day === day);
    }
    renderCalendar();


    //< !--================================= 28일 오후 추가 ↑ ===============================-->

</script>

	<script>

 function askQuestion() {
     // 질문 입력값 가져오기
     var question = document.getElementById("search-input2").value;
     console.log("question");
     

     // 질문이 비어 있는지 확인
     if (question.trim() === "") {
         alert("질문을 입력하세요.");
         return;


    // 모달을 닫기 위한 함수
    function closeModal() {
      modal.style.display = 'none';
    }

    // 이전 버튼을 눌렀을 때의 동작을 정의하는 함수
    function showPrev() {
      if (currentIndex > 0) {
        currentIndex--;
        updateModalContent();
      }
    }

    // 다음 버튼을 눌렀을 때의 동작을 정의하는 함수
    function showNext() {
      if (currentIndex < questionsAndAnswers.length - 1) {
        currentIndex++;
        updateModalContent();
      }
    }

    // 모달 내용을 업데이트하는 함수
    function updateModalContent() {
      modalContent.innerHTML = `<strong>질문:</strong> ${questionsAndAnswers[currentIndex].question}<br><strong>답변:</strong> ${questionsAndAnswers[currentIndex].answer}`;
      updateButtonStates();
    }

    // 이전 버튼과 다음 버튼의 활성화 여부를 업데이트하는 함수
    function updateButtonStates() {
      prevButton.disabled = currentIndex <= 0;
      nextButton.disabled = currentIndex >= questionsAndAnswers.length - 1;
    }

    // 에러를 표시하는 함수
    function displayError(message) {
      alert(`에러 발생: ${message}`);
    }
    
    window.onload = function () {
        showTotalTime();
      };
      
  </script>
	<script>
    // 서블릿으로부터 JSON 데이터 요청하는 함수
    function requestJSONData() {
        var xhr = new XMLHttpRequest();

        // 서블릿 URL 형태
        xhr.open('GET', '/Makers/TakeTests', true);
        xhr.responseType = 'json';
        // 바 차트와 꺾은선 그래프를 함께 그리는 함수 호출
        xhr.onreadystatechange = function() {
            if (xhr.readyState == 4 && xhr.status == 200) {
                var jsonData = xhr.response;
                drawMixedChart(jsonData);
                drawBarChart2(jsonData);
            }
        };
        xhr.send();
    }

    // 바 차트와 꺾은선 그래프를 함께 그리는 함수
    function drawMixedChart(jsonData) {
        var labels = []; // x축 라벨
        var barData = []; // 바 차트에 표시할 데이터
        var lineData = []; // 꺾은선 그래프에 표시할 데이터

        // JSON 데이터를 그래프에 필요한 형식으로 변환
        for (var i = 0; i < jsonData.length; i++) {
            labels.push(new Date(jsonData[i].date).toISOString().slice(0, 10)); // x축 라벨에 날짜 추가 (날짜만 표시)
            barData.push(jsonData[i].score); // 바 차트 데이터에 점수 추가
            lineData.push(jsonData[i].score); // 꺾은선 그래프 데이터에 점수 추가
        }

        // 바 차트와 꺾은선 그래프 그리기
        var ctx = document.getElementById('snake2').getContext('2d');
        var mixedChart = new Chart(ctx, {
            type: 'bar',
            data: {
                labels: labels,
                datasets: [{
                    label: 'Line Chart',
                    data: lineData,
                    borderColor: 'rgba(30, 144, 255, 1)', 
                    fill: false,
                    type: 'line'
                }, {
                    label: 'Bar Chart',
                    data: barData,
                    backgroundColor: '#ffb6c1', 
                    borderWidth: 2
                }]
            },
            options: {
                scales: {
                    y: [{
                        ticks: {
                            beginAtZero: true,
                            max: 100 // 스케일 최대값을 100으로 설정
                        }
                    }]
                }
            }
        });
    }

    // 서블릿으로부터 JSON 데이터 요청하는 함수
    function requestJSONData2() {
        var xhr = new XMLHttpRequest();

        // 서블릿 URL 형태
        xhr.open('GET', '/Makers/TakeTests_avg', true)
        xhr.responseType = 'json';
        // 막대차트를 그리는 함수 호출
        xhr.onreadystatechange = function () {
            if (xhr.readyState == 4 && xhr.status == 200) {
                console.log(xhr.response)
                drawBarChart2(xhr.response);
            }
        };
        xhr.send();
    }

 // 가로형 막대차트를 그리는 함수
    function drawBarChart2(jsonData) {
        var subjects = []; // x축 라벨
        var averages = []; // 막대차트에 표시할 평균 점수
        var pastelColors = ['#DEB8B8', '#87cefa', '#C6DBDA', '#ffe4e1', '#B594CD']; // 파스텔톤 색상 배열

        // JSON 데이터를 바 차트에 필요한 형식으로 변환
        for (var i = 0; i < jsonData.length; i++) {
            subjects.push((i + 1) + "과목"); // 과목 추가
            averages.push(jsonData[i]["average"]); // 평균 점수 추가
        }

        // 가로형 막대차트 그리기
        var ctx = document.getElementById('snake3').getContext('2d');
        var chart = new Chart(ctx, {
            type: 'bar',
            data: {
                labels: subjects,
                datasets: [{
                    label: '평균 점수',
                    data: averages,
                    backgroundColor: pastelColors, // 파스텔톤 색상 배열 사용
                    borderWidth: 2,
                }]
            },
            options: {
                scales: {
                    xAxes: [{
                        ticks: {
                            beginAtZero: true,
                            max: 100 // 스케일 최대값을 100으로 설정
                        }
                    }]
                }
            }
        });
    }

    // 페이지 로드 시 서블릿으로부터 JSON 데이터 요청
    window.onload = function () {
        requestJSONData();
        requestJSONData2();
    };


</script>

</body>
<script src="assets/js/calendar.js"></script>
<script src="assets/js/mapScript.js"></script>
<!-- <script src="assets/js/Chart.js"></script> -->
</html>