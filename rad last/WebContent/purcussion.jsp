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
  /><meta http-equiv="Cache-Control" content="no-store, no-cache, must-revalidate">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Expires" content="0">
  
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
 /* Customize card styles as per your design */
    .card {
      margin-bottom: 20px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      border: none;
      border-radius: 8px;
      transition: box-shadow 0.3s;
    }

    .card:hover {
      box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
    }

    .card-img-top {
      border-radius: 8px 8px 0 0;
    }

    .card-body {
      padding: 20px;
    }

    .card-title {
      font-size: 1.2rem;
      font-weight: bold;
      margin-bottom: 10px;
    }

    .card-text {
      font-size: 1rem;
      color: #6c757d;
      margin-bottom: 15px;
    }

    .card-price {
      font-size: 1.5rem;
      font-weight: bold;
      color: #007bff;
    }








  </style>
</head>
<body>
 
  <!-- Navigation bar start -->
<nav style="background-color: black;" class="navbar navbar-expand-lg navbar-light">
  <img style="width: 150px; height: 50px;" src="images/logo2.png">
  <button style="background-color:#F1C40F;" class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a style="color:#F1C40F;" class="nav-link" href="/MU_SHop/keyboard">Home <span style="color:white; border-color: white;" class="sr-only">(current)</span></a>
      </li>
     
      <li class="nav-item">
        <a style="color:#F1C40F;" class="nav-link" href="/MU_SHop/services">Services</a>
      </li>
      <li class="nav-item dropdown">
        <a style="color:#F1C40F;" class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Categories
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="/MU_Shop/string">string instrument</a>
          <a class="dropdown-item" href="/MU_Shop/purcussion">purcussion instrument</a>
          <a class="dropdown-item" href="/MU_Shop/keyboard">keyboard and piano</a>
        </div>
      </li>
      <li class="nav-item">
        <a style="color:#F1C40F;" class="nav-link" href="/MU_SHop/contact">Contact</a>
      </li>

      <li class="nav-item">
        <a style="color:#F1C40F;" class="nav-link" href="/MU_Shop/getcart">View cart</a>
      </li>
     
      <form action="logout" method="get">
    <button class="btn btn-danger" type="submit">Logout</button>
</form>
      
    </ul>
  </div>
  <form class="form-inline">
    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
    <button style="background-color:#F1C40F; color: black; border-color: #F1C40F;" class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
  </form>
</nav>
<!-- Navigation bar end -->

<script>
  $(document).ready(function() {
    $('.nav-item.dropdown').hover(
      function() {
        $(this).find('.dropdown-menu').addClass('show');
      },
      function() {
        $(this).find('.dropdown-menu').removeClass('show');
      }
    );
  });
</script>

<!--navigation end-->


<img style="background-repeat:no-repeat ; width:100%; height:400px;" src="images/instrument9.webp">




















<div style="margin-top: 100px; margin-bottom:100px;" class="container">
    <div class="row">
      <div class="col-md-2">
        <div class="card">
        <form action="addtocart" method="post">
    <input type="hidden" name="item_id" value="1">
    <input type="hidden" name="quantity" value="1">
    <input type="hidden" name="name" value="YAMAHA">
    <input type="hidden" name="price" value="10000">
    
    <img style="height:150px;" src="images/K1.webp" alt="Instrument 1" class="card-img-top">
    <div class="card-body">
        <h5 class="card-title">Drum</h5>
        <p class="card-text">BRAND: YAMAHA</p>
        <p class="card-price">10,000</p>
        <button style="background-color:black; color:#D68910; padding:7px; border-radius: 10px;">add to cart</button>
    </div>
</form>

        </div>
      </div>
      
       <div class="col-md-2">
        <div class="card">
        <form action="addtocart" method="post">
    <input type="hidden" name="item_id" value="1">
    <input type="hidden" name="quantity" value="1">
    <input type="hidden" name="name" value="YAMAHA">
    <input type="hidden" name="price" value="10000">
    
    <img style="height:150px;" src="images/K1.webp" alt="Instrument 1" class="card-img-top">
    <div class="card-body">
        <h5 class="card-title">Thabla</h5>
        <p class="card-text">BRAND: YAMAHA</p>
        <p class="card-price">10,000</p>
        <button style="background-color:black; color:#D68910; padding:7px; border-radius: 10px;">add to cart</button>
    </div>
</form>

        </div>
      </div>
       <div class="col-md-2">
        <div class="card">
        <form action="addtocart" method="post">
    <input type="hidden" name="item_id" value="1">
    <input type="hidden" name="quantity" value="1">
    <input type="hidden" name="name" value="YAMAHA">
    <input type="hidden" name="price" value="10000">
    
    <img style="height:150px;" src="images/K1.webp" alt="Instrument 1" class="card-img-top">
    <div class="card-body">
        <h5 class="card-title">Drum</h5>
        <p class="card-text">BRAND: YAMAHA</p>
        <p class="card-price">21,000</p>
        <button style="background-color:black; color:#D68910; padding:7px; border-radius: 10px;">add to cart</button>
    </div>
</form>

        </div>
      </div>
      <!-- Add more cards with similar structure -->

       <div class="col-md-2">
        <div class="card">
        <form action="addtocart" method="post">
    <input type="hidden" name="item_id" value="1">
    <input type="hidden" name="quantity" value="1">
    <input type="hidden" name="name" value="YAMAHA">
    <input type="hidden" name="price" value="10000">
    
    <img style="height:150px;" src="images/K1.webp" alt="Instrument 1" class="card-img-top">
    <div class="card-body">
        <h5 class="card-title">THabla</h5>
        <p class="card-text">BRAND: YAMAHA</p>
        <p class="card-price">10,000</p>
        <button style="background-color:black; color:#D68910; padding:7px; border-radius: 10px;">add to cart</button>
    </div>
</form>

        </div>
      </div>

 <div class="col-md-2">
        <div class="card">
        <form action="addtocart" method="post">
    <input type="hidden" name="item_id" value="1">
    <input type="hidden" name="quantity" value="1">
    <input type="hidden" name="name" value="YAMAHA">
    <input type="hidden" name="price" value="10000">
    
    <img style="height:150px;" src="images/K1.webp" alt="Instrument 1" class="card-img-top">
    <div class="card-body">
        <h5 class="card-title">Drum</h5>
        <p class="card-text">BRAND: YAMAHA</p>
        <p class="card-price">10,000</p>
        <button style="background-color:black; color:#D68910; padding:7px; border-radius: 10px;">add to cart</button>
    </div>
</form>

        </div>
      </div>


    </div>
  </div>




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
