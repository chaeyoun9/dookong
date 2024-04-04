# 📎 정보처리기사 자격증 스터디 서비스(팀명: 두콩두콩)

![시연페이퍼_두콩두콩_fix](https://github.com/chaeyoun9/dookong/assets/156051073/edcc5053-d47c-4dc5-8325-b6bb55ccef85)


## 👀 서비스 소개
* 서비스명:  정보처리기사 자격증 취득을 위한 스터디 및 대시보드 서비스
* 서비스설명: 정보처리기사 취득을 원하는 사용자들을 위한 대시보드 서비스
<br>

## 📅 프로젝트 기간
2024.02.23 ~ 2024.04.05
<br>

## ⭐ 주요 기능
* 회원가입
* 실시간 질의응답
* 학습 페이지
* 학습 대시보드
* 사용자 편의 기능
<br>

## ⛏ 기술스택
<table>
    <tr>
        <th>구분</th>
        <th>내용</th>
    </tr>
    <tr>
        <td>사용언어</td>
        <td>
            <img src="https://img.shields.io/badge/Java-007396?style=for-the-badge&logo=java&logoColor=white"/>
            <img src="https://img.shields.io/badge/HTML5-E34F26?style=for-the-badge&logo=HTML5&logoColor=white"/>
            <img src="https://img.shields.io/badge/CSS3-1572B6?style=for-the-badge&logo=CSS3&logoColor=white"/>
            <img src="https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=JavaScript&logoColor=white"/>
        </td>
    </tr>
    <tr>
        <td>API</td>
        <td>
            <img src="https://images.openai.com/blob/8264d3d7-922c-4343-b43d-6665e44bcb91/paper-airplanes.jpg?trim=0,0,0,0&width=2000"/>
            <img src="https://developers.kakao.com/static/images/pc/product/homeicon/map.pnge"/>
<img src="https://www.chartjs.org/img/chartjs-logo.svg"/>
        </td>
    </tr>
    <tr>
        <td>개발도구</td>
        <td>
            <img src="https://img.shields.io/badge/Eclipse-2C2255?style=for-the-badge&logo=Eclipse&logoColor=white"/>
            <img src="https://code.visualstudio.com/assets/images/code-stable.png"/>
        </td>
    </tr>
    <tr>
        <td>서버환경</td>
        <td>
            <img src="https://img.shields.io/badge/Apache Tomcat-D22128?style=for-the-badge&logo=Apache Tomcat&logoColor=white"/>
        </td>
    </tr>
    <tr>
        <td>데이터베이스</td>
        <td>
            <img src="https://img.shields.io/badge/Oracle 11g-F80000?style=for-the-badge&logo=Oracle&logoColor=white"/>
        </td>
    </tr>
    <tr>
        <td>협업도구</td>
        <td>
            <img src="https://img.shields.io/badge/Git-F05032?style=for-the-badge&logo=Git&logoColor=white"/>
            <img src="https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=GitHub&logoColor=white"/>
        </td>
    </tr>
</table>


<br>

## ⚙ 시스템 아키텍처(구조) 예시 
![](https://user-images.githubusercontent.com/25995055/169925538-15867bd9-aa0b-42fc-a39b-88981e926e51.png)
<br>

## 📌 유스케이스

![핵심_유즈케이스1](https://github.com/chaeyoun9/dookong/assets/156051073/29f2cc5a-c335-44e6-b760-3440b53e1335)

<br>

## 📌 서비스 흐름도

<br>

## 📌 ER다이어그램
![ERD](https://github.com/chaeyoun9/dookong/assets/156051073/adb83997-b829-487a-b08e-b8c047d9c6ca)
)
<br>

## 👨‍👩‍👦‍👦 팀원 역할
<table>
  <tr>
    <td align="center"><strong>손채영</strong></td>
    <td align="center"><strong>김건형</strong></td>
    <td align="center"><strong>나인혜</strong></td>
    <td align="center"><strong>박경완</strong></td>
  </tr>
  <tr>
    <td align="center"><b>PM, Backend</b></td>
    <td align="center"><b>Frontend</b></td>
    <td align="center"><b>Backend</b></td>
    <td align="center"><b>Frontend</b></td>
  </tr>
</table>

## 🤾‍♂️ 트러블슈팅
  
* 오답노트 트리거<br>
![오답노트트리거(그림)](https://github.com/chaeyoun9/dookong/assets/156051073/2cd0ce5d-ac45-498a-9c82-5d07c1d0b28f)
![오탑노트트리거(소스)](https://github.com/chaeyoun9/dookong/assets/156051073/8daa1b0a-3946-43d6-9308-8e4e3c1e1300)

데이터베이스에서 사용자가 입력한 정답의 오답 여부를 판단해 자동적으로 틀린 문제 테이블에 insert 하는 트리거를 생성해 사용자 오답 관리

 
* Servlet과 JSP 간 데이터 통신<br>

![스크린샷 2024-04-03 104106](https://github.com/chaeyoun9/dookong/assets/156051073/6faaaed0-bead-44d3-8daa-cf6bfff43979)
사용자 출석 체크, 및 차트 데이터 입력이 필요할 시 ajax 비동기 통신을 사용해 data를 servlet에 전송해 db에 업로드할 수 있도록 설계
출석 체크 버튼은 사용자 입력 이후 서버 시간 24시간 이후 재활성화 되도록 설계

![스크린샷 2024-04-03 103921](https://github.com/chaeyoun9/dookong/assets/156051073/eda80378-303d-449c-a54d-8a88e7f7b35f)

Servlet에서 페이지를 재로딩하지 않고 JSP에서 화면 표시를 원하여, ajax를 사용한 비동기 통신을 사용해 페이지 재로딩 없이 데이터 출력
이로 인해 문제 페이지를 여러개 만들지 않고도 사용자 입력에 따라서 한 개의 페이지에서 문제 데이터를 출력(json,gson)

json 객체를 배열에 담아 문제를 .toString()을 사용해 String값으로 반환한 뒤, 페이지에서 출력



