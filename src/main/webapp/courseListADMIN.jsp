<%@ page import="java.util.Map"%>
<%@ page import="java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Quản lý hóa đơn</title>
<style>
.card {
	border: 1px solid #ccc;
	border-radius: 5px;
	padding: 10px;
	margin-bottom: 20px;
}

.card-header {
	background-color: #f0f0f0;
	padding: 10px;
	border-bottom: 1px solid #ccc;
	cursor: pointer;
}

.card-body {
	padding: 10px;
}

.details-row {
	border-top: 1px solid #ccc;
	border-bottom: 1px solid #ccc;
	padding: 5px 0;
}

.container-main {
	display: flex; /* Sử dụng Flexbox */
	height: auto; /* Giữ nguyên chiều cao */
	overflow-y: auto; /* Cho phép cuộn theo chiều dọc */
}

.left-panel, .right-panel {
	flex: 1; /* Chia đều không gian giữa hai panel */
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

#scrollButtonsContainer {
	position: fixed;
	bottom: 20px;
	right: 20px;
}

#scrollButton, #scrollToTopButton {
	margin-bottom: 10px;
}
</style>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script>
        function toggleDetails(packages) {
            var details = document.getElementById("details_" + packages);
            details.classList.toggle("d-none");
        }
        function viewCoures(packages) {
            // Chuyển hướng tới ViewHoaDonServlet với mã hóa đơn
            window.location.href = "viewCourseADMIN?packages=" + packages;
        }
        function editCourse(packages) {
    		window.location.href = "updateCourse.jsp?packages=" + packages;
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
		<br>
		<!-- END SIDEBAR -->

		<div class="container">
			<!-- Lưới giữa footer và main -->
			<!-- Thêm nội dung của lưới này tại đây -->
			<div style="width: 100%">
				<div class="row">
					<br>
					<h3>Chỉnh sửa khóa học và video</h3>
					<br>
					<c:forEach var="entry" items="${courseMap}">
						<div class="col-md-4">
							<div class="card mt-3">
								<div class="card-header" onclick="toggleDetails(${entry.key})">
									<button onclick="viewCoures(${entry.key})"
										class="btn btn-success btn-sm float-right mr-2">view</button>
									Gói khóa học: ${entry.key}
								</div>
								<div class="card-body d-none" id="details_${entry.key}">
									<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
									<div class="details-row">
										<div class="row">
											<div class="col-6">
												<strong>Tên gói:</strong>
											</div>
											<div class="col-6">${entry.value[0].namePackages}</div>
										</div>
										<div class="row">
											<div class="col-6">
												<strong>Mô tả gói:</strong>
											</div>
											<div class="col-6">${entry.value[0].description}</div>
										</div>
										<div class="row">
											<div class="col-6">
												<strong>Giá bán:</strong>
											</div>
											<div class="col-6">${entry.value[0].costPrice}</div>
										</div>
										<div class="row">
											<div class="col-6">
												<strong>Giá sale:</strong>
											</div>
											<div class="col-6">${entry.value[0].salePrice}</div>
										</div>
										<div class="row">
											<div class="col-6">
												<strong>Phương thức thanh toán:</strong>
											</div>
											<div class="col-6">${entry.value[0].payment}</div>
											<a
												href="${pageContext.request.contextPath}/updateCourseServlet?packages=${entry.key}"
												class="btn btn-secondary" style="margin-top: 1rem"> Sửa
											</a> <a
												href="${pageContext.request.contextPath}/deleteCourseServlet?packages=${entry.key}"
												class="btn btn-danger" class="btn btn-secondary"
												style="margin-top: 1rem">Xóa</a>
										</div>

									</div>
									<br>

									<!-- Thêm một nút để hiển thị thêm -->

								</div>
							</div>
						</div>
					</c:forEach>
				</div>

			</div>
		</div>
	</div>
</body>
</html>