<%@page import="java.util.List"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
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
.card-add {
	width: 200px;
	height: 40px;
	background-color: #99CCFF;
	border-radius: 5px;
	display: flex; /* Use flexbox */
	align-items: center;
	justify-content: center; /* Center content horizontally */
	margin-top: 20px;
}

.card-add a {
	text-decoration: none; /* Remove underline from the link */
	color: #000000; /* Set text color */
}

.custom-section {
	background-image:
		url('https://files.fullstack.edu.vn/f8-prod/blog_posts/107/613a1f3685814.png');
	background-size: cover;
	background-position: center;
	color: #ffffff; /* Màu chữ cho nội dung trong section */
	padding: 100px 0; /* Thêm padding cho phần tổng quan */
	text-align: center; /* Căn giữa nội dung */
}

.custom-section h1 {
	font-size: 48px; /* Kích thước font cho tiêu đề */
	font-weight: 700; /* Độ đậm của font tiêu đề */
	margin-bottom: 20px; /* Khoảng cách giữa tiêu đề và nội dung */
}

.custom-section p {
	font-size: 20px; /* Kích thước font cho nội dung */
	font-weight: 400; /* Độ đậm của font nội dung */
}

.custom-section-container {
	position: relative; /* Đặt vị trí của container là tương đối */
	max-width: 800px; /* Chiều rộng tối đa của container */
	margin: 0 auto; /* Canh giữa container */
	overflow: hidden; /* Ẩn bất kỳ nội dung nào vượt ra ngoài container */
}

.custom-section-overlay {
	position: absolute; /* Đặt vị trí của overlay là tuyệt đối */
	top: 0; /* Đặt overlay ở trên cùng của container */
	left: 0; /* Đặt overlay ở bên trái của container */
	width: 100%; /* Đặt chiều rộng của overlay là 100% */
	height: 100%; /* Đặt chiều cao của overlay là 100% */
	background-color: rgba(34, 34, 34, 0.7);
	/* Màu nền với độ trong suốt cao hơn (sử dụng rgba) */
	border-radius: 10px; /* Độ cong của viền */
}

.custom-section-content {
	padding: 20px; /* Thêm padding cho nội dung */
	position: relative; /* Đặt vị trí của nội dung là tương đối */
	z-index: 1; /* Đặt nội dung trên cùng */
	color: #ffffff; /* Màu chữ cho nội dung */
}

.container-main {
	display: flex; /* Sử dụng Flexbox */
	height: auto; /* Giữ nguyên chiều cao */
	overflow-y: auto; /* Cho phép cuộn theo chiều dọc */
}

.main-video {
	display: flex; /* Sử dụng Flexbox */
	align-items: center; /* Canh giữa theo chiều dọc */
	justify-content: center; /* Canh giữa theo chiều ngang */
	height: 100%; /* Chiều cao 100% của panel */
}

.video {
	max-width: 100%; /* Video sẽ có chiều rộng tối đa 100% của panel */
}
s
</style>
<script>
    const videoDescriptionElement = document.getElementById('videoDescription');
	const videoDescriptionText = videoDescriptionElement.textContent;

	if (videoDescriptionText.length > 50) {
		videoDescriptionElement.textContent = videoDescriptionText.substring(0, 50) + '...';
	}
</script>
</head>
<body>
	<div class="viewport">
		<!-- SIDEBAR -->
		<div id="sidebar"></div>
		<script>
		            // Sử dụng JavaScript để nhúng nội dung từ một trang HTML
		            fetch('./sidebar.jsp')
		                .then(response => response.text())
		                .then(html => {
		                    document.getElementById('sidebar').innerHTML = html;
		                });
		        </script>
		<!-- END SIDEBAR -->
		<br>

			<!-- Bên trái -->
			<div class="main-video">
				<div class="video">
					<c:forEach items="${courseList}" var="course" varStatus="loop">
						<c:choose>
							<c:when test="${loop.index == 0}">
								<video style="width: 650px" src="${course.video}" controls muted
									autoplay></video>
								<h3 class="title">${course.tenVideo}</h3>
							</c:when>
							<c:otherwise>
								<ol class="list-group">
									<li
										class="list-group-item d-flex justify-content-between align-items-start">
										<div class="ms-2 me-auto">
											<h6 class="card-subtitle mb-2 text-muted">Gói:
												${course.packages} - ${course.namePackages}</h6>
											<div class="fw-bold">Tên video: ${course.tenVideo}</div>
											<video style="width: 150px" src="${course.video}" controls
												muted></video>
											<div class="fw-bold">Mô tả video: ${course.description}</div>
											<script>
											    var maxLength = 50; // Số từ tối đa muốn hiển thị
											
											    var description = "${course.description}"; // Lấy mô tả từ database
											    var words = description.split(' ');
											
											    if (words.length > maxLength) {
											        words = words.slice(0, maxLength);
											        words.push('...'); // Thêm dấu chấm cuối nếu cần
											    }
											
											    document.getElementById('videoDescription').innerHTML = words.join(' ');
											</script>
										</div> <span class="badge text-bg-primary rounded-pill">New</span> <span
										class="badge  rounded-pill"> <a
											href="${pageContext.request.contextPath}/updateVideoServlet?videoID=${course.videoID}"
											class="d-inline"> Sửa </a></span>
									</li>
								</ol>
							</c:otherwise>
						</c:choose>
					</c:forEach>
				</div>
			</div>

			<script>
			    document.addEventListener("DOMContentLoaded", function() {
			        var videoItems = document.querySelectorAll(".list-group-item");
			
			        videoItems.forEach(function(item) {
			            item.addEventListener("click", function() {
			                var videoSrc = item.querySelector("video").getAttribute("src");
			                var videoTitle = item.querySelector(".fw-bold").textContent;
			
			                var mainVideo = document.querySelector(".main-video video");
			                var mainTitle = document.querySelector(".main-video .title");
			                mainVideo.src = videoSrc;
			                mainTitle.textContent = videoTitle;
			                
			             // Cuộn trang về trang đầu
			                window.scrollTo({ top: 0, behavior: 'smooth' }); // Sử dụng behavior: 'smooth' để cuộn mượt hơn
			            });
			        });
			    });
			</script>

</div>
</body>
</html>