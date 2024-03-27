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
  

  <link rel="stylesheet" href="assets/css/My_page.css?after">

  <style>
   
    body {
      background: #E5E5E5;
      margin:0;
    }
  </style>

</head>

<body>
  <div class="e270_6138">
    <div class="e270_6082"></div>
    <div class="e270_6083"></div>
    <div class="e270_6085"><img src="img/두콩이.png" width="153" height="182"></div>
    <div class="e270_6093"><img src="img/두콩이.png" width="153" height="182"></div>
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
</body>

</html>