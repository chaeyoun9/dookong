<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html>
<head>
<title>가로형 바 차트</title>
<!-- 가로형 바 차트를 그릴 라이브러리 로드 -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/js/all.min.js"></script>
</head>
<body>
	<!-- 바 차트를 그릴 canvas 요소 -->
	<canvas id="barChart2" width="400" height="400"></canvas>

	<script>
		// 서블릿으로부터 전달받은 JSON 데이터
		// var jsonData = ${testList};

		// 서블릿으로부터 JSON 파일 요청하는 함수
		function requestJSONData() {
			var xhr = new XMLHttpRequest();

			// 서블릿 url 형태
			xhr.open('GET', '/Makers/TakeTests_avg', true)
			xhr.responseType = 'json';
			// 가로형 막대차트를 그리는 함수 호출
			xhr.onreadystatechange = function() {
				if (xhr.readyState == 4 && xhr.status == 200) {
					console.log(xhr.response)
					drawBarChart2(xhr.response);
				}
			};
			xhr.send();
		}

		// 가로형 막대차트를 그리는 함수
		function drawBarChart2(jsonData) {
			var subjects = []; // x축 라벨
			var averages = []; // 막대차트에 표시할 평균 점수

			// JSON 데이터를 바 차트에 필요한 형식으로 변환
			for (var i = 0; i < jsonData.length; i++) {
				subjects.push(jsonData[i]["과목" + (i + 1)]); // 과목 추가
				averages.push(jsonData[i]["average"]); // 평균 점수 추가
			}

			// 디버깅용 서버로부터 받은 JSON 데이터 출력
			console.log("서버로부터 받은 JSON 데이터:");
			console.log(jsonData);

			// 가로형 막대차트 그리기
			var ctx = document.getElementById('barChart2').getContext('2d');
			var chart = new Chart(ctx, {
				type : 'horizontalBar',
				data : {
					labels : subjects,
					datasets : [ {
						label : '평균 점수',
						data : averages,
						backgroundColor : '#47c6cd', // 막대 색상
						borderWidth : 2,
					} ]
				},
				options : {
					scales : {
						xAxes : [ {
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
