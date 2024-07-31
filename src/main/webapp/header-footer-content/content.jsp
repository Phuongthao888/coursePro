<%@page import="java.util.List"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        .custom-section {
            background-image: url('https://files.fullstack.edu.vn/f8-prod/blog_posts/107/613a1f3685814.png');
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
		    background-color: rgba(34, 34, 34, 0.7); /* Màu nền với độ trong suốt cao hơn (sử dụng rgba) */
		    border-radius: 10px; /* Độ cong của viền */
		}
		
		.custom-section-content {
		    padding: 20px; /* Thêm padding cho nội dung */
		    position: relative; /* Đặt vị trí của nội dung là tương đối */
		    z-index: 1; /* Đặt nội dung trên cùng */
		    color: #ffffff; /* Màu chữ cho nội dung */
		}
    </style>
</head>

<body>
    <section class="custom-section">
        <div class="custom-section-container">
            <h1>Tổng quan</h1>
            <p>Nền tảng này được thiết kế với mục tiêu cung cấp giải pháp giáo dục toàn diện trong lĩnh vực lập trình và phát triển phần mềm.</p>
        </div>
    </section>


</body>

</html>