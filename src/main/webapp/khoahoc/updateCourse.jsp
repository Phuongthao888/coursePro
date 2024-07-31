<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
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
		<div class="container">
			<h3 class="mt-4">Cập nhật khóa học</h3>
			<form method="post" action="updateCourseServlet">
			<div class="form-group">
					<label for="packages">Khóa học:</label> <input type="number"
						class="form-control" id="packages" name="packages"
						value="${updateCourse.packages}" readonly="readonly">
				</div>
				<div class="form-group">
					<label for="namePackages">Tên khóa học: </label> <input type="text"
						class="form-control" id="namePackages" name="namePackages"
						value="${updateCourse.namePackages}">
				</div>
				<div class="form-group">
					<label for="description">Mô tả khóa học</label> <input type="text"
						class="form-control" id="description" name="description"
						value="${updateCourse.description}">
				</div>
				<div class="form-group">
					<label for="costPrice">Giá tiền: </label> <input type="number"
						class="form-control" id="costPrice" name="costPrice"
						value="${updateCourse.costPrice}">
				</div>
				<div class="form-group">
					<label for="salePrice">Giá sale (nếu có): </label> <input type="number"
						class="form-control" id="salePrice" name="salePrice"
						value="${updateCourse.salePrice}">
				</div>
				<div class="form-group">
					<label for="payment">Phương thức thanh toán: </label> <input type="text"
						class="form-control" id="payment" name="payment"
						value="${updateCourse.payment}">
				</div>
				<button type="submit" class="btn btn-primary">Cập nhật</button>
			</form>
		</div>
	</div>
</body>
</html>