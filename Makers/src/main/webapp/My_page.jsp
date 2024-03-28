<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.dookong.model.MemberDTO" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">

  <title>Makers</title>
  <meta name="description" content="Figma htmlGenerator">
  <meta name="author" content="htmlGenerator">
  
 <link href="https://fonts.googleapis.com/css?family=SeoulHangang+CBL&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=SeoulHangang+CB&display=swap" rel="stylesheet">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">


  <link rel="stylesheet" href="assets/css/My_page.css?after">

 <style>
    body {
      background-color: rgb(240,240,240);
      font-family: "Gowun Dodum", sans-serif;
      margin: 0%;
      padding: 0%;
    }
  </style>

</head>

<body>
  <div class="e270_6138">
    <div class="e270_6082"></div>
    <div class="e270_6083"></div>
    
    <div class="categories">
      <!-- 카테고리 버튼 -->
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
        <div class="category-title" style="color: red;">마이페이지</div>
      </a>
  
      <a href="#" id="logout-btn" class="category-btn">
        <div class="category-icon">&#128075;</div>
        <div class="category-title">Sign Out</div>
      </a>
    </div>
    
    <div class="e270_6085"><img src="img/두콩이.png" width="153" height="182"></div>
    <div class="e270_6093"><img src="img/두콩이.png" width="153" height="182"></div>
    <span class="e270_6087"><a href="Study_page.html">학습 페이지</a></span>
    <span class="e270_6091">마이페이지</span>
    <span class="e270_6089"><a href="Main_Login.jsp">SIGN OUT</a></span>
    <span class="e270_6088"><a href="Main.jsp">학습 대시보드</a></span>
    <h1 class="e270_6092">마이페이지</h1>
              <%String name = (String)session.getAttribute("name"); 
          MemberDTO dto=(MemberDTO)session.getAttribute("dto");
  %>
    <h2 class="e270_6094"><%=name %>님</h2>
    <p class="e270_6095">정보처리기사</p>
    <span class="e270_6096">NICKNAME</span>
    <span class="e270_6120">바꿀 PASSWORD</span>
    <span class="e270_6107">현재 PASSWORD</span>
    
    <form action="UpdateService" method="post">
      <div>
        <input class="co_1" type="test" autofocus name="nick" placeholder="  한글/영문 1~10자">
        <input class="co_2" type="password" autofocus name="cur_pw" placeholder="  영문 대/소문자, 숫자, 특수기호 포함 8~16자">
        <input class="co_3" type="password" autofocus name="re_pw" placeholder="  영문 대/소문자, 숫자, 특수기호 포함 8~16자">
        <input class="co_4" type="password" autofocus name="check_pw" placeholder="  영문 대/소문자, 숫자, 특수기호 포함 8~16자">
        <button class="co_5" type="submit" >수정 완료</button>
      </div>
    </form>



    
    <!-- <form action="" class="id">

      <div class="icon-input1">
        <input class="in_put input-field" type="text" autofocus name="id" placeholder="아이디 입력">
      </div>

      <br>
      <br>

      <div class="icon-input1">
        <input class="in_put input-field" type="password" name="pw" placeholder="●●●●●●●">
      </div>

      <br>
      <br>

      <button class="singin" type="button" onclick="window.location.href='Main_Page.html';">Login</button>

    </form> -->


    <div class="e270_6098">
      <div class="e270_6099">
        <div class="ei270_6099_22_865">
        </div>
        <div class="ei270_6099_22_866">
        </div>
      </div>
    </div>
    <div class="e270_6110">
      <div class="e270_6111">
        <div class="ei270_6111_22_865"></div>
        <div class="ei270_6111_22_866"></div>
      </div>
    </div>
    <div class="e270_6129">
      <div class="e270_6130">
        <div class="ei270_6130_22_865"></div>
        <div class="ei270_6130_22_866"></div>
      </div>
    </div>
    <div class="e270_6122">
      <div class="e270_6123">
        <div class="ei270_6123_22_865"></div>
        <div class="ei270_6123_22_866"></div>
      </div>
    </div>
    <span class="e270_6128">PASSWORD 확인</span>
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
  </script>
</body>

</html>