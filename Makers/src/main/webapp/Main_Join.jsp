<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
        <h1 class="e123_1">��ú���� Ȯ���ϴ� ���� �Ƿº�ȭ</h1>
        <p class="e123_2">�������� �󸶳� �þ�����?</p>
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
        <p class="JOIN_Study">����Ŀ���� �Բ� �����غ�����</p>

        <form action="JoinService" method="post" class="id1">
            <div class="icon-input">
                <p>ID</p>
                <input class="in_put" type="text" autofocus name="id" placeholder="����,���� �������� 6~12��">
            </div>
            <div class="icon-input">
                <p>NICK NAME</p>
                <input class="in_put" type="text" name="nick" placeholder="����/�ѱ� 1~10��">
            </div>
            <div class="icon-input">
                <p>PASSWORD</p>
                <input class="in_put" type="password" name="pw" placeholder="����/�ҹ���,����,Ư����ȣ ���� 8~16��">
            </div>
            <div class="icon-input">
                <p>PASSWORD CHECK</p>
                <input class="in_put" type="password" name="pwCheck" placeholder="��й�ȣ Ȯ��">
            </div>


            <br>
            <br>

            <button class="singin" type="submit" value="Join" ></button>
        </form>


    </div>

</body>
</html>