<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<!-- <html lang="en"> //꼭필요한지 확인. 깨지면 ko로 해봐  -->

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>JAVA CHiP</title>
  <meta content="" name="descriptison">
  <meta content="" name="keywords">

  <!-- Favicons -->
  
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- 폰트 --> 
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/icofont/icofont.min.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/line-awesome/css/line-awesome.min.css" rel="stylesheet">
  <link href="assets/vendor/venobox/venobox.css" rel="stylesheet">
  <link href="assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Selecao - v2.2.0
  * Template URL: https://bootstrapmade.com/selecao-bootstrap-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<style>
  #s_button {
    background: #ef6603;
    border: 0;
    padding: 10px 24px;
    color: #fff;
    transition: 0.4s;
    border-radius: 50px;
  }
  
  img {
  	
  	width: 100%;
  	}
</style>

<body>

	<%
		String userId = null;
		if(session.getAttribute("userId") != null){
			userId = (String)session.getAttribute("userId");
		}
		
	%>
	
	        	<%
        		//마스터
        		if(("master").equals(userId)){
        	
        			 response.sendRedirect("manage.jsp"); 
        			 
        			 
        		}
        	%>
        	

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top d-flex align-items-center ">
    <div class="container d-flex align-items-center">

      <div class="logo mr-auto">
        <h1 class="text-light"><a href="main.jsp">JAVA CHiP</a></h1>
        <!-- 로고 클릭시 메인화면으로 -->
        
      </div>

      <nav class="nav-menu d-none d-lg-block">
        <ul>
        

        	
        
        	<%
        		//비로그인 상태
        		if(userId == null){
        	%>
        	
        	
        	
          <li><a href="main.jsp">Home</a></li>
          <li><a href="#about">About</a></li>
          <li><a href="order.jsp">Order</a></li>
          <li><a href="reserve.jsp">Reserve</a></li>
          <li><a href="#pricing"></a></li>
          <li><a href="login.jsp">Login</a></li>
          <!-- ---드롭다운 메뉴 폼--- -->
          <!-- <li class="drop-down"><a href="">Drop Down</a>
            <ul>
              <li><a href="#">Drop Down 1</a></li>
              <li class="drop-down"><a href="#">Drop Down 2</a>
                <ul>
                  <li><a href="#">Deep Drop Down 1</a></li>
                  <li><a href="#">Deep Drop Down 2</a></li>
                  <li><a href="#">Deep Drop Down 3</a></li>
                  <li><a href="#">Deep Drop Down 4</a></li>
                  <li><a href="#">Deep Drop Down 5</a></li>
                </ul>
              </li>
              <li><a href="#">Drop Down 3</a></li>
              <li><a href="#">Drop Down 4</a></li>
              <li><a href="#">Drop Down 5</a></li>
            </ul>
          </li> -->
          <li><a href="signup.jsp">Sign Up</a></li>
          
          <%
          	}else{
          	//로그인 상태
          	%>
          	
          <li><a href="main.jsp">Home</a></li>
          <li><a href="#about">About</a></li>
          <li><a href="order.jsp">Order</a></li>
          <li><a href="reserve.jsp">Reserve</a></li>
          <li><a href="#pricing"></a></li>
          <li><a href="logoutAction.jsp">Logout</a></li>
          <li><a href="mypage.jsp">MyPage</a></li>
          
          <% 
          	}
          %>

        </ul>
      </nav><!-- .nav-menu -->

    </div>
  </header><!-- End Header -->

  <main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <!-- <section class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <h2>Inner Page</h2>
          <ol>
            <li><a href="index.html">Home</a></li>
            <li>Inner Page</li>
          </ol>
        </div>

      </div>
    </section> -->
    <!-- End Breadcrumbs -->

    <section class="inner-page">
      <div style="margin-top: 30px;">
        
        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel" style="width: 100%;">
          <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
          </ol>
          <div class="carousel-inner">
            <div class="carousel-item active">
              <img class="d-block w-100" src="slideimage_1.jpg" alt="First slide">
            </div>
            <div class="carousel-item">
              <img class="d-block w-100" src="slideimage_2.jpg" alt="Second slide">
            </div>
            <div class="carousel-item">
              <img class="d-block w-100" src="slideimage_3.jpg" alt="Third slide">
            </div>
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

        <div>
          <h2 style="height: 150px;"></h2>
        </div>

        <section id="cta" class="cta" style="background-color: #fff6ee;">
          <div class="container">
    
            <div class="row" data-aos="zoom-out">
              <div class="col-lg-9 text-center text-lg-left">
                <h3 style="color: black;">좌석을 미리 예약하세요</h3>
                <p style="color: black;"> 방문 전 사전 예약을 통해 독립된 공간 또는 단체석을 이용하실 수 있습니다.</p>
              </div>
              <div class="col-lg-3 cta-btn-container text-center">
                <a class="cta-btn align-middle" href="reserve.jsp">바로가기</a>
              </div>
            </div>
    
          </div>
        </section>
     
         		
       <section id="pricing" class="pricing" style="margin-top: 50px;">
      <div class="container">

        <div class="row">

          <div class="col-lg-3 col-md-6">
            <div class="box" data-aos="zoom-in">
            	<span class="advanced">Best</span>
              <h3>아메리카노</h3>
              <img  src="menuimage/mi01.jpg">             
              <ul>
                <li>  </li>
                <li>4,100원</li>
              </ul>
              <div class="btn-wrap">
              <form action="orderAction.jsp" method="post">
              	<input type="hidden" id="selected_menu" name="selected_menu" value="1">
                <button id="s_button" type="submit">Buy Now</button>
                </form>
              </div>
            </div>
          </div>

          <div class="col-lg-3 col-md-6">
            <div class="box" data-aos="zoom-in" data-aos-delay="100">
              <h3>카페라떼</h3>
              <img  src="menuimage/mi02.jpg">             
              <ul>
                <li>  </li>
                <li>4,800원</li>
              </ul>
              <div class="btn-wrap">
                <form action="orderAction.jsp" method="post">
              	<input type="hidden" id="selected_menu" name="selected_menu" value="2">
                <button id="s_button" type="submit">Buy Now</button>
                </form>
              </div>
            </div>
          </div>

          <div class="col-lg-3 col-md-6">
            <div class="box" data-aos="zoom-in" data-aos-delay="200">
              <h3>더치커피</h3>
              <img  src="menuimage/mi03.jpg">             
              <ul>
                <li>  </li>
                <li>4,600원</li>
              </ul>
              <div class="btn-wrap">
                <form action="orderAction.jsp" method="post">
              	<input type="hidden" id="selected_menu" name="selected_menu" value="3">
                <button id="s_button" type="submit">Buy Now</button>
                </form>
              </div>
            </div>
          </div>

           <div class="col-lg-3 col-md-6">
            <div class="box" data-aos="zoom-in" data-aos-delay="300">
              <h3>얼그레이 티</h3>
              <img  src="menuimage/mi04.jpg">             
              <ul>
                <li>  </li>
                <li>4,000원</li>
              </ul>
              <div class="btn-wrap">
                <form action="orderAction.jsp" method="post">
              	<input type="hidden" id="selected_menu" name="selected_menu" value="4">
                <button id="s_button" type="submit">Buy Now</button>
                </form>
              </div>
            </div>
          </div>

        </div>
       

      </div>
    </section><!-- End Pricing Section -->
         		
 
      </div>
    </section>

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer">
    <div class="container">
      <h3>JAVA CHiP</h3>
      <p>J조의 자바칩 홈페이지 입니다.</p>
      <div class="social-links">
        <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
        <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
        <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
      </div>
      
    </div>
  </footer><!-- End Footer -->

  <a href="#" class="back-to-top"><i class="ri-arrow-up-line"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/jquery/jquery.min.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/jquery.easing/jquery.easing.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/venobox/venobox.min.js"></script>
  <script src="assets/vendor/owl.carousel/owl.carousel.min.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>
  


</body>

</html>