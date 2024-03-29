<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="com.dookong.model.MemberDTO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

<title>Makers</title>
<meta name="description" content="Figma htmlGenerator">
<meta name="author" content="htmlGenerator">
<link rel="stylesheet" href="assets/css/styles.css?after">

<style>
body {
	background: #E5E5E5;
}
</style>
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
</head>

<body>

	<div class="e239_3616">
		<div class="MAKERSback"></div>
		<h1 class="e123_1">대시보드로 확인하는 나의 실력변화</h1>
		<p class="e123_2">어제보다 얼마나 늘었을까?</p>
		<h1 class="MAKERS">: MAKERS</h1>
		<!-- <div class="e239_4043"></div> -->
		<div class="myChart">
			<canvas id="myChart"></canvas>
		</div>
		<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

		<script>
			const ctx = document.getElementById('myChart');

			new Chart(ctx, {
				type : 'doughnut',
				data : {
					datasets : [ {
						label : '# of Votes',
						data : [ 300, 50, 100, 50 ],
						backgroundColor : [ 'rgb(255, 99, 132)',
								'rgb(54, 162, 235)', 'rgb(255, 205, 86)',
								'rgb(190,210,100)' ],
						hoverOffset : 4
					} ]
				}

			});
		</script>
		<h1 class="SUCCESS_WELCOME">WELCOME!</h1>
		<%
		String name = (String) request.getAttribute("info");
		%>
		<p class="SUCCESS_Study">
			메이커스와 함께 빛날
			<%=name%>님의 미래를 응원합니다
		</p>

		<form action="" class="id">
			<br> <br>
			<button class="singin2" type="button"
				onclick="window.location.href='Main_Login.jsp';">Login</button>
		</form>


	</div>

</body>
</html>