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

.left-panel, .right-panel {
	flex: 1; /* Chia đều không gian giữa hai panel */
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

.middle-panel {
	margin-top: 50px;
	display: flex;
	flex-direction: column; /* Đặt hướng cột cho container */
	justify-content: flex-end;
	/* Cách các phần tử bên trong với khoảng trống đều nhau */
	align-items: center; /* Canh giữa theo chiều dọc */
}

.middle-panel>div:last-child {
	align-self: flex-end;
	/* Căn chính xác phần tử cuối cùng về phía dưới cùng */
}

#scrollButtonsContainer {
	position: fixed;
	bottom: 20px;
	right: 20px;
}

#scrollButton, #scrollToTopButton {
	margin-bottom: 10px;
}

.loader {
	display: flex;
	justify-content: center;
	align-items: center;
	position: relative;
	cursor: not-allowed;
	scale: 0.7;
}

.central {
	display: flex;
	justify-content: center;
	align-items: center;
	position: relative;
	width: 4em;
	height: 4em;
	border-radius: 50%;
	box-shadow: 0.5em 1em 1em blue, -0.5em 0.5em 1em lime, 0.5em -0.5em 1em
		cyan, -0.5em -0.5em 1em yellow;
}

.external-shadow {
	width: 4em;
	height: 4em;
	border-radius: 50%;
	display: flex;
	justify-content: center;
	align-items: center;
	position: relative;
	box-shadow: 0.5em 0.5em 3em blue, -0.5em 0.5em 3em lime, 0.5em -0.5em
		3em cyan, -0.5em -0.5em 3em yellow;
	z-index: 999;
	animation: rotate 3s linear infinite;
	background-color: #212121;
}

.intern {
	position: absolute;
	color: white;
	z-index: 9999;
}

.intern::before {
	content: "AI";
	animation: percent 2s ease-in-out infinite;
}

@
keyframes rotate { 0% {
	transform: rotate(0deg);
}

50


%
{
transform


:


rotate
(


180deg


)
;


}
100


%
{
transform


:


rotate
(


360deg


)
;


}
}
@
keyframes percent { 33% {
	content: 'AI';
}

}
.fw-bold {
	overflow: hidden;
	text-overflow: ellipsis;
	display: -webkit-box;
	-webkit-line-clamp: 2; /* Số dòng muốn hiển thị */
	-webkit-box-orient: vertical;
}
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
	<div id="header"></div>

	<script>
        // Sử dụng JavaScript để nhúng nội dung từ một trang HTML
        fetch('./header-footer-content/header.jsp')
            .then(response => response.text())
            .then(html => {
                document.getElementById('header').innerHTML = html;
            });
    </script>

	<main class="container container-main">
		<div class="left-panel">
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
										</div> <span class="badge text-bg-primary rounded-pill">New</span>
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
		<div class="right-panel" style="margin-left: 20px">
			<!-- Bên phải -->
			<div class="compiler-container">
				<!-- Phần code của compiler.html sẽ được include vào đây -->
				<jsp:include page="./khoahoc/compiler.html" />
			</div>
		</div>
	</main>

	<div class="container middle-panel">
		<!-- Lưới giữa footer và main -->
		<!-- Thêm nội dung của lưới này tại đây -->
		<div style="width: 100%">
			<jsp:include page="./khoahoc/AI.html" />
		</div>
	</div>

	<!-- THANH CUỘN -->
	<div id="scrollButtonsContainer" style="width: 4%">
		<svg id="scrollToTopButton"
			class="w-[41px] h-[41px] text-gray-800 dark:text-white"
			aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="60"
			height="60" fill="none" viewBox="0 0 24 24">
			  <path stroke="currentColor" stroke-linecap="round"
				stroke-linejoin="round" stroke-width="2"
				d="m16 17-4-4-4 4m8-6-4-4-4 4" />
			</svg>

		<div id="scrollButton" class="loader">
			<div class="intern"></div>
			<div class="external-shadow">
				<div class="central"></div>
			</div>
		</div>

	</div>
	<script>
		document.getElementById("scrollButton").addEventListener("click", function() {
		    window.scrollTo(0, document.body.scrollHeight);
		});
		</script>
	<script>
		document.getElementById("scrollToTopButton").addEventListener("click", function() {
		    window.scrollTo(0, 0);
		});
		</script>
	<!-- END THANH CUỘN -->
	<div id="footer"></div>

	<script>
            // Sử dụng JavaScript để nhúng nội dung từ một trang HTML
            fetch('./header-footer-content/footer.jsp')
                .then(response => response.text())
                .then(html => {
                    document.getElementById('footer').innerHTML = html;
                });
        </script>


</body>
</html>