<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">

    <title>Makers</title>
    <meta name="description" content="Figma htmlGenerator">
    <meta name="author" content="htmlGenerator">
    <link rel="stylesheet" href="assets/css/styles.css?after">

   
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
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
        <h1 class="JOIN_Create">Create new!</h1>
        <p class="JOIN_Study">메이커스와 함께 공부해보세요</p>

        <form action="JoinService" method="post" class="id1">
            <div class="icon-input">
                <p>ID</p>
                <input class="in_put" type="text" autofocus name="id" placeholder="영문,숫자 조합으로 6~12자">
            </div>
            <div class="icon-input">
                <p>NICK NAME</p>
                <input class="in_put" type="text" name="nick" placeholder="영문/한글 1~10자">
            </div>
            <div class="icon-input">
                <p>PASSWORD</p>
                <input class="in_put" type="password" name="pw" placeholder="영문/소문자,숫자,특수기호 포함 8~16자">
            </div>
            <div class="icon-input">
                <p>PASSWORD CHECK</p>
                <input class="in_put" type="password" name="pwCheck" placeholder="비밀번호 확인">
            </div>


            <br>
            <br>

            <button class="singin" type="submit" value="Join" >Join</button>
        </form>


    </div>

</body>
</html>