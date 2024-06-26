<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>명예의 전당</title>
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;700&display=swap" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="../css/header_styles.css">
    <link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-barun-pen.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/galmuri/dist/galmuri.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
</head>
<style>
    body {
        font-family: Arial, sans-serif;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
        padding: 20px;
        background-image: url('/image/5033917.jpg');
        font-family: "GalmuriMono9", monospace;
    }

    .container {
        position: relative;
        text-align: center;
        width: 1000px;
        height: auto;
        padding: 20px;
        background-color: rgba(223, 217, 217, 0.5);
        border-radius: 15px;
        box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
    }

    .tabs {
        margin-bottom: 20px;
    }

    .tab-button {
        background-color: #333;
        border: none;
        color: #fff;
        padding: 10px 20px;
        cursor: pointer;
        margin: 0 5px;
        border-radius: 5px;
        font-size: 1em;
    }

    .tab-button:hover {
        background-color: #555;
    }

    .tab-content {
        display: none;
        margin-top: 20px;
    }

    .tab-content ol {
        list-style-type: none;
        padding: 0;
    }

    .tab-content ol li {
        background-color: #444;
        margin: 5px 0;
        padding: 10px;
        color: white;
        border-radius: 5px;
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
        background-image: url('/image/9.png');
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

    .ranking-text {
        font-weight: bold;
        color: #fff; /* 원하는 색상을 지정 */
    }
    
</style>

<body>
    <header>
        <div class="header-container">
            <img src="/image/GamebitLogo.png" alt="Nintendo Logo" class="logo">
            <nav>
                <ul>
                    <li>
                        <a href="${pageContext.request.contextPath}/index.jsp">홈</a>
                        <div class="dropdown"></div>
                    </li>
                    <li>
                        <a href="#">게임</a>
                        <div class="dropdown">
                            <a href="win.jsp">명예의 전당</a>
                            <a href="#">게임 플레이 순위</a>
                            <a href="#">즐겨찾기</a>
                        </div>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/board.html">게시판</a>
                        <div class="dropdown">
                            <a href="../board.html">게시판</a>
                            <a href="#">Q&A</a>
                            <a href="#">공지사항</a>
                        </div>
                    </li>
                    <li>
                        <a href="#">마이페이지</a>
                        <div class="dropdown">
                            <a href="${pageContext.request.contextPath}/members/mypage.jsp">내 정보 수정</a>
                        </div>
                    </li>
                    <li>
                        <a href="#">관리자 페이지</a>
                        <div class="dropdown">
                            <a href="#">대시보드</a>
                            <a href="#">통계</a>
                        </div>
                    </li>
                </ul>
            </nav>
            <div class="header-buttons">
                <c:choose>
                    <c:when test="${not empty sessionScope.loginID}">
                        <span class="welcome-text-button" data-username="${sessionScope.userName}" onclick="location.href='../members/mypage.jsp'">
                            <i class="fa-solid fa-user"></i>${sessionScope.userName}님 환영합니다
                        </span>
                        <div class="btn-container">
                            <button class="logout-button" onclick="location.href='/logout.members'">Logout</button>
                        </div>
                    </c:when>
                    <c:otherwise>
                        <button class="login-button" onclick="location.href='../members/login.jsp'">Login</button>
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
    <div class="container">
        <h1>명예의 전당</h1>
        <div class="tabs">
            <button class="tab-button" onclick="showGame(1)">Mario</button>
            <button class="tab-button" onclick="showGame(2)">game2</button>
            <button class="tab-button" onclick="showGame(3)">game3</button>
            <button class="tab-button" onclick="showGame(4)">game4</button>
            <button class="tab-button" onclick="showGame(5)">game5</button>
        </div>

        <div id="game1" class="tab-content">
            <h2>🏆 Mario</h2>
            <div id="rankingList1">
                <c:forEach var="ranking" items="${topRankings}">
                    <p class="ranking-text">⭐${ranking.userId}: ${ranking.score}, 
                        <fmt:formatDate value="${ranking.rank_date}" pattern="yyyy-MM-dd HH:mm:ss" />⭐
                    </p>
                </c:forEach>
                <c:if test="${empty topRankings}">
                    <p class="ranking-text">데이터가 없습니다.</p>
                </c:if>
            </div>
        </div>
                
        <div id="game2" class="tab-content">
            <h2> 🏆 game2</h2>
            <ol>
                <li>Player1</li>
                <li>Player2</li>
                <li>Player3</li>
                <li>Player4</li>
                <li>Player5</li>
            </ol>
        </div>
        <div id="game3" class="tab-content">
            <h2> ⭐ game3</h2>
            <ol>
                <li>PlayerA</li>
                <li>PlayerB</li>
                <li>PlayerC</li>
                <li>PlayerD</li>
                <li>PlayerE</li>
            </ol>
        </div>
        <div id="game4" class="tab-content">
            <h2> 🔥 game4</h2>
            <ol>
                <li>Gamer1</li>
                <li>Gamer2</li>
                <li>Gamer3</li>
                <li>Gamer4</li>
                <li>Gamer5</li>
            </ol>
        </div>
        <div id="game5" class="tab-content">
            <h2> 🎯 game5</h2>
            <ol>
                <li>Winner1</li>
                <li>Winner2</li>
                <li>Winner3</li>
                <li>Winner4</li>
                <li>Winner5</li>
            </ol>
        </div>
    </div>
    <script>
        function fetchGameRankings(gameSeq, rankingListId) {
            $.ajax({
                url: "GamesServlet.games",
                method: "GET",
                data: {
                    action: "retrieve",
                    gameSeq: gameSeq
                },
                success: function(data) {
                    // 받은 데이터를 지정된 rankingListId에 업데이트
                    var rankingList = $("#" + rankingListId);
                    rankingList.empty();
                    if (data.length === 0) {
                        rankingList.append("<p class='ranking-text'>데이터가 없습니다.</p>");
                    } else {
                        data.forEach(function(ranking) {
                            var formattedDate = new Date(ranking.rank_date).toLocaleString();
                            rankingList.append("<p class='ranking-text'>" + ranking.userId + ": " + ranking.score + ", " + formattedDate + "</p>");
                        });
                    }
                },
                error: function(err) {
                    console.error("Failed to fetch game rankings", err);
                }
            });
        }

        function showGame(gameId) {
            var tabs = document.getElementsByClassName('tab-content');
            for (var i = 0; i < tabs.length; i++) {
                tabs[i].style.display = 'none';
            }
            document.getElementById('game' + gameId).style.display = 'block';

            // 게임 순위를 불러오는 함수 호출
            fetchGameRankings(gameId, 'rankingList' + gameId);
        }

        document.addEventListener('DOMContentLoaded', function () {
            showGame(1);
        });

        function toggleMenu() {
            const nav = document.querySelector('nav ul');
            nav.classList.toggle('show');
        }

        // 서버 세션에서 userName을 가져와 JavaScript 변수에 저장하고 sessionStorage에 저장
        var userId = document.querySelector('.welcome-text-button').getAttribute('data-username');
        sessionStorage.setItem('userName', userId);
    </script>
</body>
</html>
