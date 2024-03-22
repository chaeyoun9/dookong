<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">

  <title>Makers</title>
  <meta name="description" content="Figma htmlGenerator">
  <meta name="author" content="htmlGenerator">
  <link rel="stylesheet" href="assets/css/styles.css">

 
  <script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
</head>

<body>

  <div class="e239_3616">
    <div class="MAKERSback"></div>
    <h1 class="e123_1">대시보드로 확인하는 나의 실력변화</h1>
    <p class="e123_2">어제보다 얼마나 늘었을까?</p>
    <h1 class="MAKERS">: MAKERS</h1>
    <h1 class="Login_Study_with">Study with us!</h1>
    <p class="Login_Study">메이커스와 함께 공부해보세요</p>

    <h1 class="you">you are new? <a href="Join.html">Create new</a></h1>
    
    <!-- <div class="e239_4043"></div> -->
    <div class="myChart">
      <canvas id="myChart"></canvas>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

    <script>
      const ctx = document.getElementById('myChart');

      new Chart(ctx, {
        type: 'doughnut',
        data: {
          datasets: [{
            label: '# of Votes',
            data: [300, 50, 100, 50],
            backgroundColor: [
              'rgb(255, 99, 132)',
              'rgb(54, 162, 235)',
              'rgb(255, 205, 86)',
              'rgb(190,210,100)'
            ],
            hoverOffset: 4
          }]
        }

      });
    </script>
    <h1 class="Login_Study_with">Study with us!

    <h1 class="you">you are new? <a href="Main_Join.jsp">Create new</a></h1>

    <form action="LoginService" class="id">
		
      <div class="icon-input1">
        
        <input class="in_put" name = "id" type="text" autofocus name="id" placeholder="아이디 입력">
      </div>
      <br>
      <br>

      <div class="icon-input1">
        <input class="in_put" name = "pw" type="password" name="pw" placeholder="●●●●●●●">
      </div>
      <br>
      <br>

      <button class="singin "name = "LoginBtn" type="submit">Login</button>

    </form>

	<script>
		
	</script>

  </div>

</body>

</html>