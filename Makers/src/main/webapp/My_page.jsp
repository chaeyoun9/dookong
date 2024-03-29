<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.dookong.model.MemberDTO"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">

<title>Makers</title>
<meta name="description" content="Figma htmlGenerator">
<meta name="author" content="htmlGenerator">

<link
	href="https://fonts.googleapis.com/css?family=SeoulHangang+CBL&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=SeoulHangang+CB&display=swap"
	rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap"
	rel="stylesheet">


<link rel="stylesheet" href="assets/css/My_page.css?after">
<link rel="icon" type="image/png" href="http://example.com/myicon.png">
<style>
body {
	background-color: rgb(240, 240, 240);
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
			</a> <a href="newtest.jsp" class="category-btn">
				<div class="category-icon">&#128202;</div>
				<div class="category-title">학습 대시보드</div>
			</a> <a href="My_page.jsp" class="category-btn">
				<div class="category-icon">&#128100;</div>
				<div class="category-title" style="color: red;">마이페이지</div>
			</a> <a href="#" id="logout-btn" class="category-btn">
				<div class="category-icon">&#128075;</div>
				<div class="category-title">Sign Out</div>
			</a>
		</div>

		<div class="e270_6085">
			<img src="img/두콩이.png" width="153" height="182">
		</div>
		<div class="e270_6093" id="profile-picture">
			<!-- <form action="ProfilePictureUploadServlet" method="post" enctype="multipart/form-data"> -->
			<img src="img/두콩이.png" width="153" height="182" id="previewId">
			<input type="file" name="profile"
				onchange="previewImage(event, 'previewId')" />

		</div>
		
		<%
		String name = (String) session.getAttribute("name");
		MemberDTO dto = (MemberDTO) session.getAttribute("dto");
		%>
		<h2 class="e270_6094"><%=name%>님
		</h2>
		<p class="e270_6095">정보처리기사</p>
		<span class="e270_6096">NICKNAME</span> <span class="e270_6120">바꿀
			PASSWORD</span> <span class="e270_6107">현재 PASSWORD</span>

		<form action="UpdateService" method="post">
			<div class="e270_6093" id="profile-picture">
				<!-- <form action="ProfilePictureUploadServlet" method="post" enctype="multipart/form-data"> -->
				<img src="img/두콩이.png" width="153" height="182" id="previewId">
				<input type="file" name="profile"
					onchange="previewImage(event, 'previewId')" />

			</div>
			<div>
				<input class="co_1" type="test" autofocus name="nick"
					placeholder="  한글/영문 1~10자"> <input class="co_2"
					type="password" autofocus name="cur_pw"
					placeholder="  영문 대/소문자, 숫자, 특수기호 포함 8~16자"> <input
					class="co_3" type="password" autofocus name="re_pw"
					placeholder="  영문 대/소문자, 숫자, 특수기호 포함 8~16자"> <input
					class="co_4" type="password" autofocus name="check_pw"
					placeholder="  영문 대/소문자, 숫자, 특수기호 포함 8~16자">
				<button class="co_5" type="submit">수정 완료</button>
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
				<div class="ei270_6099_22_865"></div>
				<div class="ei270_6099_22_866"></div>
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
		document.addEventListener('DOMContentLoaded', function() {
			const logoutBtn = document.getElementById('logout-btn');
			const modal = document.getElementById('logoutModal');
			const confirmBtn = document.getElementById('confirmBtn');
			const closeBtn = document.getElementById('closeBtn');

			logoutBtn.addEventListener('click', function() {
				modal.style.display = 'block'; // 모달 표시
			});

			confirmBtn.addEventListener('click', function() {
				window.location.href = 'Main_Login.jsp'; // 로그아웃 페이지 경로로 수정
			});

			closeBtn.addEventListener('click', function() {
				modal.style.display = 'none'; // 모달 숨김
			});

			window.addEventListener('click', function(event) {
				if (event.target === modal) {
					modal.style.display = 'none'; // 모달 숨김
				}
			});
		});

		/* document.addEventListener('DOMContentLoaded', function(){
			const profilePicture = document.getElementById('profile-picture');
			
			profilePicture.addEventListener('click', function(){
				// 파일 선택 창 열기
				const input = document.createElement('input');
				input.type = 'file';
				input.accept = 'image/*';
				input.onchange = function(event){
					const file = event.target.files[0];
					if(file){
						// 파일 업로드
						const formData = new FormData();
						// 파일 이름을 url 인코딩해서 FormData에 추가
						const encodedFileName = encodeURIComponent(file.name);
						// 프로필 이미지를 profilePicture라는 이름으로 서버로 전송 
						formData.append('profilePicture', file);
						
						fetch('ProfilePictureUploadServlet', {
							method : 'POST',
							body : formData
						})
						.then(response => {
							if(response.ok){
								// 파일 업로드가 성공하면 이미지를 표시할 url 받아오기
								return response.text();
							}else{
								throw new Error('프로필 이미지를 업로드하는 중 오류가 발생했습니다.');
							}
						})
						.then(imageUrl => {
							// 이미지를 표시할 img 요소의 src 속성에 imageUrl 설정
							const profileImage = document.getElementById('profile-picture').getElementsByTagName('img')[0];
							profileImage.src = imageUrl;
						})
						.catch(error => {
							console.error(error);
							alert(error.message);
						})
					  }
					};
				input.click();
			  });
			}); */

		function previewImage(event, previewId) {
			let input = event.target;

			var reader = new FileReader();
			reader.onload = function() {
				var dataURL = reader.result;
				var preview = document.getElementById(previewId);
				preview.src = dataURL;
			};

			reader.readAsDataURL(input.files[0]);
		}
			
			// 마이페이지의 JavaScript 코드 일부분

			function uploadProfilePicture(file) {
			    const formData = new FormData();
			    formData.append('profile', file);

			    fetch('ProfilePictureUploadServlet', {
			        method: 'POST',
			        body: formData
			    })
			    .then(response => {
			        if (response.ok) {
			            return response.text();
			        } else {
			            throw new Error('프로필 이미지를 업로드하는 중 오류가 발생했습니다.');
			        }
			    })
			    .then(imageUrl => {
			        // 이미지 URL을 받아온 후, 이를 사용하여 프로필 이미지를 변경
			        const profileImage = document.getElementById('profile-picture').getElementsByTagName('img')[0];
			        profileImage.src = imageUrl;

			        // 이미지 경로를 데이터베이스에 저장
			        saveImagePathToDatabase(imageUrl);
			    })
			    .catch(error => {
			        console.error(error);
			        alert(error.message);
			    });
			}

			function saveImagePathToDatabase(imageUrl) {
			    // Ajax를 사용하여 서버에 이미지 경로를 전송하고, 서버에서는 데이터베이스에 저장하는 작업을 수행
			    // jQuery를 사용하는 경우 아래와 같이 작성할 수 있습니다.
			    $.ajax({
			        url: 'SaveImageServlet', // 이미지 경로를 저장할 서블릿 주소
			        type: 'POST',
			        data: {imageUrl: imageUrl},
			        success: function(response) {
			            console.log('이미지 경로가 성공적으로 저장되었습니다.');
			        },
			        error: function(xhr, status, error) {
			            console.error('이미지 경로 저장 중 오류 발생:', error);
			        }
			    });
			}
	
	</script>
</body>

</html>