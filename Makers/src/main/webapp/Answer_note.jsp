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
        <img src="img/두콩이.png" width="153px" height="182px">
      </div>
      <div class="e296_3459"></div>

      <div class="categories">
            <a href="Study_page.jsp" class="category-btn">
              <div class="category-icon">&#128218;</div>
              <div class="category-title">학습 페이지</div>
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




  <script>function openNotePage(url) { window.location.href = url; }</script>
  <script src="assets/js/script.js"></script>
</body>

</html>