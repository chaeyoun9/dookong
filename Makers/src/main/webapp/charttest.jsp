<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html>
<head>
<title>바 차트와 꺾은선 그래프</title>
<!-- 차트를 그릴 라이브러리 로드 -->
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>
	<!-- 그래프를 그릴 canvas 요소 -->
	<canvas id="mixedChart" width="400" height="400"></canvas>

	<script>
		// 서블릿으로부터 전달받은 JSON 데이터
		// var jsonData = ${testList};

		// 서블릿으로부터 JSON 파일 요청하는 함수
		function requestJSONData() {
			var xhr = new XMLHttpRequest();

			// 서블릿 url 형태
			xhr.open('GET', '/Makers/TakeTests', true);
			xhr.responseType = 'json';
			// 바 차트와 꺾은선 그래프를 함께 그리는 함수 호출
			xhr.onreadystatechange = function() {
				if (xhr.readyState == 4 && xhr.status == 200) {
					drawMixedChart(xhr.response);
				}
			};
			xhr.send();
		}

		// 바 차트와 꺾은선 그래프를 함께 그리는 함수
		function drawMixedChart(jsonData) {
			var labels = []; // x축 라벨
			var barData = []; // 바 차트에 표시할 데이터
			var lineData = []; // 꺾은선 그래프에 표시할 데이터

			// JSON 데이터를 그래프에 필요한 형식으로 변환
			for (var i = 0; i < jsonData.length; i++) {
				labels.push(jsonData[i].date); // x축 라벨에 날짜 추가
				barData.push(jsonData[i].score); // 바 차트 데이터에 점수 추가
				lineData.push(jsonData[i].score); // 꺾은선 그래프 데이터에 점수 추가
			}

			// 바 차트와 꺾은선 그래프 그리기
			var ctx = document.getElementById('mixedChart').getContext('2d');
			var mixedChart = new Chart(ctx, {
				type : 'bar',
				data : {
					labels : labels,
					datasets : [ {
						label : 'Line Chart',
						data : lineData,
						borderColor : 'rgba(30, 144, 255, 1)', // 꺾은선 그래프 색상 (파스텔톤의 남색)
						fill : false,
						type : 'line'
					}, {
						label : 'Bar Chart',
						data : barData,
						backgroundColor : '#ffb6c1', // 바 차트 색상 (연한 파스텔 분홍색)
						borderWidth : 2
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
