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
  <link rel="stylesheet" href="assets/css/Study_page.css?after">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
  <style>
    body {
      background: #E5E5E5;
      font-family: "Gowun Dodum", sans-serif;
    }
  </style>

</head>

<body>
  <div class="e296_3574">
    <div class="e296_3519">
      <div class="e296_3409"></div>
      <div class="e296_3411"></div>
      <div class="e296_3410">
        <img src="img/두콩이.png" width="153px" height="182px">
      </div>
      <div class="e296_3459"></div>

      <div class="categories">
        <a href="Study_page.jsp" class="category-btn">
          <div class="category-icon">&#128218;</div>
          <div class="category-title" style="color: red;">학습 페이지</div>
        </a>

        <a href="Main.jsp" class="category-btn">
          <div class="category-icon">&#128202;</div>
          <div class="category-title">학습 대시보드</div>
        </a>

        <a href="My_page.jsp" class="category-btn">
          <div class="category-icon">&#128100;</div>
          <div class="category-title">마이페이지</div>
        </a>

        <a href="Main_Login.jsp" class="category-btn">
          <div class="category-icon">&#128075;</div>
          <div class="category-title">Sign Out</div>
        </a>
      </div>


      <div class="e296_3464"></div>
      <button class="e296_3465" onclick="toggleNote()">문제 풀이</button>
      <button class="e296_3466" onclick="WrongNote()">오답노트</button>


      <div class="search-container3">
        <div>
          <input id="search-input3" type="text" autofocus name="question" placeholder="궁금한 것이 있나요?">
        </div>
        <div>
          <button id="search-btn3">검색</button>
        </div>
      </div>
      <div id="search-results3"></div>

      <div class="e296_3491">
        <div class="ei296_3491_3_9146"></div>
        <div class="ei296_3491_3_9147"></div>
      </div>
    </div>
  </div>
  <div class="e296_3464">
    <div class="file-container">
      <div class="file-item" onclick="openNotePage('questions.html')">
        <i class="fas fa-book file-icon"></i>
        <div class="file-label">2020_06_06</div>
      </div>
      <div class="file-item" onclick="openNotePage('questions.html')">
        <i class="fas fa-book file-icon"></i>
        <div class="file-label">2020_08_22</div>
      </div>
      <div class="file-item" onclick="openNotePage('questions.html')">
        <i class="fas fa-book file-icon"></i>
        <div class="file-label">2020_09_26</div>
      </div>
      <div class="file-item" onclick="openNotePage('questions.html')">
        <i class="fas fa-book file-icon"></i>
        <div class="file-label">2021_03_07</div>
      </div>
    </div>

    <div class="file-container">
      <div class="file-item" onclick="openNotePage('questions.html')">
        <i class="fas fa-book file-icon"></i>
        <div class="file-label">2021_05_15</div>
      </div>
      <div class="file-item" onclick="openNotePage('questions.html')">
        <i class="fas fa-book file-icon"></i>
        <div class="file-label">2021_08_14</div>
      </div>
      <div class="file-item" onclick="openNotePage('questions.html')">
        <i class="fas fa-book file-icon"></i>
        <div class="file-label">2022_03_05</div>
      </div>
      <div class="file-item" onclick="openNotePage('questions.html')">
        <i class="fas fa-book file-icon"></i>
        <div class="file-label">2022_04_24</div>
      </div>
    </div>

    <div class="file-container">
      <div class="file-item" onclick="openNotePage('questions.html')">
        <i class="far fa-file-alt file-icon"></i>
        <div class="file-label">1 과목(소프트웨어 설계)</div>
      </div>
      <div class="file-item" onclick="openNotePage('questions.html')">
        <i class="far fa-file-alt file-icon"></i>
        <div class="file-label">2 과목(소프트웨어 개발)</div>
      </div>
      <div class="file-item" onclick="openNotePage('questions.html')">
        <i class="far fa-file-alt file-icon"></i>
        <div class="file-label">3 과목(데이터 베이스 구축)</div>
      </div>
      <div class="file-item" onclick="openNotePage('questions.html')">
        <i class="far fa-file-alt file-icon"></i>
        <div class="file-label">4 과목(프로그래밍 언어 활용)</div>
      </div>
      <div class="file-item" onclick="openNotePage('questions.html')">
        <i class="far fa-file-alt file-icon"></i>
        <div class="file-label">5 과목(정보시스템 구축관리)</div>
      </div>
    </div>
  </div>

 <!--카테고리 일단 보류-->
  
 <!-- <div class="e296_3504"></div> -->
  <!-- <div class="e296_3511"></div> -->
  <!-- <h1 class="e296_35111">회차 및 과목을 선택해 주세요!</h1> -->

  <!-- <div class="custom-container">
      <div class="custom-categories">
        <div class="custom-category-btn" id="custom-type-category">
          <div class="custom-category-icon">&#128196;</div>
          <div class="custom-category-title1">문제 유형</div>
        </div>
        <div class="custom-category-btn" id="custom-date-category">
          <div class="custom-category-icon">&#128198;</div>
          <div class="custom-category-title2">회차</div>
        </div>
        <div class="custom-category-btn" id="custom-subject-category">
          <div class="custom-category-icon">&#128187;</div>
          <div class="custom-category-title3">과목</div>
        </div>
      </div>
      <div class="custom-subcategories" id="custom-type-subcategories" style="top: 57px; left: 0px;">
        <div class="custom-subcategory">모든 문제 풀기</div>
        <div class="custom-subcategory">한 문제씩 풀기</div>
      </div>
      <div class="custom-subcategories" id="custom-date-subcategories" style="top: 57px; left: 350px;">
        <div class="custom-subcategory">2022년 04월 24일</div>
        <div class="custom-subcategory">2022년 03월 05일</div>
        <div class="custom-subcategory">2021년 08월 14일</div>
        <div class="custom-subcategory">2021년 05월 15일</div>
        <div class="custom-subcategory">2021년 03월 07일</div>
      </div>
      <div class="custom-subcategories" id="custom-subject-subcategories" style="top: 57px; left: 700px;">
        <div class="custom-subcategory">1과목 : 소프트웨어 설계 (20문항)</div>
        <div class="custom-subcategory">2과목 : 소프트웨어 개발 (20문항)</div>
        <div class="custom-subcategory">3과목 : 데이터 베이스 구축 (20문항)</div>
        <div class="custom-subcategory">4과목 : 프로그래밍 언어 활용 (20문항)</div>
        <div class="custom-subcategory">5과목 : 정보시스템 구축관리 (20문항)</div>
      </div>
    </div> -->
  <script src="assets/js/script.js"></script>
</body>

</html>