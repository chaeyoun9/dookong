<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html>
<head>
<title>주차별 학습 개선율 그래프</title>
<!-- 차트를 그릴 라이브러리 로드 -->
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>
	<!-- 그래프를 그릴 canvas 요소 -->
	<canvas id="lineChart" width="400" height="400"></canvas>

	<script>
		// 서블릿으로부터 전달받은 JSON 데이터
		// var jsonData = ${weekData};

		// 서블릿으로부터 JSON 파일 요청하는 함수
		function requestJSONData() {
		var xhr = new XMLHttpRequest();

			// 서블릿 URL 형태
			xhr.open('GET', '/Makers/TakeTests_week', true);
			xhr.responseType = 'json';
			// 꺾은선 그래프를 그리는 함수 호출
			xhr.onreadystatechange = function() {
				if (xhr.readyState == 4 && xhr.status == 200) {
					console.log(xhr.response);
					drawLineChart(xhr.response);
				}
			};
			xhr.send();
		}

		// 꺾은선 그래프를 그리는 함수
		function drawLineChart(jsonData) {
			var weeks = []; // x축 라벨
			var improvementRates = []; // 학습 개선율

			// JSON 데이터를 그래프에 필요한 형식으로 변환
			for (var i = 0; i < jsonData.length; i++) {
				weeks.push((i + 1)+"주차"); // 주차 라벨
				improvementRates.push(jsonData[i].improvementRate); // 학습 개선율
			}

			// 그래프 그리기
			var ctx = document.getElementById('lineChart').getContext('2d');
			var chart = new Chart(ctx, {
				type : 'line',
				data : {
					labels : weeks,
					datasets : [ {
						label : '주차별 학습 개선율',
						data : improvementRates,
						fill : false,
						borderColor : '#47c6cd', // 선 색상
						borderWidth : 2,
						pointBackgroundColor : '#47c6cd', // 데이터 포인트 색상
						pointRadius : 5
					} ]
				},
				options : {
					scales : {
						yAxes : [ {
							ticks : {
								beginAtZero : true
							}
						} ]
					}
				}
			});
		}

		// 페이지 로드 시 서블릿으로부터 JSON 데이터 요청
		window.onload = function() {
			requestJSONData();
		};
	</script>
</body>
</html>
