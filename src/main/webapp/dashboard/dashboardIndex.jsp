<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!--
=========================================================
* Argon Dashboard 2 - v2.0.4
=========================================================

* Product Page: https://www.creative-tim.com/product/argon-dashboard
* Copyright 2022 Creative Tim (https://www.creative-tim.com)
* Licensed under MIT (https://www.creative-tim.com/license)
* Coded by Creative Tim

=========================================================

* The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
-->
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="apple-touch-icon" sizes="76x76"
	href="/dashboard/assets/img/apple-icon.png">
<link rel="icon" type="image/png"
	href="/dashboard/assets/img/favicon.png">
<title>Argon Dashboard 2 by Creative Tim</title>
<!--     Fonts and icons     -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700"
	rel="stylesheet" />
<!-- Nucleo Icons -->
<link href="/dashboard/assets/css/nucleo-icons.css" rel="stylesheet" />
<link href="/dashboard/assets/css/nucleo-svg.css" rel="stylesheet" />
<!-- Font Awesome Icons -->
<script src="https://kit.fontawesome.com/42d5adcbca.js"
	crossorigin="anonymous"></script>
<link href="/dashboard/assets/css/nucleo-svg.css" rel="stylesheet" />
<!-- CSS Files -->
<link id="pagestyle" href="/dashboard/assets/css/argon-dashboard.css"
	rel="stylesheet" />
<script src="https://code.jquery.com/jquery-3.7.1.js"
	integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4="
	crossorigin="anonymous"></script>
<style>
i {
	font-family: "Nucleo" !important
}
</style>
</head>


<body id="main" class="g-sidenav-show   bg-gray-100">
	<div class="min-height-300 bg-primary position-absolute w-100"></div>
	<aside id="side-nav-color"
		class="sidenav bg-white navbar navbar-vertical navbar-expand-xs border-0 border-radius-xl my-3 fixed-start ms-4 "
		id="sidenav-main">
		<div class="sidenav-header">
			<i
				class="fas fa-times p-3 cursor-pointer text-secondary opacity-5 position-absolute end-0 top-0 d-none d-xl-none"
				aria-hidden="true" id="iconSidenav"></i> <a class="navbar-brand m-0"
				href="/index.jsp "
				target="_blank"> <img
				src="/dashboard/assets/img/gamebit-logo.png"
				class="navbar-brand-img h-100" alt="main_logo"> <span
				class="ms-1 font-weight-bold justify-content-center align-items-center" style="font-size: 1.5rem">Gamebit</span>
			</a>
		</div>
		<hr class="horizontal dark mt-0">
		<div class="collapse navbar-collapse  w-auto "
			id="sidenav-collapse-main">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link active"
					href="/showMain.dashBoard">
						<div
							class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
							<i class="ni ni-tv-2 text-primary text-sm opacity-10"></i>
						</div> <span class="nav-link-text ms-1">메인</span>
				</a></li>
				<li class="nav-item"><a class="nav-link"
					href="/showDetail.dashBoard">
						<div
							class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
							<i class="ni ni-credit-card text-success text-sm opacity-10"></i>
						</div> <span class="nav-link-text ms-1">모아보기</span>
				</a></li>
				<li class="nav-item mt-3">
					<h6
						class="ps-4 ms-2 text-uppercase text-xs font-weight-bolder opacity-6">Account
						pages</h6>
				</li>
				<li class="nav-item"><a class="nav-link "
					href="/showUser.dashBoard?userSeq=${userSeq}">
						<div
							class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
							<i class="ni ni-single-02 text-dark text-sm opacity-10"></i>
						</div> <span class="nav-link-text ms-1">프로필</span> <!-- 관리자 프로필(로그인 기능 연계) -->
				</a></li>
				<li class="nav-item"><a class="nav-link "
					href="/logout.members">
						<div
							class="icon icon-shape icon-sm border-radius-md text-center me-2 d-flex align-items-center justify-content-center">
							<i class="ni ni-collection text-info text-sm opacity-10"></i>
						</div> <span class="nav-link-text ms-1">로그아웃</span> <!-- 관리자 로그아웃 (로그인 기능 연계)-->
				</a></li>
			</ul>
		</div>
		<div class="sidenav-footer mx-3 ">
			<div class="card card-plain shadow-none" id="sidenavCard">
				<img class="w-50 mx-auto"
					src="/dashboard/assets/img/illustrations/icon-documentation.svg"
					alt="sidebar_illustration">
				<div class="card-body text-center p-3 w-100 pt-0">
					<div class="docs-info">
						<h6 class="mb-0">Need help?</h6>
						<p class="text-xs font-weight-bold mb-0">Please leave us Question</p>
					</div>
				</div>
			</div>
			<a class="btn btn-primary btn-sm mb-0 w-100"
				href="/list.qboard"
				type="button">QnA 게시판</a>
		</div>
	</aside>
	<main class="main-content position-relative border-radius-lg ">
		<!-- Navbar -->
		<nav
			class="navbar navbar-main navbar-expand-lg px-0 mx-4 shadow-none border-radius-xl "
			id="navbarBlur" data-scroll="false">
			<div class="container-fluid py-1 px-3">
				<nav aria-label="breadcrumb">
					<ol
						class="breadcrumb bg-transparent mb-0 pb-0 pt-1 px-0 me-sm-6 me-5">
						<li class="breadcrumb-item text-sm"><a
							class="opacity-5 text-white" href="javascript:;">Pages</a></li>
						<li class="breadcrumb-item text-sm text-white active"
							aria-current="page">Dashboard</li>
					</ol>
					<h6 class="font-weight-bolder text-white mb-0">Dashboard</h6>
				</nav>
				<div class="collapse navbar-collapse mt-sm-0 mt-2 me-md-0 me-sm-4"
					id="navbar"></div>
			</div>
		</nav>
		<!-- End Navbar -->
		<div class="container-fluid py-4">
			<div class="row">
				<div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
					<div class="card">
						<div class="card-body p-3">
							<div class="row">
								<div class="col-8">
									<div class="numbers">
										<p class="text-lg mb-0 text-uppercase font-weight-bold">오늘의
											게시물</p>
										<h5 class="font-weight-bolder">+${todaysPost }</h5>
									</div>
								</div>
								<div class="col-4 text-end">
									<div
										class="icon icon-shape bg-gradient-primary shadow-primary text-center rounded-circle">
										<i class="ni ni-money-coins text-lg opacity-10"
											aria-hidden="true"></i>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
					<div class="card">
						<div class="card-body p-3">
							<div class="row">
								<div class="col-8">
									<div class="numbers">
										<p class="text-lg mb-0 text-uppercase font-weight-bold">오늘의
											유저</p>
										<h5 class="font-weight-bolder">+${todaysUser }</h5>
									</div>
								</div>
								<div class="col-4 text-end">
									<div
										class="icon icon-shape bg-gradient-danger shadow-danger text-center rounded-circle">
										<i class="ni ni-world text-lg opacity-10" aria-hidden="true"></i>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
					<div class="card">
						<div class="card-body p-3">
							<div class="row">
								<div class="col-8">
									<div class="numbers">
										<p class="text-lg mb-0 text-uppercase font-weight-bold">총
											게시글 수</p>
										<h5 class="font-weight-bolder">${totalPost }</h5>
									</div>
								</div>
								<div class="col-4 text-end">
									<div
										class="icon icon-shape bg-gradient-success shadow-success text-center rounded-circle">
										<i class="ni ni-paper-diploma text-lg opacity-10"
											aria-hidden="true"></i>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xl-3 col-sm-6">
					<div class="card">
						<div class="card-body p-3">
							<div class="row">
								<div class="col-8">
									<div class="numbers">
										<p class="text-lg mb-0 text-uppercase font-weight-bold">총
											유저 수</p>
										<h5 class="font-weight-bolder">${totalUser}</h5>
									</div>
								</div>
								<div class="col-4 text-end">
									<div
										class="icon icon-shape bg-gradient-warning shadow-warning text-center rounded-circle">
										<i class="ni ni-cart text-lg opacity-10" aria-hidden="true"></i>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row mt-4">
				<div class="col-lg-7 mb-lg-0 mb-4">
					<div class="card z-index-2 h-100">
						<div class="card-header pb-0 pt-3 bg-transparent">
							<h6 class="text-capitalize">게시글 수 증가추세</h6>
							<p class="text-sm mb-0">
								<i class="fa fa-arrow-up text-success"></i> <span
									class="font-weight-bold">4% more</span> in 2021
							</p>
						</div>
						<div class="card-body p-3">
							<div class="chart">
								<canvas id="chart-line" class="chart-canvas" height="300"></canvas>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-5">
					<div class="card card-carousel overflow-hidden h-100 p-0">
						<div id="carouselExampleCaptions" class="carousel slide h-100"
							data-bs-ride="carousel">
							<div class="carousel-inner border-radius-lg h-100">
								<div class="carousel-item h-100 active"
									style="background-image: url('/dashboard/assets/img/carousel-1.jpg'); background-size: cover;">
									<div
										class="carousel-caption d-none d-md-block bottom-0 text-start start-0 ms-5">
										<div
											class="icon icon-shape icon-sm bg-white text-center border-radius-md mb-3">
											<i class="ni ni-camera-compact text-dark opacity-10"></i>
										</div>
										<h5 class="text-white mb-1">게임을 즐기세요</h5>
										<!-- 게임 모아보기 페이지 연결 -->
										<p>Gambit 과 함께하는 쾌적한 게임</p>
									</div>
								</div>
								<div class="carousel-item h-100"
									style="background-image: url('/dashboard/assets/img/carousel-2.jpg'); background-size: cover;">
									<a href=''>
										<div
											class="carousel-caption d-none d-md-block bottom-0 text-start start-0 ms-5">
											<div
												class="icon icon-shape icon-sm bg-white text-center border-radius-md mb-3">
												<i class="ni ni-bulb-61 text-dark opacity-10"></i>
											</div>
											<h5 class="text-white mb-1">Gambit - admin</h5>
											<p>Dashboard</p>
										</div>
									</a>
								</div>
								<div class="carousel-item h-100"
									style="background-image: url('/dashboard/assets/img/carousel-3.jpg'); background-size: cover;">
									<div
										class="carousel-caption d-none d-md-block bottom-0 text-start start-0 ms-5">
										<div
											class="icon icon-shape icon-sm bg-white text-center border-radius-md mb-3">
											<i class="ni ni-trophy text-dark opacity-10"></i>
										</div>
										<h5 class="text-white mb-1">Gambit - statics</h5>
										<p>Dashboard</p>
									</div>
								</div>
							</div>
							<button class="carousel-control-prev w-5 me-3" type="button"
								data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
								<span class="carousel-control-prev-icon" aria-hidden="true"></span>
								<span class="visually-hidden">Previous</span>
							</button>
							<button class="carousel-control-next w-5 me-3" type="button"
								data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
								<span class="carousel-control-next-icon" aria-hidden="true"></span>
								<span class="visually-hidden">Next</span>
							</button>
						</div>
					</div>
				</div>
			</div>
			<div class="row mt-4">
				<div class="col-lg-7 mb-lg-0 mb-4">
					<div class="card">
						<div class="card-header pb-0 p-3">
							<div class="d-flex justify-content-between">
								<h6 class="mb-2">게시글 모아보기</h6>
							</div>
						</div>
						<div class="table-responsive">
							<table class="table align-items-center ">
								<tbody>
									<c:forEach var="post" items="${recentFourPostList }">
										<tr>
											<td class="w-30">
												<div class="d-flex px-2 py-1 align-items-center">
													<div class="ms-4">
														<p class="d-block text-xs font-weight-bold mb-0">타이틀</p>
														<h6 class="text-sm mb-0"
															style="width: 200px; /* 원하는 너비 설정 */ white-space: nowrap; /* 한 줄로 표시 */ overflow: hidden; /* 넘치는 부분 숨기기 */ text-overflow: ellipsis;">${post.title}</h6>
													</div>
												</div>
											</td>
											<td>
												<div class="text-center">
													<p class="text-xs font-weight-bold mb-0">작성자:</p>
													<h6 class="text-sm mb-0">${post.writer}</h6>
												</div>
											</td>
											<td>
												<div class="text-center">
													<p class="text-xs font-weight-bold mb-0">작성 일자:</p>
													<h6 class="text-sm mb-0">${post.write_date }</h6>
												</div>
											</td>
											<td class="align-middle text-sm">
												<div class="col text-center">
													<p class="text-xs font-weight-bold mb-0">조회수</p>
													<h6 class="text-sm mb-0">${post.view_count }</h6>
												</div>
											</td>
										</tr>

									</c:forEach>
								</tbody>
							</table>
						</div>
						<div>
							<nav aria-label="Page navigation example">
								<ul class="pagination" id="totalPageCount">
								</ul>
							</nav>
						</div>
					</div>
				</div>
				<div class="col-lg-5">

					<div class="card">
						<div class="card-header pb-0 p-3">
							<h6 class="mb-0">유저 모아보기</h6>
						</div>
						<div class="card-body p-3">
							<ul class="list-group">
								<c:forEach var="user" items="${recentFourUserList}">
									<li
										class="list-group-item border-0 d-flex justify-content-between ps-0 mb-2 border-radius-lg">
										<div class="d-flex align-items-center">
											<div class="d-flex flex-column">
												<h6 class="mb-1 text-dark text-sm">${user.nickName}</h6>
											</div>
										</div>
										<div class="d-flex"></div>
									</li>
								</c:forEach>
							</ul>
						</div>
					</div>
					</a>
				</div>
			</div>
			<footer class="footer pt-3  ">
				<div class="container-fluid">
					<div class="row align-items-center justify-content-lg-between">

					</div>
				</div>
			</footer>
		</div>
	</main>
	<div class="fixed-plugin">
		<div class="card shadow-lg">
			<div class="card-header pb-0 pt-3 ">
				<div class="float-start">
					<h5 class="mt-3 mb-0">Argon Configurator</h5>
					<p>See our dashboard options.</p>
				</div>
				<div class="float-end mt-4">
					<button
						class="btn btn-link text-dark p-0 fixed-plugin-close-button">
						<i class="fa fa-close"></i>
					</button>
				</div>
				<!-- End Toggle Button -->
			</div>
			<hr class="horizontal dark my-1">
			<div class="card-body pt-sm-3 pt-0 overflow-auto">
				<!-- Sidebar Backgrounds -->
				<div>
					<h6 class="mb-0">Sidebar Colors</h6>
				</div>
				<a href="javascript:void(0)" class="switch-trigger background-color">
					<div class="badge-colors my-2 text-start">
						<span class="badge filter bg-gradient-primary active"
							data-color="primary" onclick="sidebarColor(this)"></span> <span
							class="badge filter bg-gradient-dark" data-color="dark"
							onclick="sidebarColor(this)"></span> <span
							class="badge filter bg-gradient-info" data-color="info"
							onclick="sidebarColor(this)"></span> <span
							class="badge filter bg-gradient-success" data-color="success"
							onclick="sidebarColor(this)"></span> <span
							class="badge filter bg-gradient-warning" data-color="warning"
							onclick="sidebarColor(this)"></span> <span
							class="badge filter bg-gradient-danger" data-color="danger"
							onclick="sidebarColor(this)"></span>
					</div>
				</a>
				<!-- Sidenav Type -->
				<div class="mt-3">
					<h6 class="mb-0">Sidenav Type</h6>
					<p class="text-sm">Choose between 2 different sidenav types.</p>
				</div>
				<div class="d-flex">
					<button class="btn bg-gradient-primary w-100 px-3 mb-2 active me-2"
						data-class="bg-white" onclick="sidebarType(this)">White</button>
					<button class="btn bg-gradient-primary w-100 px-3 mb-2"
						data-class="bg-default" onclick="sidebarType(this)">Dark</button>
				</div>
				<p class="text-sm d-xl-none d-block mt-2">You can change the
					sidenav type just on desktop view.</p>
				<!-- Navbar Fixed -->
				<div class="d-flex my-3">
					<h6 class="mb-0">Navbar Fixed</h6>
					<div class="form-check form-switch ps-0 ms-auto my-auto">
						<input class="form-check-input mt-1 ms-auto" type="checkbox"
							id="navbarFixed" onclick="navbarFixed(this)">
					</div>
				</div>
				<hr class="horizontal dark my-sm-4">
				<div class="mt-2 mb-5 d-flex">
					<h6 class="mb-0">Light / Dark</h6>
					<div class="form-check form-switch ps-0 ms-auto my-auto">
						<input class="form-check-input mt-1 ms-auto" type="checkbox"
							id="dark-version" onclick="darkMode(this)">
					</div>
				</div>
				<a class="btn bg-gradient-dark w-100"
					href="https://www.creative-tim.com/product/argon-dashboard">Free
					Download</a> <a class="btn btn-outline-dark w-100"
					href="https://www.creative-tim.com/learning-lab/bootstrap/license/argon-dashboard">View
					documentation</a>
				<div class="w-100 text-center">
					<a class="github-button"
						href="https://github.com/creativetimofficial/argon-dashboard"
						data-icon="octicon-star" data-size="large" data-show-count="true"
						aria-label="Star creativetimofficial/argon-dashboard on GitHub">Star</a>
					<h6 class="mt-3">Thank you for sharing!</h6>
					<a
						href="https://twitter.com/intent/tweet?text=Check%20Argon%20Dashboard%20made%20by%20%40CreativeTim%20%23webdesign%20%23dashboard%20%23bootstrap5&amp;url=https%3A%2F%2Fwww.creative-tim.com%2Fproduct%2Fargon-dashboard"
						class="btn btn-dark mb-0 me-2" target="_blank"> <i
						class="fab fa-twitter me-1" aria-hidden="true"></i> Tweet
					</a> <a
						href="https://www.facebook.com/sharer/sharer.php?u=https://www.creative-tim.com/product/argon-dashboard"
						class="btn btn-dark mb-0 me-2" target="_blank"> <i
						class="fab fa-facebook-square me-1" aria-hidden="true"></i> Share
					</a>
				</div>
			</div>
		</div>
	</div>
	<!--   Core JS Files   -->
	<script src="/dashboard/assets/js/core/popper.min.js"></script>
	<script src="/dashboard/assets/js/core/bootstrap.min.js"></script>
	<script src="/dashboard/assets/js/plugins/perfect-scrollbar.min.js"></script>
	<script src="/dashboard/assets/js/plugins/smooth-scrollbar.min.js"></script>
	<script src="/dashboard/assets/js/plugins/chartjs.min.js"></script>
	<script>
		
	</script>
	<script>
		var ctx1 = document.getElementById("chart-line").getContext("2d");

		var gradientStroke1 = ctx1.createLinearGradient(0, 230, 0, 50);

		gradientStroke1.addColorStop(1, 'rgba(94, 114, 228, 0.2)');
		gradientStroke1.addColorStop(0.2, 'rgba(94, 114, 228, 0.0)');
		gradientStroke1.addColorStop(0, 'rgba(94, 114, 228, 0)');
		new Chart(ctx1, {
			type : "line",
			data : {
				labels : [ "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct",
						"Nov", "Dec" ],
				datasets : [ {
					label : "Mobile apps",
					tension : 0.4,
					borderWidth : 0,
					pointRadius : 0,
					borderColor : "#5e72e4",
					backgroundColor : gradientStroke1,
					borderWidth : 3,
					fill : true,
					data : [ 50, 40, 300, 220, 500, 250, 400, 230, 500 ],
					maxBarThickness : 6

				} ],
			},
			options : {
				responsive : true,
				maintainAspectRatio : false,
				plugins : {
					legend : {
						display : false,
					}
				},
				interaction : {
					intersect : false,
					mode : 'index',
				},
				scales : {
					y : {
						grid : {
							drawBorder : false,
							display : true,
							drawOnChartArea : true,
							drawTicks : false,
							borderDash : [ 5, 5 ]
						},
						ticks : {
							display : true,
							padding : 10,
							color : '#fbfbfb',
							font : {
								size : 11,
								family : "NucleoIcons",
								style : 'normal',
								lineHeight : 2
							},
						}
					},
					x : {
						grid : {
							drawBorder : false,
							display : false,
							drawOnChartArea : false,
							drawTicks : false,
							borderDash : [ 5, 5 ]
						},
						ticks : {
							display : true,
							color : '#ccc',
							padding : 20,
							font : {
								size : 11,
								family : "NucleoIcons",
								style : 'normal',
								lineHeight : 2
							},
						}
					},
				},
			},
		});
	</script>
	<script>
		var win = navigator.platform.indexOf('Win') > -1;
		if (win && document.querySelector('#sidenav-scrollbar')) {
			var options = {
				damping : '0.5'
			}
			Scrollbar.init(document.querySelector('#sidenav-scrollbar'),
					options);
		}
	</script>
	<!-- Github buttons -->
	<script async defer src="https://buttons.github.io/buttons.js"></script>
	<!-- Control Center for Soft Dashboard: parallax effects, scripts for the example pages etc -->
	<script src="/dashboard/assets/js/argon-dashboard.min.js?v=2.0.4"></script>
</html>