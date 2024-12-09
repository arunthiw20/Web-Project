<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page session="true" %>
    
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
  <meta http-equiv="Cache-Control" content="no-store, no-cache, must-revalidate">
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


<div style="margin-bottom:100px;" class="container mt-5">
    <h1>Shopping Cart</h1>
    <div class="card">
      <div class="card-header">
        My Cart
      </div>
      <div class="card-body">
        <table class="table table-hover">
    <thead>
        <tr>
            <th>Product Name</th>
            <th>Price</th>
            <th>Quantity</th>
            <th>Total</th>
            <th></th>
        </tr>
    </thead>
    <tbody>
        <c:set var="totalPrice" value="0" /> <!-- Initialize total price variable -->

        <c:forEach items="${cartItems}" var="item">
            <tr>
                <td>${item.name}</td>
                <td>${item.price}</td>
                <td>${item.quantity}</td>
                <td>${item.price * item.quantity}</td> <!-- Calculate total for each item -->
                <td><form action="remove" method="post">
                        <input type="hidden" name="item_id" value="${item.id}">
                       
                    </form></td>
            </tr>
            <c:set var="totalPrice" value="${totalPrice + (item.price * item.quantity)}" /> <!-- Update total price -->
        </c:forEach>

        <!-- Display total price row -->
        <tr>
            <td colspan="3"></td>
            <td>Total Price:</td>
            <td>${totalPrice}</td>
        </tr>
    </tbody>
</table>

        
      </div>
      <div class="card-footer">
        
      <a style="background-color:darkgreen; color:white; border-color:#D68910;"
   href="/MU_Shop/checkoutPage?totalPrice=${totalPrice}"
   class="btn btn-success">
   Checkout
</a>

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
