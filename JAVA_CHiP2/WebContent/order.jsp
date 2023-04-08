<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<!-- <html lang="en"> -->

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>JAVA CHiP</title>
  <meta content="" name="descriptison">
  <meta content="" name="keywords">

  <!-- Favicons -->
  
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
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
          <li><a href=""></a></li>
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
          <li><a href=""></a></li>
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

    <section class="inner-page" style="height: 1600px;">
      <div style="margin-top: 30px;">
        <div class="container" style="padding-top: 150px;">
          <div class="section-title" data-aos="zoom-out">
            <h2>Service</h2>
            <p>메뉴 주문</p>
          </div>
        </div>
		<section id="pricing" class="pricing">
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
        
           <div class="row" style="margin-top: 100px">

          <div class="col-lg-3 col-md-6">
            <div class="box" data-aos="zoom-in" >
              <h3>스콘</h3>
              <img  src="menuimage/mi05.jpg">             
              <ul>
                <li>  </li>
                <li>3,800원</li>
              </ul>
              <div class="btn-wrap">
               <form action="orderAction.jsp" method="post">
              	<input type="hidden" id="selected_menu" name="selected_menu" value="5">
                <button id="s_button" type="submit">Buy Now</button>
                </form>
              </div>
            </div>
          </div>

          <div class="col-lg-3 col-md-6">
            <div class="box" data-aos="zoom-in" data-aos-delay="100">
            	<span class="advanced">Best</span>
              <h3>베이글</h3>
              <img  src="menuimage/mi06.jpg">             
              <ul>
                <li>  </li>
                <li>3,500원</li>
              </ul>
              <div class="btn-wrap">
                <form action="orderAction.jsp" method="post">
              	<input type="hidden" id="selected_menu" name="selected_menu" value="6">
                <button id="s_button" type="submit">Buy Now</button>
                </form>
              </div>
            </div>
          </div>

          <div class="col-lg-3 col-md-6">
            <div class="box" data-aos="zoom-in" data-aos-delay="200">
              <h3>치즈케이크</h3>
              <img  src="menuimage/mmi07.jpg">             
              <ul>
                <li>  </li>
                <li>4,300원</li>
              </ul>
              <div class="btn-wrap">
                <form action="orderAction.jsp" method="post">
              	<input type="hidden" id="selected_menu" name="selected_menu" value="7">
                <button id="s_button" type="submit">Buy Now</button>
                </form>
              </div>
            </div>
          </div>

          <div class="col-lg-3 col-md-6">
            <div class="box" data-aos="zoom-in" data-aos-delay="300">
              <h3>샌드위치</h3>
              <img  src="menuimage/mi08.jpg">             
              <ul>
                <li>  </li>
                <li>4,500원</li>
              </ul>
              <div class="btn-wrap">
                <form action="orderAction.jsp" method="post">
              	<input type="hidden" id="selected_menu" name="selected_menu" value="8">
                <button id="s_button" type="submit">Buy Now</button>
                </form>
              </div>
            </div>
          </div>

        </div>

      </div>
    </section><!-- End Pricing Section -->
    
    
    
        <div class="row" style="padding-top: 30px;">
          
        </div>

        
        
        
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