<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.1.3/js/bootstrap.bundle.min.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">

    <title>Document</title>
    <style>

.row {
    display: flex;
    flex-wrap: wrap; 
    gap: 20px; 
}


.col-md-6 {
    flex: 1; 
    display: flex;
    flex-direction: column; 
}


.contact-info, .contact-form {
    display: flex;
    flex-direction: column; 
    justify-content: space-between; 
    border: 1px solid #dee2e6;
    padding: 30px;
    border-radius: 5px;
    background-color: #f8f9fa;
    height: 100%; 
    transition: transform 0.3s ease;
    box-shadow: 0 5px 15px rgba(0,0,0,0.1);
}


.contact-info {
    background-color: #e9ecef; 
}

.contact-form {
    background-color: #fff; 
}

.contact-info h2, .contact-form h2 {
    font-size: 24px; 
    font-weight: bold; 
}

.contact-info p, .contact-form p {
    font-size: 16px; 
    color: #333; 
}

.contact-info p i, .contact-form p i {
    margin-right: 10px; 
}

button.btn {
    width: 100%; 
    padding: 10px 0; 
}

.contact-info:hover, .contact-form:hover {
    transform: translateY(-10px);
}


    </style>
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

      <div class="container mt-5">
        <div class="row">
            <div class="col-md-5">
                <div class="contact-info">
                    <h2>Contact Information</h2>
                    <p><i class="fas fa-map-marker-alt"></i> 123 Street, City, Country</p>
                    <p><i class="fas fa-phone"></i>
                     <a href="tel:+84245626523" class="flex items-center" style="text-decoration: none;">+84 2456 265 23</a>
                     </p>
                    <p><i class="fas fa-envelope"></i> email@example.com</p>
                    <p><i class="fab fa-facebook"></i> Follow us on Facebook <a href="https://www.facebook.com/profile.php?id=61559611460785&mibextid=ZbWKwL" target="_blank" style="text-decoration: none;">B-10 Pages</a></p>
                </div>
            </div>
            <div class="col-md-6">
                <div class="contact-form">
                    <h2>Send Us a Message</h2>
                    <form onsubmit="submitForm(event)">
                        <input type="text" class="form-control mb-3" placeholder="Your Name" required>
                        <input type="email" class="form-control mb-3" placeholder="Your Email" required>
                        <textarea class="form-control mb-3" placeholder="Your Message" required></textarea>
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    



      <footer class="bd-footer py-5 mt-5 bg-light">
    <div class="container py-5">
      <div class="row">
        <div class="col-lg-3 mb-3">
          <a class="d-inline-flex align-items-center mb-2 link-dark text-decoration-none" href="/" aria-label="Bootstrap">
            <svg xmlns="http://www.w3.org/2000/svg" width="40" height="32" class="d-block me-2" viewBox="0 0 118 94" role="img"><title>B-10</title><path fill-rule="evenodd" clip-rule="evenodd" d="M24.509 0c-6.733 0-11.715 5.893-11.492 12.284.214 6.14-.064 14.092-2.066 20.577C8.943 39.365 5.547 43.485 0 44.014v5.972c5.547.529 8.943 4.649 10.951 11.153 2.002 6.485 2.28 14.437 2.066 20.577C12.794 88.106 17.776 94 24.51 94H93.5c6.733 0 11.714-5.893 11.491-12.284-.214-6.14.064-14.092 2.066-20.577 2.009-6.504 5.396-10.624 10.943-11.153v-5.972c-5.547-.529-8.934-4.649-10.943-11.153-2.002-6.484-2.28-14.437-2.066-20.577C105.214 5.894 100.233 0 93.5 0H24.508zM80 57.863C80 66.663 73.436 72 62.543 72H44a2 2 0 01-2-2V24a2 2 0 012-2h18.437c9.083 0 15.044 4.92 15.044 12.474 0 5.302-4.01 10.049-9.119 10.88v.277C75.317 46.394 80 51.21 80 57.863zM60.521 28.34H49.948v14.934h8.905c6.884 0 10.68-2.772 10.68-7.727 0-4.643-3.264-7.207-9.012-7.207zM49.948 49.2v16.458H60.91c7.167 0 10.964-2.876 10.964-8.281 0-5.406-3.903-8.178-11.425-8.178H49.948z" fill="currentColor"></path></svg>
            <span class="fs-5">B-10</span>
          </a>
          <ul class="list-unstyled small text-muted">
            <li class="mb-2">Designed and built with all the love in the world by the <a href="/docs/5.0/about/team/">B-10 team</a> with the help of <a href="https://github.com/twbs/bootstrap/graphs/contributors">our contributors</a>.</li>
            
          </ul>
        </div>
        <div class="col-6 col-lg-2 offset-lg-1 mb-3">
          <h5></h5>
          <ul class="list-unstyled">
            <li class="mb-2"></li>
            <li class="mb-2"></li>
            <li class="mb-2"></li>
            <li class="mb-2"></li>
            <li class="mb-2"></li>
          </ul>
        </div>
        
        <div class="col-6 col-lg-2 mb-3">
          <h5></h5>
          <ul class="list-unstyled">
            <li class="mb-2"></li>
            <li class="mb-2"></li>
            <li class="mb-2"></li>
            <li class="mb-2"></li>
            <li class="mb-2"></li>
          </ul>
        </div>
        <div class="col-6 col-lg-2 mb-3">
          <h5>Copyright @ B-10</h5>
          <ul class="list-unstyled">
            <li class="mb-2"><a href="#">Không sao chép vi phạm bản quyền</a></li>
          </ul>
        </div>
      </div>
    </div>
  </footer>
      <script>
        function submitForm(event) {
            event.preventDefault();
            alert('Thank you for your message. We will get back to you soon!');
        }
    </script>
</body>
</html>