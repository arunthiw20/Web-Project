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

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
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




  <!-- Hero Section -->
  <header style="background-image: url('../resources/home1.jpeg'); background-repeat: no-repeat; background-size: cover; height: 300px;" class="jumbotron text-center">

    <h1 class="fade-in-up">Welcome to our HappyMusic Instrument Shop</h1>
    <p class="lead fade-in-up">Browse our wide selection of musical instruments and accessories.</p>
    <a style="background-color:black; color:#D68910; border-color:black;" class="btn btn-primary btn-lg fade-in-up" href="/MU_Shop/login">LogIn/SignIn</a>
  </header>

  <!-- Featured Products Section -->
  <section class="container">
    <h2 class="text-center mb-4 fade-in-up">Featured Products</h2>
    <div class="row">
      <div class="col-lg-4 col-md-6 mb-4 fade-in-up">
        <div class="card">
          <img src="../Resources/Home9.jpeg" class="card-img-top" alt="Product 1">
          <div class="card-body">
            <h5 class="card-title">Product 1</h5>
            <p class="card-text">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus.</p>
            <a style="background-color:black; color: #D68910; border-color:black;" href="#" class="btn btn-primary">Buy Now</a>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-md-6 mb-4 fade-in-up">
        <div class="card">
          <img src="../Resources/Home12.jpeg" height="230px;" class="card-img-top" alt="Product 2">
          <div class="card-body">
            <h5 class="card-title">Product 2</h5>
            <p class="card-text">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus..</p>
            <a style="background-color:black; color: #D68910; border-color:black;" href="#" class="btn btn-primary">Buy Now</a>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-md-6 mb-4 fade-in-up">
        <div class="card">
          <img src="../Resources/Home8.jpeg" class="card-img-top" alt="Product 3">
          <div class="card-body">
            <h5 class="card-title">Product 3</h5>
            <p class="card-text">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus..</p>
            <a style="background-color:black; color: #D68910; border-color:black;" href="#" class="btn btn-primary">Buy Now</a>
          </div>
        </div>
      </div>
    </div>
  </section>

<!--brands-->

<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>



  <div  style="padding:50px; background-color:black;" class="carousel-inner">
   <center> <h1 style="background-color:black; color:#D68910; padding: 50px;">FIND INSTRUMENT FROM OUR BRANDS</h1>
    <div class="carousel-item active">

      <img style="width:300px; height:200px;" class="" src="../Resources/brand 1.png" alt="First slide">
    </div>
    <div class="carousel-item">
      <img style="width:300px; height:200px;" class="" src="../Resources/brand2.jpg" alt="Second slide">
    </div>
    <div class="carousel-item">
      <img style="width:300px; height:200px;" class="" src="../Resources/brand3.jpg" alt="Third slide">
    </div>
     <div class="carousel-item">
      <img style="width:300px; height:200px;" class="" src="../Resources/brand4.png" alt="Third slide">
    </div>
     <div class="carousel-item">
      <img style="width:300px; height:200px;" class="" src="../Resources/brand5.jpg" alt="Third slide">
    </div>
     <div class="carousel-item">
      <img style="width:300px; height:200px;" class="" src="../Resources/brand6.jpg" alt="Third slide">
    </div>



  </center>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

<!--brans end-->



  <!-- Categories Section -->
  <section class="bg-light py-5">
    <div class="container ">
      <h2 class="mb-4 fade-in-up">Shop by Categories</h2>
      <div class="row"  class="animate__animated animate__heartBeat">
        <div class="col-lg-4 col-md-6 mb-4 fade-in-up">
          <img style="width:300px; height:250px;" src="../Resources/image12.jpeg" class="img-fluid rounded-circle" alt="Category 1">
          <h5 class="mt-3">DRUMS AND PURCUSSION</h5>
          <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus.</p>
           <a style="background-color:black; color: #D68910; border-color:black;" href="#" class="btn btn-primary">More Details</a>
        </div>
        <div class="col-lg-4 col-md-6 mb-4 fade-in-up">
          <img style="width:400px; height:250px;" src="../Resources/image13.jpeg" class="img-fluid rounded-circle" alt="Category 2">
          <h5 class="mt-3">STUDIO AND RECORDINGS</h5>
          <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus..</p>
           <a style="background-color:black; color: #D68910; border-color:black;" href="#" class="btn btn-primary">More Details</a>
        </div>

         <div class="col-lg-4 col-md-6 mb-4 fade-in-up">
          <img style="width:400px; height:250px;" src="../Resources/home11.webp" class="img-fluid rounded-circle" alt="Category 2">
          <h5 class="mt-3">STRING INSTRUMENT</h5>
          <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus.</p>
           <a style="background-color:black; color: #D68910; border-color:black;" href="#" class="btn btn-primary">More Details</a>
        </div>

         <div class="col-lg-4 col-md-6 mb-4 fade-in-up">
          <img style="width:400px; height:250px;" src="../Resources/home13.jpeg" class="img-fluid rounded-circle" alt="Category 2">
          <h5 class="mt-3">KEY BOARD AND PIANOS</h5>
          <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus.</p>
           <a style="background-color:black; color: #D68910; border-color:black;" href="#" class="btn btn-primary">More Details</a>
        </div>
         <div class="col-lg-4 col-md-6 mb-4 fade-in-up">
          <img style="width:400px; height:250px;" src="../Resources/home14.webp" class="img-fluid rounded-circle" alt="Category 2">
          <h5 class="mt-3">HOME AUDIO</h5>
          <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus..</p>
           <a style="background-color:black; color: #D68910; border-color:black;" href="#" class="btn btn-primary">More Details</a>
        </div>
        <div class="col-lg-4 col-md-6 mb-4 fade-in-up">
          <img style="width:400px; height:250px;"src="../Resources/home15.webp" class="img-fluid rounded-circle" alt="Category 3">
          <h5 class="mt-3">LIVE SOUNDS & PRO AUDIO</h5>
          <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus..</p>
           <a style="background-color:black; color: #D68910; border-color:black;" href="#" class="btn btn-primary">More Details</a>
        </div>
      </div>
    </div>

      </div>
    </div>
  </section>



  <!-- Testimonials Section -->
  <section class="container py-5">
    <h2 class="text-center mb-4 fade-in-up">Customer Says</h2>
    <div class="row">
      <div class="col-lg-4 col-md-6 mb-4 fade-in-up">
        <div class="card scale-in">
          <div class="card-body">
            <center><img src="../Resources/coment1.jpeg" style="width:200px; height:200px;"></center>
            <p class="card-text">"Great selection and fast shipping! Will definitely buy from this shop again."</p>
            <p class="text-muted">- John Doe</p>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-md-6 mb-4 fade-in-up">

        <div class="card scale-in">
          <div class="card-body">
                <center><img src="../Resources/coment2.webp" style="width:200px; height:200px;"></center>
            <p class="card-text">"Amazing quality instruments and excellent customer service. Highly recommended!"</p>
            <p class="text-muted">- Jane Smith</p>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-md-6 mb-4 fade-in-up">
        <div class="card scale-in">
          <div class="card-body">
                <center><img src="../Resources/coment3.webp" style="width:200px; height:200px;"></center>
            <p class="card-text">"The staff was knowledgeable and helped me find the perfect guitar. Thank you!"</p>
            <p class="text-muted">- Robert Johnson</p>

          </div>
        </div>
      </div>
      <div class="col-lg-4 col-md-6 mb-4 fade-in-up">
        <div class="card scale-in">
          <div class="card-body">
                <center><img src="../Resources/coment4.jpg" style="width:200px; height:200px;"></center>
            <p class="card-text">"Great selection and fast shipping! Will definitely buy from this shop again."</p>
            <p class="text-muted">- John Doe</p>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-md-6 mb-4 fade-in-up">
        <div class="card scale-in">
          <div class="card-body">
                <center><img src="../Resources/coment5.webp" style="width:200px; height:200px;"></center>
            <p class="card-text">"Amazing quality instruments and excellent customer service. Highly recommended!"</p>
            <p class="text-muted">- Jane Smith</p>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-md-6 mb-4 fade-in-up">
        <div class="card scale-in">
          <div class="card-body">
                <center><img src="../Resources/coment6.webp" style="width:200px; height:200px;"></center>
            <p class="card-text">"The staff was knowledgeable and helped me find the perfect guitar. Thank you!"</p>
            <p class="text-muted">- Robert Johnson</p>

          </div>
        </div>
      </div>
    </div>
  </section>




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
              <a href="home_page.html" style="color:#D68910; text-decoration: none;" >home</a>
            </p>
            <p>
              <a href="" style="color:#D68910; text-decoration: none;">about us</a>
            </p>
            <p>
              <a href="services.html" style="color:#D68910; text-decoration: none;">services</a>
            </p>
            <p>
              <a href="contact_us_page.html" style="color:#D68910; text-decoration: none;">contact us</a>
            </p>
            <p>
              <a href="AD_dashboard.html" style="color:#D68910; text-decoration: none;">Admin</a>
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
</body>
</html>
