<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <title>Music Instrument Shop</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">


  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"
  />
  <style>


  .navbar {
      background-color: #f8f9fa;
    }

    nav ul li a:hover {
      background-color: #F1C40F;
      color: green;
    }

    nav ul li a:hover {
      background-color: red;
      color: green; /* Set the font color on hover */
    }

    /* Animation */
    @keyframes fadeInUp {
      from {
        opacity: 0;
        transform: translate3d(0, 30%, 0);
      }
      to {
        opacity: 1;
        transform: translate3d(0, 0, 0);
      }
    }

    .fade-in-up {

      opacity: 0;
      animation: fadeInUp 1s ease-in-out forwards;

    }

.fade-in-up img{
  transition: 1s all;
}


    .fade-in-up img:hover{
      transform: scale(1.2);

    }

    @keyframes scaleIn {
      from {
        transform: scale(0);
      }
      to {
        transform: scale(1);
      }
    }

    .scale-in {
      animation: scaleIn 0.5s ease-in-out forwards;
    }
  








  </style>
</head>
<body>
 
  <!-- Navigation bar start -->
<nav style="background-color: black;" class="navbar navbar-expand-lg navbar-light">
  <img style="width: 150px; height: 50px;" src="../Resources/logo2.png">
  <button style="background-color:#F1C40F;" class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a style="color:#F1C40F;" class="nav-link" href="#">Home <span style="color:white; border-color: white;" class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a style="color:#F1C40F;" class="nav-link" href="#">About us</a>
      </li>
      <li class="nav-item">
        <a style="color:#F1C40F;" class="nav-link" href="#">Services</a>
      </li>
      <li class="nav-item dropdown">
        <a style="color:#F1C40F;" class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Categories
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">string instrument</a>
          <a class="dropdown-item" href="#">purcussion instrument</a>
          <a class="dropdown-item" href="#">keyboard and piano</a>
        </div>
      </li>
      <li class="nav-item">
        <a style="color:#F1C40F;" class="nav-link" href="#">Contact</a>
      </li>
    </ul>
  </div>
  <form class="form-inline">
    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
    <button style="background-color:#F1C40F; color: black; border-color: #F1C40F;" class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
  </form>
</nav>

</div>
<!-- Navigation bar end -->


<img  style="width:100%; height: 500px;" src="../Resources/cover2.webp" class="img-fluid" alt="Responsive image">
<center><h1 style="margin-top:50px; ">SERVICES</h1></center>






  <div style="margin-top:100px; margin-bottom: 50px;" class="container">
    <div class="row">
      <div class="col-md-6 col-lg-4">
        <div style="height:400px;" class="card mb-3">
          <div class="card-body">
            <img style="width:100px; height:100px; margin-left: 100px; margin-bottom:10px;" src="../Resources/icon1.png">
            <h5 class="card-title">INTEREST</h5>
            <p class="card-text"> At our music instrument selling shop, we understand that pursuing your passion for music can sometimes require a financial investment. That's why we offer interest-free payment options, allowing you to purchase your desired musical instrument without any additional financial burden.</p>
          </div>
        </div>
      </div>
      <div class="col-md-6 col-lg-4">
        <div style="height:400px;" class="card mb-3">
          <div class="card-body">
              <img style="width:100px; height:100px; margin-left: 100px; margin-bottom:10px;" src="../Resources/icon2.png">
            <h5 class="card-title">FREE DELIVERY</h5>
            <p class="card-text">We believe that the convenience of online shopping should extend to the delivery process as well. With our free delivery service, you can enjoy the luxury of having your newly purchased musical instrument shipped right to your doorstep at no extra cost.</p>
          </div>
        </div>
      </div>
      <div class="col-md-6 col-lg-4">
        <div style="height:400px;" class="card mb-3">
          <div class="card-body">
              <img style="width:100px; height:100px; margin-left: 100px; margin-bottom:10px;" src="../Resources/icon3.png">
            <h5 class="card-title">WARRENTY</h5>
            <p class="card-text">Our music instrument selling shop offers a warranty on all our products. This warranty ensures that your purchased musical instrument is free from defects in materials and workmanship for a specified period. In case you encounter any issues within the warranty period, we will provide assistance and support to resolve the problem.</p>
          </div>
        </div>
      </div>
      <div class="col-md-6 col-lg-4">
        <div style="height:400px;" class="card mb-3">
          <div class="card-body">
              <img style="width:100px; height:100px; margin-left: 100px; margin-bottom:10px;" src="../Resources/icon4.png">
            <h5 class="card-title">ONLINE PAYMENT</h5>
            <p class="card-text">To provide you with a seamless shopping experience, we offer secure online payment options. You can conveniently make your purchase from the comfort of your home or wherever you may be. Our online payment system ensures that your transactions are safe, encrypted, and hassle-free.</p>
          </div>
        </div>
      </div>
      <div class="col-md-6 col-lg-4">
        <div style="height:400px;" class="card mb-3">
          <div class="card-body">
              <img style="width:100px; height:100px; margin-left: 100px; margin-bottom:10px;" src="../Resources/icon5.png">
            <h5 class="card-title">EVERYDAY WORKING</h5>
            <p class="card-text">We understand that your love for music doesn't adhere to a strict schedule, and neither should your shopping opportunities. Our shop is open and operational every day, allowing you to explore and purchase musical instruments whenever you want. Whether it's a weekday or a weekend, we are here to serve you and fulfill your musical needs.</p>
          </div>
        </div>
      </div>
      <div class="col-md-6 col-lg-4">
        <div style="height:400px;" class="card mb-3">
          <div class="card-body">
              <img style="width:100px; height:100px; margin-left: 100px; margin-bottom:10px;" src="../Resources/icon6.png">
            <h5 class="card-title">FAST DILIVERY</h5>
            <p class="card-text">We value your time and understand that you're excited to receive your new musical instrument. That's why we prioritize fast delivery. Once your order is placed, we strive to process and ship it promptly, ensuring that you receive your instrument within the shortest possible timeframe. We work with reliable shipping partners to ensure efficient and timely delivery.</p>
          </div>
        </div>
      </div>
    </div>
  </div>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.0-alpha3/js/bootstrap.bundle.min.js"></script>
</body>
</html>



























<!--footer start-->


  <!-- Footer -->
  <footer
          class="text-center text-lg-start text-dark"
          style="background-color: black;"
          >
    <!-- Section: Social media -->
    <section
             class="d-flex justify-content-between p-4 text-white"
             style="background-color: #D68910;"
             >
      <!-- Left -->
      <div style="color:black;" class="me-5">
        <span>Get connected with us on social networks:</span>
      </div>
      <!-- Left -->

      <!-- Right -->
      <div>
        <a href="" class="text-white me-4">
          <i class="fab fa-facebook-f"></i>
        </a>
        <a href="" class="text-white me-4">
          <i class="fab fa-twitter"></i>
        </a>
        <a href="" class="text-white me-4">
          <i class="fab fa-google"></i>
        </a>
        <a href="" class="text-white me-4">
          <i class="fab fa-instagram"></i>
        </a>
        <a href="" class="text-white me-4">
          <i class="fab fa-linkedin"></i>
        </a>
        <a href="" class="text-white me-4">
          <i class="fab fa-github"></i>
        </a>
      </div>
      <!-- Right -->
    </section>
    <!-- Section: Social media -->

    <!-- Section: Links  -->
    <section style="color:#D68910" class="">
      <div class="container text-center text-md-start mt-5">
        <!-- Grid row -->
        <div class="row mt-3">
          <!-- Grid column -->
          <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
            <!-- Content -->
            <h6 class="text-uppercase fw-bold">Company name</h6>
            <hr
                class="mb-4 mt-0 d-inline-block mx-auto"
                style="width: 60px; background-color: red; height: 2px"
                />
            <p>
              HappyMusic pvt ltd,<br>
              music instruent suppliers,<br>
              kuruduwaththa,<br>
              colombo 7.
            </p>
          </div>
          <!-- Grid column -->

          <!-- Grid column -->
          <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
            <!-- Links -->
            <h6 class="text-uppercase fw-bold">Products</h6>
            <hr
                class="mb-4 mt-0 d-inline-block mx-auto"
                style="width: 60px;  background-color: red; height: 2px"
                />
            <p>
              <a href="#!" style="color:#D68910; text-decoration: none;" >home</a>
            </p>
            <p>
              <a href="#!" style="color:#D68910; text-decoration: none;">about us</a>
            </p>
            <p>
              <a href="#!" style="color:#D68910; text-decoration: none;">services</a>
            </p>
            <p>
              <a href="#!" style="color:#D68910; text-decoration: none;">contact us</a>
            </p>
          </div>
          <!-- Grid column -->

          <!-- Grid column -->
          <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
            <!-- Links -->
            <h6  class="text-uppercase fw-bold">Useful links</h6>
            <hr
                class="mb-4 mt-0 d-inline-block mx-auto"
                style="width: 60px; background-color: red;  height: 2px"
                />
            <p>
              <a style="color:#D68910; text-decoration: none;" href="#!" class="">catalog</a>
            </p>
            <p>
              <a style="color:#D68910; text-decoration: none;" href="#!" class="">string instrument</a>
            </p>
            <p>
              <a style="color:#D68910; text-decoration: none;" href="#!" class="">keybord instrument</a>
            </p>
            <p>
              <a style="color:#D68910; text-decoration: none;" href="#!" class="">pircussion instrument</a>
            </p>
          </div>
          <!-- Grid column -->

          <!-- Grid column -->
          <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
            <!-- Links -->
            <h6 class="text-uppercase fw-bold">Contact</h6>
            <hr
                class="mb-4 mt-0 d-inline-block mx-auto"
                style="width: 60px; background-color: red; height: 2px"
                />
            <p><i class="fas fa-home mr-3"></i>HappyMusic,music instrument suppliers,colombo 7 </p>
            <p><i class="fas fa-envelope mr-3"></i> HappyMUsic@gmail.com.com</p>
            <p><i class="fas fa-phone mr-3"></i> + 01 234 567 88</p>
            <p><i class="fas fa-print mr-3"></i> + 01 234 567 89</p>
          </div>
          <!-- Grid column -->
        </div>
        <!-- Grid row -->
      </div>
    </section>
    <!-- Section: Links  -->

    <!-- Copyright -->
    <div
         class="text-center p-3"
         style="background-color: black; color:#D68910;"
         >
      © 2023 Copyright:
      <a class="" style="color:#D68910;" href="https://mdbootstrap.com/"
         >HappyMusic.com</a
        >
    </div>
    <!-- Copyright -->
  </footer>
  <!-- Footer -->
</div>
<!-- End of .container -->

<!--footer end-->
