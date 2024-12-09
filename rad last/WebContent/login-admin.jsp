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
  >
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

  

    /*log in form css codes start*/

    @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;500&display=swap');


.box-area{
    width: 930px;
}



.right-box{
    padding: 40px 30px 40px 40px;
}


::placeholder{
    font-size: 16px;
}

.rounded-4{
    border-radius: 20px;
}
.rounded-5{
    border-radius: 30px;
}




@media only screen and (max-width: 768px){

     .box-area{
        margin: 0 10px;

     }
     .left-box{
        height: 100px;
        overflow: hidden;
     }
     .right-box{
        padding: 20px;
     }

}
</style>

</head>
<body>


<!--navigation bar end-->

<!--log in form start-->


     <div class="container d-flex justify-content-center align-items-center min-vh-100">



       <div class="row border rounded-5 p-3 bg-white shadow box-area">

   

       <div class="col-md-6 rounded-4 d-flex justify-content-center align-items-center flex-column left-box" style="background: black;">
           <div class="featured-image mb-3">
            <img src="../Resources/log1.jpeg" class="img-fluid" style="width: 350px; height:270px; padding: 10px; border-radius: 20px;">
           </div>
           <p class=" fs-2" style="font-family: 'Courier New', Courier, monospace; font-weight: bolder; color:#D68910;">HappyMusic</p>
           
       </div> 


        
       <div class="col-md-6 right-box">
          <div class="row align-items-center">
                <div class="header-text mb-4">
                     <h2>LOGIN  AS AN ADMIN</h2>
                     
                </div>
                <div class="input-group mb-3">
                    <input type="text" class="form-control form-control-lg bg-light fs-6" placeholder="Email address">
                </div>
                <div class="input-group mb-1">
                    <input type="password" class="form-control form-control-lg bg-light fs-6" placeholder="Password">
                </div>
                <div class="input-group mb-5 d-flex justify-content-between">
                    <div class="form-check">
                        <input type="checkbox" class="form-check-input" id="formCheck">
                        <label for="formCheck" class="form-check-label text-secondary"><small>Remember Me</small></label>
                    </div>
                    <div class="forgot">
                        <small><a href="#">Forgot Password?</a></small>
                    </div>
                </div>
                <div class="input-group mb-3">
                    <button style="background-color:black; color:#D68910; border-color:black;" class="btn btn-lg btn-primary w-100 fs-6">Login</button>
                </div>
               
                <div class="row">
                    <small><a href="#">CREATE ACCOUNT</a></small>
                </div>
          </div>
       </div> 

      </div>
    </div>

<!--log in form end-->




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
</body>
</html>