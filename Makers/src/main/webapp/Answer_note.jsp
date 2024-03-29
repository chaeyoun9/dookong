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
  <link rel="stylesheet" href="assets/css/answer_note.css?after">
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
        <img src="img/사용자 프로필.jpg" width="153px" height="182px">
      </div>
      <div class="e296_3459"></div>

      <div class="categories">
            <a href="Study_page.jsp" class="category-btn">
              <div class="category-icon">&#128218;</div>
              <div class="category-title">학습 페이지</div>
            </a>
        
            <a href="newtest.jsp" class="category-btn">
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


    </div>

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
  </div>
  </div>
<div class="e296_3464">
    <div class="file-container">
      <div class="file-item" onclick="openNotePage('Questions.jsp')">
        <i class="fas fa-book file-icon"></i>
        <div class="file-label">2020_06_06</div>
      </div>
      <div class="file-item" onclick="openNotePage('Questions.jsp')">
        <i class="fas fa-book file-icon"></i>
        <div class="file-label">2020_08_22</div>
      </div>
      <div class="file-item" onclick="openNotePage('Questions.jsp')">
        <i class="fas fa-book file-icon"></i>
        <div class="file-label">2020_09_26</div>
      </div>
      <div class="file-item" onclick="openNotePage('Questions.jsp')">
        <i class="fas fa-book file-icon"></i>
        <div class="file-label">2021_03_07</div>
      </div>
    </div>

    <div class="file-container">
      <div class="file-item" onclick="openNotePage('Questions.jsp')">
        <i class="fas fa-book file-icon"></i>
        <div class="file-label">2021_05_15</div>
      </div>
      <div class="file-item" onclick="openNotePage('Questions.jsp')">
        <i class="fas fa-book file-icon"></i>
        <div class="file-label">2021_08_14</div>
      </div>
      <div class="file-item" onclick="openNotePage('Questions.jsp')">
        <i class="fas fa-book file-icon"></i>
        <div class="file-label">2022_03_05</div>
      </div>
      <div class="file-item" onclick="openNotePage('Questions.jsp')">
        <i class="fas fa-book file-icon"></i>
        <div class="file-label">2022_04_24</div>
      </div>
    </div>

    <div class="file-container">
      <div class="file-item" onclick="openNotePage('Questions.jsp')">
        <i class="far fa-file-alt file-icon"></i>
        <div class="file-label">1 과목(소프트웨어 설계)</div>
      </div>
      <div class="file-item" onclick="openNotePage('Questions.jsp')">
        <i class="far fa-file-alt file-icon"></i>
        <div class="file-label">2 과목(소프트웨어 개발)</div>
      </div>
      <div class="file-item" onclick="openNotePage('Questions.jsp')">
        <i class="far fa-file-alt file-icon"></i>
        <div class="file-label">3 과목(데이터 베이스 구축)</div>
      </div>
      <div class="file-item" onclick="openNotePage('Questions.jsp')">
        <i class="far fa-file-alt file-icon"></i>
        <div class="file-label">4 과목(프로그래밍 언어 활용)</div>
      </div>
      <div class="file-item" onclick="openNotePage('Questions.jsp')">
        <i class="far fa-file-alt file-icon"></i>
        <div class="file-label">5 과목(정보시스템 구축관리)</div>
      </div>
    </div>
  </div>



  <script>function openNotePage(url) { window.location.href = url; }</script>
  <script src="assets/js/script.js"></script>
</body>

</html>