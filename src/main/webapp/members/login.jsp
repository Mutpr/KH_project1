<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link href="${pageContext.request.contextPath}/css/header_styles.css" rel="stylesheet">
<link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-barun-pen.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/galmuri/dist/galmuri.css">
<link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>     
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">
<link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;700&display=swap" rel="stylesheet">  

<style>
@import url("https://fonts.googleapis.com/css?family=Abril+Fatface|Open+Sans:400,700&display=swap");

body {
  height: 100vh;
  display: flex;
  background-image: url('${pageContext.request.contextPath}/image/5033917.jpg');
  font-family: "GalmuriMono9", monospace;
}

.main {
  width: 70%;
  height: 75%;
  margin: auto;
  border-radius: 10px;
  box-shadow: 0 0 8px rgba(0, 0, 0, 0.2);
  transition: all 0.1s ease-in 0.1s;
}

.sign-up {
  display: flex;
  opacity: 1;
  width: 100%;
  height: 100%;
}

.signup-left {
  width: 50%;
  opacity: 1;
  display: flex;
  flex-flow: column wrap;
  justify-content: space-between;
  font-size: 14px;
  background: rgba(249, 63, 75, 0.704);
  border-radius: 10px 0 0 10px;
  transition: all 0.5s ease-in 0.2s;
}

.signup-left h1 {
  font-size: 21px;
  font-family: "Abril Fatface", cursive;
  letter-spacing: 2px;
}

.signup-left h1,
.signup-left div,
.signup-left h3,
.signup-left p {
  color: rgb(255, 255, 255);
}

.signup-left h3 {
  font-size: 2.2em;
}

.signup-right {
  width: 50%;
  padding: 20px;
  background: rgba(255, 255, 255, 0.591);
  border-radius: 0 10px 10px 0;
  display: flex;
  flex-flow: column wrap;
  justify-content: space-between;
  align-items: flex-end;
  background-size: 70%;
  background-repeat: no-repeat;
  background-position: 235% 50%;
  opacity: 1;
}

.btn-back {
  align-self: flex-start;
  display: flex;
  align-items: center;
  font-weight: bold;
  cursor: pointer;
}

.angle-left-color {
  color: rgb(255, 255, 255);
  margin-right: 5px;
}

.form-area {
  position: absolute;
  top: 20%;
  left: 40%;
  width: 20%;
  height: 60%;
  padding: 20px 0;
  background: rgb(255, 255, 255);
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
  border-radius: 10px;
  z-index: 2;
  opacity: 1;
}

.organize-form {
  width: 100%;
  height: 100%;
  display: flex;
  flex-flow: column wrap;
  justify-content: space-around;
  align-items: center;
}

.organize-form h2 {
  font-size: 1.4em;
  font-weight: normal;
}

.organize-form h2::after {
  content: "";
  display: block;
  width: 50%;
  height: 2px;
  background: rgb(249, 63, 76);
  margin: 0 auto;
}

.organize-form p a {
  color: rgb(249, 63, 76);
  text-decoration: none;
  font-weight: bold;
}

.form {
  width: 85%;
}

.form-field {
  display: flex;
  flex-flow: column wrap;
  width: 100%;
  margin-bottom: 10px;
}

.input-group {
  display: flex;
  align-items: center;
}

.input-group input {
  flex: 1;
}

.form-field input {
  border: none;
  padding: 5px;
  border-bottom: 1px solid rgba(116, 116, 116, 0.44);
  height: 30px;
  transition: border-bottom 0.1s ease-in-out 0.1s;
}

.form-field input:focus {
  border-bottom: 1px solid rgb(249, 63, 76);
}

.form-field label {
  position: relative;
  top: 25px;
  left: 5px;
  cursor: text;
  transition: all 0.2s ease-in-out 0.1s;
  color: rgba(116, 116, 116, 0.44);
  user-select: none;
}

input:placeholder-shown + label {
  opacity: 0;
  visibility: hidden;
}

.btn-sign {
  border: none;
  background: rgb(249, 63, 76);
  color: white;
  font-weight: bold;
  width: 100%;
  padding: 10px;
  margin-top: 20px;
  border-radius: 50px;
  cursor: pointer;
  transition: background 0.1s ease 0.1s;
  font-family: "GalmuriMono9", monospace;
}

.btn-sign:hover {
  background: rgb(230, 57, 69);
}

.btn-check {
  border: none;
  background: rgb(249, 63, 76);
  color: white;
  font-weight: bold;
  padding: 8px 15px; /* 조정된 패딩 값 */
  margin-top: 20px;
  border-radius: 50px;
  cursor: pointer;
  transition: background 0.1s ease 0.1s;
}

.btn-check:hover {
  background: rgb(230, 57, 69);
}

.signup-right {
  width: 50%;
  padding: 20px;
  background: rgba(255, 255, 255, 0.591);
  border-radius: 0 10px 10px 0;
  display: flex;
  flex-flow: column wrap;
  justify-content: space-between;
  align-items: flex-end;
  background-size: 70%;
  background-repeat: no-repeat;
  background-position: 235% 50%;
  opacity: 1;
}

.bars-style {
  color: rgb(249, 63, 76);
  cursor: pointer;
  font-size: 16px;
}

.link-up {
  color: rgb(249, 63, 76);
  text-decoration: none;
  font-weight: bold;
  transition: color 0.2s ease;
}

.link-up:hover {
  color: rgb(230, 57, 69);
}

.form-field a {
  font-size: 0.9em;
}

.links-container {
  display: flex;
  justify-content: center;
  width: 100%;
}

.links-container a {
  margin: 0 10px;
  display: inline-block;
}

.hidden {
  display: none;
}

@media (max-width: 768px) {
  .btn-check {
    padding: 8px 15px; 
  }
}

@media (max-width: 1023px) {
  .main {
    width: 100%;
    height: 100%;
  }
  .home, .signup-left { border-radius: 0; }
  .form-area {
    left: 35%;
    width: 30%;
    height: 70%;
  }
}

@media (max-width: 768px) {
  .form-area {
    left: 20%;
    width: 60%;
  }
  .wc_message {
    opacity: 0;
    transition: opacity .1s;
  }
}

@media (max-width: 375px) {
  .form-area {
    left: 10%;
    width: 80%;
  }
}

header {
  position: fixed;
  width: 100%;
  top: 0;
  left: 0;
  z-index: 1000;
  background-color: black;
  box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
  height: 60px;
  background-image: url('${pageContext.request.contextPath}/image/9.png');
}

.btn-inline {
  width: 110px;
  margin-top: 2;
}

.btn-container {
  display: flex;
  gap: 10px;
}

.welcome-text {
  font-weight: bold;
  color: #fff;
  margin-right: 20px;
}
.welcome-text-button {
    color: #fff;
    font-weight: bold;
    cursor: pointer;
    margin-right: 10px;
    padding: 5px 10px 5px 30px; /* 왼쪽 패딩 추가 */
    background: rgba(0, 0, 0, 0.5);
    border-radius: 5px;
    transition: background 0.3s;
    position: relative; /* position 속성 추가 */
}

.welcome-text-button i {
    position: absolute;
    left: 10px; /* 아이콘 위치 조정 */
    top: 50%;
    transform: translateY(-50%);
}

.welcome-text-button:hover {
    background: rgba(0, 0, 0, 0.7);
}
</style>
</head>
<body>
<header>
    <div class="header-container">
    <a href="/index.jsp">
        <img src="${pageContext.request.contextPath}/image/GamebitLogo.png" alt="Nintendo Logo" class="logo"></a>
        <nav>
            <ul>
                <li>
                    <a href="/index.jsp">홈</a>
                    <div class="dropdown"></div></li>
					<li><a href="#">게임</a>
						<div class="dropdown">
							<a href="win.html">명예의 전당</a> <a href="#">Subitem 2</a> <a
								href="#">랭킹</a>
						</div></li>
					<li><a href="/list.board">게시판</a>
						<div class="dropdown">
							<a href="/list.board">게시판</a> 
							<a href="/list.qboard">Q&A</a> 
							<a href="#">공지사항</a>
						</div></li>
					<li><a href="#">마이페이지</a>
						<div class="dropdown">
							<a href="/mypage.members">내 정보 보기</a>
                            <a href="/myfreepostlist.board">내가 작성한 게시글</a>
                            <a href="/myqpostlist.qboard">내가 작성한 Q&A</a>
						</div></li>
					<li><a href="#">관리자 페이지</a>
						<div class="dropdown">
							<a href="#">대시보드</a> <a href="#">통계</a>
						</div></li>
				</ul>
			</nav>
			<div class="header-buttons">
               <c:choose>
                    <c:when test="${not empty sessionScope.loginID}">
                        <span class="welcome-text-button" onclick="location.href='mypage.members'">
                            <i class="fa-solid fa-user"></i>${sessionScope.userName}님 환영합니다
                        </span>
                        <div class="btn-container">
                            <button class="logout-button" onclick="location.href='/logout.members'">Logout</button>
                        </div>
                    </c:when>
                    <c:otherwise>
                        <button class="login-button" onclick="location.href='members/login.jsp'">Login</button>
                    </c:otherwise>
                </c:choose>
                <div class="hamburger-menu" onclick="toggleMenu()">
                    <div></div>
                    <div></div>
                    <div></div>
                </div>
            </div>
    </div>
</header>
<main class="main">
    <section class="sign-up">
        <article class="signup-left">
            <h1></h1>
            <div class="wc_message"></div>
        </article>
        <article class="form-area">
            <c:choose>
                <c:when test="${not empty sessionScope.loginID}">
                    <div class="organize-form form-area-signin">
                        <h2>${sessionScope.userName}님 환영합니다.</h2>
                        <div class="btn-container">
                            <button id="logout" class="btn-sign btn-inline">로그아웃</button>
                            <button id="myinfo" class="btn-sign btn-inline">내정보</button>
                        </div>
                    </div>
                </c:when>
                <c:otherwise>
                    <div class="organize-form form-area-signin">
                        <h2>SIGN IN</h2>
                        <form class="form" action="/login.members" method="post">
                            <div class="form-field">
                                <label for="email-in"></label>
                                <input type="text" name="id" id="email-in" placeholder="ID를 입력하세요" required />
                            </div>
                            <div class="form-field">
                                <label for="password-in"></label>
                                <input type="password" name="pw" id="password-in" placeholder="비밀번호를 입력하세요" required />
                            </div>
                            <button type="submit" class="btn-sign btn-in">로그인</button>
                            <p>계정이 없으신가요? <a href="${pageContext.request.contextPath}/members/signup.jsp" class="link-up">회원가입</a></p>
                            <div class="form-field links-container">
                                <a href="${pageContext.request.contextPath}/emails/findId.jsp" class="link-up">아이디 찾기</a>
                                <a href="${pageContext.request.contextPath}/emails/findPw.jsp" class="link-up">비밀번호 찾기</a>
                            </div>
                        </form>
                    </div>
                </c:otherwise>
            </c:choose>
        </article>
        <article class="signup-right">
            <i class="fas fa-2x fa-bars bars-style"></i>
        </article>
    </section>
</main>

<script>
    function toggleMenu() {
        document.querySelector('nav ul').classList.toggle('show');
    }

    $(document).ready(function() {
        $("#logout").on("click", function() {
            console.log("로그아웃 버튼 클릭");
            location.href = "/logout.members";
        });

        $("#myinfo").on("click", function() {
            console.log("내정보 버튼 클릭");
            location.href = "/mypage.members";
        });

        // 세션에 저장된 로그인 에러 메시지를 확인하여 알림창 표시
        <c:if test="${not empty sessionScope.loginError}">
            alert('${sessionScope.loginError}');
            <c:remove var="loginError" scope="session"/>
        </c:if>
    });
</script>

</body>
</html>
