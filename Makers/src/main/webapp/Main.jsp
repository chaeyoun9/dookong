<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.dookong.model.MemberDTO"%>
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
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>


<script
	src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=011f9701e3d12de2d1801227d712e025&libraries=services"></script>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<link href='fullcalendar/main.css' rel='stylesheet' />
<script src='fullcalendar/main.js'></script>
<script
	src="https://cdn.jsdelivr.net/npm/fullcalendar@6.1.11/index.global.min.js"></script>


<style>
<
style>body {
	background: white;
	font-family: "Gowun Dodum", sans-serif;
	margin: 0%;
	padding: auto;
}
</style>
</head>

<body>

	<div class="e266_5958">
		<div class="e253_5953">
			<div class="e253_5898"></div>
			<div class="e253_5955">
				<div class="e253_5943">
					<div class="e253_5875"></div>
					<div class="e253_5876"></div>

					<!--  사용자 이름 출력 부분  -->
					<%
					String name = (String) session.getAttribute("name");
					MemberDTO dto = (MemberDTO) session.getAttribute("dto");
					%>
					<h1 class="e253_5894">
						어서오세요
						<%=name%>님!
					</h1>
					<div class="e253_5897">
						<img src="img/두콩이.png" width="153" height="182">
					</div>


					<!-- 카테고리 버튼 -->
					<div class="categories">
						<a href="Study_page.jsp" class="category-btn">
							<div class="category-icon">&#128218;</div>
							<div class="category-title">학습 페이지</div>
						</a> <a href="Main.jsp" class="category-btn">
							<div class="category-icon">&#128202;</div>
							<div class="category-title">학습 대시보드</div>
						</a> <a href="My_page.jsp" class="category-btn">
							<div class="category-icon">&#128100;</div>
							<div class="category-title">마이페이지</div>
						</a> <a href="Main_Login.jsp" class="category-btn">
							<div class="category-icon">&#128075;</div>
							<div class="category-title">Sign Out</div>
						</a>
					</div>


					<!-- 차트 부분 -->
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


					<!--  평균 점수 랭킹 -->
					<div class="e253_5906"></div>
					<!--평균 점수 랭킹-->
					<div class="e253_5907"></div>
					<!--지도API 백그라운드-->
					<div class="e253_5908"></div>
					<!--풀이시간-->
					<div class="e253_5942">
						<div id="elapsedTimeContainer">
							<span id="elapsedTime"></span>M
						</div>
					</div>

					<div class="e253_5909"></div>
					<div class="e253_59099">
						<canvas id="snake5"></canvas>
						<!--도넛새끼-->
					</div>
					<!--  출석 데이터 연결 완료 -->

					<form action="ClickCountService" method="post">

						<span class="e253_59473">메이커스와 함께
							<h1 id="clickCount"><%=session.getAttribute("dateCnt")%></h1>일
							공부했어요
						</span>
						<button class="e253_59474" type="submit" id="clickButton"
							name="clicked" onclick="updateCount()()">출석하기</button>

					</form>


					<!--  출석 데이터 연결 스크립트 -->
					<script>
						function updateCount() {
							var countSpan = document
									.getElementById("clickCount");
							var currentCount = parseInt(countSpan.textContent);
							currentCount++;
							countSpan.textContent = currentCount;

							// 버튼 비활성화 및 다시 활성화
							document.getElementById("clickButton").disabled = true;
							setTimeout(
									function() {
										document.getElementById("clickButton").disabled = false;
									}, 24 * 60 * 60 * 1000); // 24시간 후에 다시 활성화 (24 * 60 * 60 * 1000)

						}
					</script>


					<div class="e253_5910"></div>
					<!--한줄지식-->

					<!-- ==================================================================================== -->
					<!-- FullCalendar -->

					<!-- FullCalendar -->
					<div class="e253_5911" id="calendar"></div>
					<!-- 캘린더 -->
					<button id="addEventButton">일정 추가</button>

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
						<div>
							<input id="search-input2" type="text" autofocus name="question"
								placeholder="궁금한 것이 있나요?">
						</div>
						<div>
							<button id="search-btn2">검색</button>
						</div>
					</div>
					<div id="search-results2"></div>
					<div class="e253_5944">
						<div class="ei253_5944_3_9146"></div>
						<div class="ei253_5944_3_9147"></div>
					</div>
					<div class="e253_5949"></div>
					<span class="e253_5951">UI(User Interface)란?</span>
					<div class="e253_5947"></div>
					<span class="e253_5948">한줄 지식</span>
					<div class="e253_59471"></div>
					<h1 class="e253_59481">:Makers 평균 점수 랭킹</h1>


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
					<span class="e253_5952">사용자가 어떤 방식으로</span> <span class="e253_5954">응용
						프로그램을 이용하는가를 설계하는 작업이다.</span>
				</div>
			</div>
			<h1 class="e253_5941">
				완두콩님의<br>회차당 평균 풀이시간
			</h1>
		</div>
		<script src="assets/js/mapScript.js"></script>
		<script src="assets/js/Chart.js"></script>

		<script src="assets/js/calendar.js"></script>
</body>

</html>