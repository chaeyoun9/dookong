<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html>
<head>
<title>바 차트</title>
<!-- 바 차트를 그릴 라이브러리 로드 -->
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>
	<!-- 바 차트를 그릴 canvas 요소 -->
	<canvas id="barChart" width="400" height="400"></canvas>

	<script>
		// 서블릿으로부터 전달받은 JSON 데이터
		//var jsonData = ${testList};

		// 서블릿으로부터 JSON 파일 요청하는 함수
		function requestJSONData() {
			var xhr = new XMLHttpRequest();

	        // 서블릿 url 형태
	        xhr.open('GET', '/Makers/TakeTests', true)
	      	xhr.responseType='json';
			// 바 차트를 그리는 함수 호출
			xhr.onreadystatechange = function() {
				if (xhr.readyState == 4 && xhr.status == 200) {
					console.log(xhr.response)
					/*var db = JSON.stringify(xhr.responseText);
					console.log(db)
					var jsonData = JSON.parse(db);*/
        	        
					drawBarChart(xhr.response);
				}
			};
			xhr.send();
		}

		// 바 차트를 그리는 함수
		function drawBarChart(jsonData) {
			var labels = []; // x축 라벨
			var data = []; // 바 차트에 표시할 데이터

			// JSON 데이터를 바 차트에 필요한 형식으로 변환
			for (var i = 0; i < jsonData.length; i++) {
				labels.push(jsonData[i].date); // x축 라벨에 날짜 추가
				data.push(jsonData[i].score); // 데이터에 점수 추가
			}

			// 바 차트 그리기
			var ctx = document.getElementById('barChart').getContext('2d');
			var chart = new Chart(ctx, {
				type : 'bar',
				data : {
					labels : labels,
					datasets : [ {
						label : 'Score',
						data : data,
						backgroundColor : [ '#47c6cd', '#cef2f2', '#fdd4e2',
								'#f2c3e3', '#c992b9', ],
						borderWidth : 2,
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
