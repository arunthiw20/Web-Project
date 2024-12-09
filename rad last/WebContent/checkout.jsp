<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <title>Music Instrument Shop</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">


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










<form action="checkout" method="post" style="max-width: 500px; margin:auto; padding: 20px; border-radius: 5px; margin-top: 50px; margin-bottom: 50px; border: 2px solid #ccc;">

    <h1>Place Order</h1>

       <div class="form-group">
        <label for="orderId">Order ID</label>
        <input type="text" class="form-control" id="orderId" name="orderId" value="789" readonly>
    </div>
    <div class="form-group">
        <label for="customerId">Customer ID</label>
        <input type="text" class="form-control" id="customerId" name="customerId" value="901" readonly>
    </div>
    <div class="form-group">
        <label for="totalPrice">Total Price</label>
        <input type="hidden" name="totalPrice" value="${param.totalPrice}">
        <p name="totalPrice">${param.totalPrice}</p>
    </div>

    <div class="form-group">
        <label for="name">Name</label>
        <input type="text" class="form-control" id="name" name="name" placeholder="Enter your name" required>
    </div>
    <div class="form-group">
        <label for="email">Email</label>
        <input type="email" class="form-control" id="email" name="email" placeholder="Enter your email" required>
    </div>
    <div class="form-group">
        <label for="address">Address</label>
        <textarea class="form-control" id="address" rows="3" name="address" placeholder="Enter your address" required></textarea>
    </div>
    <div class="form-group">
        <label for="nic">NIC Number</label>
        <input type="text" class="form-control" id="nic" name="nic" placeholder="Enter your NIC number" required>
    </div>
    

    <div class="form-group">
        <label for="bankSlip">Bank Slip</label>
        <input type="file" class="form-control-file" id="bankSlip" name="bankSlip" required>
        <small class="form-text text-muted">Please upload a scanned copy or photo of your bank slip.</small>
    </div>
    <div class="form-group">
    <label for="date">Date</label>
    <input type="date" class="form-control" id="date" name="date" required>
</div>
<div class="form-group">
    <label for="time">Time</label>
    <input type="time" class="form-control" id="time" name="time" required>
</div>


    <button type="submit" class="btn btn-primary" onclick="showAlert()">Place Order</button>
</form>

  </div>



  <script>
    // Function to fetch data from the server and populate the form fields
    function populateFormFields() {
      // Simulating an AJAX request to fetch data from the server
      // Replace this code with your actual AJAX implementation

      // Assuming the server responds with a JSON object containing the required data
      const responseData = {
        orderId: "123456",
        customerId: "789",
        totalPrice: "1000"
      };

      // Populate the form fields with the received data
      document.getElementById('orderId').value = responseData.orderId;
      document.getElementById('customerId').value = responseData.customerId;
      document.getElementById('totalPrice').value = responseData.totalPrice;
    }

    // Get current system time
    const systemTimeElement = document.getElementById('systemTime');
    const currentDatetime = new Date();
    systemTimeElement.value = currentDatetime.toLocaleString();

    // Call the function to populate the form fields
    populateFormFields();

    
  </script>








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










<script>
function showAlert() {
    alert("Order placed successfully!");
}
</script>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!--footer end-->
