<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
	integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
	integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
	crossorigin="anonymous"></script>
<link href="/docs/5.0/dist/css/bootstrap.min.css" rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<!-- Favicons -->
<link rel="apple-touch-icon"
	href="/docs/5.0/assets/img/favicons/apple-touch-icon.png"
	sizes="180x180">
<link rel="icon" href="/docs/5.0/assets/img/favicons/favicon-32x32.png"
	sizes="32x32" type="image/png">
<link rel="icon" href="/docs/5.0/assets/img/favicons/favicon-16x16.png"
	sizes="16x16" type="image/png">
<link rel="manifest" href="/docs/5.0/assets/img/favicons/manifest.json">
<link rel="mask-icon"
	href="/docs/5.0/assets/img/favicons/safari-pinned-tab.svg"
	color="#7952b3">
<link rel="icon" href="/docs/5.0/assets/img/favicons/favicon.ico">
<link href="/docs/5.0/dist/css/bootstrap.min.css" rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<!-- Favicons -->
<link rel="apple-touch-icon"
	href="/docs/5.0/assets/img/favicons/apple-touch-icon.png"
	sizes="180x180">
<link rel="icon" href="/docs/5.0/assets/img/favicons/favicon-32x32.png"
	sizes="32x32" type="image/png">
<link rel="icon" href="/docs/5.0/assets/img/favicons/favicon-16x16.png"
	sizes="16x16" type="image/png">
<link rel="manifest" href="/docs/5.0/assets/img/favicons/manifest.json">
<link rel="mask-icon"
	href="/docs/5.0/assets/img/favicons/safari-pinned-tab.svg"
	color="#7952b3">
<link rel="icon" href="/docs/5.0/assets/img/favicons/favicon.ico">
<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}

.viewport {
	padding-left: 250px;
	-webkit-transition: all 0.5s ease;
	-moz-transition: all 0.5s ease;
	-o-transition: all 0.5s ease;
	transition: all 0.5s ease;
}

/* Sidebar Styles */
.sidebar {
	z-index: 1000;
	position: fixed;
	left: 250px;
	width: 250px;
	height: 100%;
	margin-left: -250px;
	overflow-y: auto;
	/* Apply button styles to sidebar */
	box-shadow: 1px 1px 3px #b5b5b5, -1px -1px 3px #ffffff;
	/* Apply box shadow */
	transition: .4s ease-in-out; /* Inherit transition effect */
}

.sidebar:hover {
	box-shadow: inset 3px 3px 6px #b5b5b5, inset -3px -3px 6px #ffffff;
	/* Add hover effect */
}

.main {
	color: black;
}

z

	.aList {
	text-decoration: none;
}

/* Updated styles */
.sidebar .nav-link {
	font-weight: bold; /* Bold text for navigation links */
	transition: background-color 0.2s ease-in-out; /* Hover effect */
}

.sidebar .nav-link:hover {
	background-color: #172a37; /* Slightly darken background on hover */
}

.sidebar h3 {
	margin-bottom: 15px; /* Add some space after the heading */
}

/* Add your logo or icon styles here */

/* Media query example for smaller screens */
@media ( max-width : 768px) {
	.sidebar {
		width: 75%; /* Adjust sidebar width for smaller devices */
	}
}
</style>
</head>
<body>


	<!-- MAIN CONTENT -->

	<!-- SIDEBAR -->
	<div class="sidebar">
		<nav class="nav flex-column">
			<br>
			<div class="dropdown" style="margin-left: 20px">
				<a title="Hệ thống giáo dục trực tuyến" class="d-inline-flex align-items-center mb-2 link-dark text-decoration-none" href="#" aria-label="Bootstrap">
		            <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" class="d-block me-2" viewBox="0 0 118 94" role="img">
		            	<path fill-rule="evenodd" clip-rule="evenodd" d="M24.509 0c-6.733 0-11.715 5.893-11.492 12.284.214 6.14-.064 14.092-2.066 20.577C8.943 39.365 5.547 43.485 0 44.014v5.972c5.547.529 8.943 4.649 10.951 11.153 2.002 6.485 2.28 14.437 2.066 20.577C12.794 88.106 17.776 94 24.51 94H93.5c6.733 0 11.714-5.893 11.491-12.284-.214-6.14.064-14.092 2.066-20.577 2.009-6.504 5.396-10.624 10.943-11.153v-5.972c-5.547-.529-8.934-4.649-10.943-11.153-2.002-6.484-2.28-14.437-2.066-20.577C105.214 5.894 100.233 0 93.5 0H24.508zM80 57.863C80 66.663 73.436 72 62.543 72H44a2 2 0 01-2-2V24a2 2 0 012-2h18.437c9.083 0 15.044 4.92 15.044 12.474 0 5.302-4.01 10.049-9.119 10.88v.277C75.317 46.394 80 51.21 80 57.863zM60.521 28.34H49.948v14.934h8.905c6.884 0 10.68-2.772 10.68-7.727 0-4.643-3.264-7.207-9.012-7.207zM49.948 49.2v16.458H60.91c7.167 0 10.964-2.876 10.964-8.281 0-5.406-3.903-8.178-11.425-8.178H49.948z" fill="currentColor"></path></svg>
		            <span class="fs-5">
		            <h5>Programming Couse</h5>
		            </span>
		          </a>
				
				<ul class="dropdown-menu dropdown-menu-dark text-small shadow"
					aria-labelledby="dropdownUser1">

					<li><hr class="dropdown-divider"></li>
				</ul>
			</div>
			<hr>
			<div class="flex-shrink-0 p-3 bg-white" style="width: 280px;">
				<ul class="list-unstyled ps-0">
					<li class="mb-1">
					        <button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse" data-bs-target="#home-collapse" aria-expanded="true">
					          Quản lý khóa học
					        </button>
					        <div class="collapse" id="home-collapse">
					          <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small" style="margin-left: 30px">
					            <li><a href="${pageContext.request.contextPath}/newCourseServlet" class="link-dark rounded">Thêm</a></li>
					            <li><a href="${pageContext.request.contextPath}/courseListADMIN" class="link-dark rounded">Sửa khóa học</a></li>
					            
					          </ul>
					        </div>
					      </li>
					
					<li class="mb-1">
						<button
							class="btn btn-toggle align-items-center rounded collapsed"
							data-bs-toggle="collapse" data-bs-target="#orders-collapse"
							aria-expanded="false">Quản lý bài viết</button>
						<div class="collapse" id="orders-collapse">
							<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small"
								style="margin-left: 30px">
								<li><a href="${pageContext.request.contextPath}/BlogManagement" class="link-dark rounded">Xem</a></li>
							</ul>
						</div>
					</li>
					<li class="border-top my-3"></li>
					<li class="mb-1">
						<button
							class="btn btn-toggle align-items-center rounded collapsed"
							data-bs-toggle="collapse" data-bs-target="#account-collapse"
							aria-expanded="false">Account</button>
						<div class="collapse" id="account-collapse">
							<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small"
								style="margin-left: 30px">
								<li><a href="../index.jsp" class="link-dark rounded">Đăng xuất</a></li>
							</ul>
						</div>
					</li>
				</ul>
			</div>
		</nav>
	</div>
	<!-- END SIDEBAR -->

	<!-- MAIN CONTENT -->
</body>
</html>