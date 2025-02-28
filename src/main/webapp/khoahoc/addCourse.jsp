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
</head>
<body>
	<div class="viewport">
		<!-- SIDEBAR -->
		<div id="sidebar"></div>
		<script>
		            // Sử dụng JavaScript để nhúng nội dung từ một trang HTML
		            fetch('../sidebar.jsp')
		                .then(response => response.text())
		                .then(html => {
		                    document.getElementById('sidebar').innerHTML = html;
		                });
		        </script>
		<!-- END SIDEBAR -->
		<br>
		<!-- MAIN -->
		<div class="container">
			<form class="row g-6"
				action="${pageContext.request.contextPath}/newCourseServlet"
				method="post">
				<div class="container text-center">
				<h3>Thêm khóa học và video</h3>
				<h6><em>(Nếu báo lỗi là do trùng mã video, nếu trùng mã gói thì toàn bộ thông tin gói tạo sau đều được cập nhật theo gói đầu tiên)</em></h6><br>
					<div class="row">
						<div class="col-7">
						<!--  
							<div class="col-md-12">
								<label for="id" class="form-label"> <b> Số thứ
										tự </b></label> <input type="number" class="form-control" id="id"
									name="id" required>
							</div> -->
							<div class="col-md-12">
								<label for="packages" class="form-label"> <b> Mã gói
								</b></label> <input type="number" class="form-control" id="packages"
									name="packages" required>
							</div>

							<div class="col-md-12">
								<label for="namePackages" class="form-label"><b> Tên
										gói </b></label> <input type="text" class="form-control" id="namePackages"
									name="namePackages" required>
							</div>
							<div class="col-md-12">
								<label for="description" class="form-label"><b> Mô
										tả gói khóa học </b></label> <input type="text" class="form-control"
									id="description" name="description" required>
							</div>
							<div class="col-md-12">
								<label for="costPrice" class="form-label"><b> Giá
										gốc </b></label> <input type="number" class="form-control" id="costPrice"
									name="costPrice" required>
							</div>
							<div class="col-md-12">
								<label for="salePrice" class="form-label"><b> Giá
										sale (nếu có) </b></label> <input type="number" class="form-control"
									id="salePrice" name="salePrice" required>
							</div>
						</div>
						<div class="col-5">

							<div class="col-md-12">
								<label for="payment" class="form-label"><b> Phương
										thức thanh toán </b></label> <input type="text" class="form-control"
									id="payment" name="payment" required>
							</div>
							<div class="col-md-12">
							    <label for="videoID" class="form-label"><b>Mã video</b></label>
							    <input type="text" class="form-control" id="videoID" name="videoID" required maxlength="9">
							</div>
							
							<script>
							    document.getElementById("videoID").addEventListener("input", function() {
							        if (this.value.length > this.maxLength)
							            this.value = this.value.slice(0, this.maxLength);
							    });
							</script>

							<div class="col-md-12">
								<label for="tenVideo" class="form-label"><b> Tên
										video </b></label> <input type="text" class="form-control" id="tenVideo"
									name="tenVideo" required>
							</div>
							<div class="col-md-12">
								<label for="video" class="form-label"><b> Link video
								</b></label> <input type="text" class="form-control" id="video" name="video"
									required>
							</div>
							<br>

							<div class="col-12">
								<button class="btn btn-primary" type="submit">Thêm vào
									danh sách</button>
								<button class="btn btn-info" type="reset">Đặt lại</button>
								<br> <a
									href="${pageContext.request.contextPath}/courseServlet"
									class="btn btn-secondary"
									style="width: 250px; margin-top: 10px">Quay lại</a>
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>


		<!-- END MAIN -->
	</div>
</body>
</html>