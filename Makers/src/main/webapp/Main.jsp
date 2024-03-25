<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <title>Makers</title>
  <meta name="description" content="Figma htmlGenerator">
  <meta name="author" content="htmlGenerator">
  <link href="https://fonts.googleapis.com/css?family=SeoulHangang+CBL&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=SeoulHangang+CB&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="assets/css/Main_Page.css?after">
  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
  <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=011f9701e3d12de2d1801227d712e025&libraries=services"></script>
  <style>
    body {
      background: #E5E5E5;
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
          <h1 class="e253_5894">어서오세요 완두콩님!</h1>
          <div class="e253_5897"><img src="img/두콩이.png" width="153" height="182"></div>
          
          
          <div class="categories">
            <!-- 카테고리 버튼 -->
            <a href="Study_page.html" class="category-btn">
              <div class="category-icon">&#128218;</div>
              <div class="category-title">학습 페이지</div>
            </a>
        
            <a href="Main_Page.html" class="category-btn">
              <div class="category-icon">&#128202;</div>
              <div class="category-title">학습 대시보드</div>
            </a>
        
            <a href="My_page.html" class="category-btn">
              <div class="category-icon">&#128100;</div>
              <div class="category-title">마이페이지</div>
            </a>
        
            <a href="Login.html" class="category-btn">
              <div class="category-icon">&#128075;</div>
              <div class="category-title">Sign Out</div>
            </a>
          </div>


          <div class="e253_5902"><!--주차별 개선율-->
            <canvas id="snake" width="150" height="90"></canvas>
          </div>

          <div class="e253_5903"><!--과목별 학습 진행률-->
            <canvas id="snake4" width="150" height="100"></canvas>
          </div>

          <div class="e253_5904"><!--회차별 점수-->
            <canvas id="snake2" width="150" height="120"></canvas>
          </div>

          <div class="e253_5905"><!--과목별 평균점수-->
            <canvas id="snake3" width="180" height="140"></canvas>
          </div>

          <div class="e253_5906"></div><!--평균 점수 랭킹-->
          <div class="e253_5907"></div><!--지도API 백그라운드-->
          <div class="e253_5908"></div><!--풀이시간-->
          <span class="e253_5942">1H 47M</span>

          <div class="e253_5909"></div>
          <div class="e253_59099">
            <canvas id="snake5"></canvas><!--도넛새끼-->
          </div>
          <span class="e253_59473">이번달 메이커스와 함께<h1>15일</h1>공부했어요</span><!--변수지정-->
          <button class="e253_59474">출석하기</button>
          <div class="e253_5910"></div><!--한줄지식-->
          <div class="e253_5911"></div><!--캘린더-->

          <div class="calendar">
            <div class="calendar-header">
              <button onclick="prevMonth()">&lt; 이전 달</button>
              <h2 id="month-year"></h2>
              <button onclick="nextMonth()">다음 달 &gt;</button>
            </div>
            <div class="calendar-grid" id="calendar-grid"></div>
            <div class="btn-container">
            </div>
          </div>

          <div>
            <input class="e253_5912" type="text" autofocus name="question" placeholder="     궁금한 것이 있나요?">
          </div>
        </div>
        <div class="e253_5944">
          <div class="ei253_5944_3_9146"></div>
          <div class="ei253_5944_3_9147"></div>
        </div>
        <div class="e253_5949"></div><span class="e253_5951">UI(User Interface)란?</span>
        <div class="e253_5947"></div><span class="e253_5948">한줄 지식</span>
        <div class="e253_59471"></div>
        <h1 class="e253_59481">:Makers 평균 점수 랭킹</h1>
        <div>
          <input class="e253_59472" type="text" autofocus name="question" placeholder="     주소입력">
        </div>
          
        <div class="e253_59492">
        <div id="map" style="width:320px;height:200px;"></div>

		
		<script>
			var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
   			 mapOption = {
      			  center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
       			 level: 3 // 지도의 확대 레벨
  				  };  

		// 지도를 생성합니다    
			var map = new kakao.maps.Map(mapContainer, mapOption); 

		// 주소-좌표 변환 객체를 생성합니다
			var geocoder = new kakao.maps.services.Geocoder();

		// 주소로 좌표를 검색합니다
			geocoder.addressSearch('제주특별자치도 제주시 첨단로 242', function(result, status) {

   		 // 정상적으로 검색이 완료됐으면 
     		if (status === kakao.maps.services.Status.OK) {

       			 var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

        // 결과값으로 받은 위치를 마커로 표시합니다
       			 var marker = new kakao.maps.Marker({
           	 	map: map,
           		 position: coords
        		});

        // 인포윈도우로 장소에 대한 설명을 표시합니다
        	var infowindow = new kakao.maps.InfoWindow({
            content: '<div style="width:150px;text-align:center;padding:6px 0;">우리회사</div>'
        	});
        	infowindow.open(map, marker);

        	// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        	map.setCenter(coords);
    	} 
		});    
	</script>
        </div>
        
        <div class="e253_59491"></div>
        <span class="e253_5952">사용자가 어떤 방식으로</span>
        <span class="e253_5954">응용 프로그램을 이용하는가를 설계하는 작업이다.</span>
      </div>
    </div>
    <h1 class="e253_5941">완두콩님의</h1>
    <h1 class="e266_5957">회차당 평균 풀이시간</h1>
  </div>
  <script src="assets/js/Chart.js"></script>

</body>

</html>