<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<link
	href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i&display=swap"
	rel="stylesheet">

<title>Stand Blog Posts</title>


<link href="blogcss/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />

<link href="blogcss/assets/css/flex-slider.css" rel="stylesheet"
	type="text/css" />
<link href="blogcss/assets/css/fontawesome.css" rel="stylesheet"
	type="text/css" />
<link href="blogcss/assets/css/owl.css" rel="stylesheet" type="text/css" />
<link href="blogcss/assets/css/templatemo-stand-blog.css"
	rel="stylesheet" type="text/css" />
<style>
.post-info {
	color: white; /* Màu chữ trắng */
	font-size: 16px; /* Kích thước chữ lớn hơn */
	font-weight: bold; /* Chữ in đậm */
}

.blurry-image {
	width: 420px;
	height: 220px;
	object-fit: cover;
	opacity: 0.3; /* Điều chỉnh giá trị để thay đổi mức độ mờ */
}
</style>

</head>

<body>


	<div id="preloader">
		<div class="jumper">
			<div></div>
			<div></div>
			<div></div>
		</div>
	</div>



	<div id="header"></div>
	<script>
	        // Sử dụng JavaScript để nhúng nội dung từ một trang HTML
	        fetch('./header-footer-content/header.jsp')
	            .then(response => response.text())
	            .then(html => {
	                document.getElementById('header').innerHTML = html;
	            });
	    </script>
	<div class="heading-page header-text">
            <section class="page-heading">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="text-content">
                                <h4>Post Details</h4>
                                <h2>Single blog post</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
	<div class="main-banner header-text" style="background-color: #cccccc; margin-top: 2rem">
		<div class="container-fluid">
			<div class="owl-banner owl-carousel">
				<c:forEach items="${blogList}" var="blog">
					<div class="item">
						<img src="${blog.img}" alt="${blog.name}" class="blurry-image"
							style="width: 480px; height: 220px; object-fit: cover;">
						<div class="item-content">
							<div class="main-content">
								<a href=""><h4>${blog.name}</h4></a>
								<p class="post-info" style="color: white;">
									<c:choose>
										<c:when test="${fn:length(blog.description) > 50}">
                                                ${fn:substring(blog.description, 0, 50)}...
                                            </c:when>
										<c:otherwise>
                                                ${blog.description}
                                            </c:otherwise>
									</c:choose>

								</p>
								<div class="col-lg-4">
									<div>
										<a href="blogContent?blogId=${blog.id}"
											class="btn btn-primary btn-custom text-light">READ MORE</a>
									</div>
								</div>
								<ul class="post-info">
									<li><a href="#">Admin</a></li>
									<li><a href="#">May 16, 2020</a></li>
									<li><a href="#">36 Comments</a></li>
								</ul>

							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>


	<div id="footer"></div>

	<script>
            // Sử dụng JavaScript để nhúng nội dung từ một trang HTML
            fetch('./header-footer-content/footer.jsp')
                .then(response => response.text())
                .then(html => {
                    document.getElementById('footer').innerHTML = html;
                });
        </script>



	<script src="blogcss/vendor/jquery/jquery.min.js"
		type="text/javascript"></script>
	<script src="blogcss/vendor/bootstrap/js/bootstrap.bundle.min.js"
		type="text/javascript"></script>


	<script src="blogcss/assets/js/custom.js"></script>
	<script src="blogcss/assets/js/owl.js"></script>
	<script src="blogcss/assets/js/slick.js"></script>
	<script src="blogcss/assets/js/isotope.js"></script>
	<script src="blogcss/assets/js/accordions.js"></script>

	<script language="text/Javascript">
            cleared[0] = cleared[1] = cleared[2] = 0;
            function clearField(t) {
                if (!cleared[t.id]) {
                    cleared[t.id] = 1;
                    t.value = '';
                    t.style.color = '#fff';
                }
            }
        </script>

</body>
</html>