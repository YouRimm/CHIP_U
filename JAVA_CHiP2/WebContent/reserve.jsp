<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO" %>
<%@ page import="user.UserDTO" %>
<%@ page import= "java.util.ArrayList" %>
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


  <!-- css -->
  <link rel="stylesheet" href="./cafe/css/seat_intro.css">
  <!-- 슬라이드 효과 -->
  <link rel="stylesheet" href="./cafe/css/seat_intro_slide.css">
  <!-- 스크롤 효과 -->
  <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
  <!-- 스크롤 스크립트 추가 -->
  <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>

  <!-- 마우스 오버 jquery 추가 -->
  <script src="http://code.jquery.com/jquery-1.6.2.min.js" type="text/javascript"></script>
  <script type="text/javascript">
      $(function(){
          $('.use').mouseover(function(e) { // mouse hover 좌표
              $(this).mousemove(function(e) {
                  $('#blueprint_layer #subtitle').empty().append($(this).attr("title_sub")); // 오버 레이어 문구 치환
                  $('#blueprint_layer #maintitle').empty().append($(this).attr("title_main")); // 오버 레이어 제목 치환
                  $('#blueprint_layer #seatExplain').empty().append($(this).attr("seat_explain")); // 오버 레이어 설명 치환
                  var t=e.pageY - 560;
                  var l=e.pageX + 20;
                  $('#blueprint_layer').css({"top":t, "left":l,"position":"absolute","opacity":"0,8" }).show();
              });
          });
          $('.use').mouseout(function() {
              $('#blueprint_layer').hide();
          });
      });
  </script>

</head>
<style>

	.timetable{
		border: 1px solid #999;
   		border-radius: 5px;
   		width: 378px;
   		height: 30px;
   		display: flex;
   		
   		}
   		
   	.box{
   		border-right: 1px solid #999;
   		
   		width: 63px;
   		height: 29px;
   		text-align: center;}

  #s_button {
    background: #ef6603;
    border: 0;
    padding: 10px 24px;
    color: #fff;
    transition: 0.4s;
    border-radius: 50px;
  }

  select {
    width: 200px;
    padding: .8em .5em;
    font-family: inherit;
    background: url(https://farm1.staticflickr.com/379/19928272501_4ef877c265_t.jpg) no-repeat 95% 50%;
    -webkit-appearance: none;
    -moz-appearance: none;
    appearance: none;
    border: 1px solid #999;
    border-radius: 0px;
  }

  select::-ms-expand {
    /* for IE 11 */
    display: none;
  }
  
  .answer {
    display: none;
    padding-bottom: 30px;
  }
  #faq-title {
    font-size: 25px;
  }
  .faq-content {
    border-bottom: 1px solid #e0e0e0;
  }
  .question {
    font-size: 19px;
    padding: 30px 0;
    cursor: pointer;
    border: none;
    outline: none;
    background: none;
    width: 100%;
    text-align: left;
  }
  .question:hover {
    color: #2962ff;
  }
  [id$="-toggle"] {
    margin-right: 15px;
  }
  
</style>

<body>

  <%
  	String userId = null;
      		if(session.getAttribute("userId") != null){
      	userId = (String)session.getAttribute("userId");
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

    <section class="inner-page" style="height: 900px;">
      <div style="margin-top: 30px;">
        <div class="container" style="padding-top: 50px;">
          <div class="section-title" data-aos="zoom-out">
            <h2>service</h2>
            <p>좌석 예약</p>
          </div>
        </div>

        <!-- 스크롤 효과 스크립트 실행 -->
        <script>
          AOS.init();
      </script>

		<section class="inner-page" style="margin : 50px">
         <img  src="menuimage/seatimage.PNG">            
        </section>
      </div>

    </section>
    
    <section class="inner-page" style="margin : 50px">
    
    <%
        	user.UserDAO userDAO = new user.UserDAO(); // 인스턴스 생성
                        				ArrayList<user.UserDTO> list = userDAO.table();
        %>
    
    	<span id="faq-title">좌석선택</span>
		<div class="faq-content">
		  <button class="question" id="que-1"><span id="que-1-toggle">+</span><span>세미나실</span></button>
		  <div class="answer" id="ans-1">
		  	모두와 함께하는 회의
		  	
		  		<div class="faq-content" style = "margin-left : 50px">
			  	<button class="question" id="que-2"><span id="que-2-toggle">+</span><span>세미나실A</span></button>
			  	<div class="answer" id="ans-2" style = "margin-left : 50px">
			  			예약현황
			  			<form action="reserveAction.jsp">
			  				<%if(list.get(0).getRes_inf() == null){%>
			  					<input type="checkbox" name="test" value="0">12:00
			  				<% }else{ %>
			  					<input type="checkbox" name="test" value="0"disabled><STRIKE>12:00</STRIKE>
			  				<% } %>
			  				<%if(list.get(1).getRes_inf() == null){%>
			  					<input type="checkbox" name="test" value="1">13:00
			  				<% }else{ %>
			  					<input type="checkbox" name="test" value="1"disabled><STRIKE>13:00</STRIKE>
			  				<% } %>
			  				<%if(list.get(2).getRes_inf() == null){%>
			  					<input type="checkbox" name="test" value="2">14:00
			  				<% }else{ %>
			  					<input type="checkbox" name="test" value="2"disabled><STRIKE>14:00</STRIKE>
			  				<% } %>
			  				<%if(list.get(3).getRes_inf() == null){%>
			  					<input type="checkbox" name="test" value="3">15:00
			  				<% }else{ %>
			  					<input type="checkbox" name="test" value="3"disabled><STRIKE>15:00</STRIKE>
			  				<% } %>
			  				<%if(list.get(4).getRes_inf() == null){%>
			  					<input type="checkbox" name="test" value="4">16:00
			  				<% }else{ %>
			  					<input type="checkbox" name="test" value="4"disabled><STRIKE>16:00</STRIKE>
			  				<% } %>
			  				<%if(list.get(5).getRes_inf() == null){%>
			  					<input type="checkbox" name="test" value="5">17:00
			  				<% }else{ %>
			  					<input type="checkbox" name="test" value="5"disabled><STRIKE>17:00</STRIKE>
			  				<% } %>
			  				<br>
			  				<button id="s_button" type="submit">예약하기</button>
			  			</form>
			  		</div>
			  	</div>
			  	
			  	<div class="faq-content" style = "margin-left : 50px">
			  	<button class="question" id="que-3"><span id="que-3-toggle">+</span><span>세미나실B</span></button>
			  	<div class="answer" id="ans-3" style = "margin-left : 50px">
			  			예약현황
			  			<form action="reserveAction.jsp">
			  				<%if(list.get(6).getRes_inf() == null){%>
			  					<input type="checkbox" name="test" value="6">12:00
			  				<% }else{ %>
			  					<input type="checkbox" name="test" value="6"disabled><STRIKE>12:00</STRIKE>
			  				<% } %>
			  				<%if(list.get(7).getRes_inf() == null){%>
			  					<input type="checkbox" name="test" value="7">13:00
			  				<% }else{ %>
			  					<input type="checkbox" name="test" value="7"disabled><STRIKE>13:00</STRIKE>
			  				<% } %>
			  				<%if(list.get(8).getRes_inf() == null){%>
			  					<input type="checkbox" name="test" value="8">14:00
			  				<% }else{ %>
			  					<input type="checkbox" name="test" value="8"disabled><STRIKE>14:00</STRIKE>
			  				<% } %>
			  				<%if(list.get(9).getRes_inf() == null){%>
			  					<input type="checkbox" name="test" value="9">15:00
			  				<% }else{ %>
			  					<input type="checkbox" name="test" value="9"disabled><STRIKE>15:00</STRIKE>
			  				<% } %>
			  				<%if(list.get(10).getRes_inf() == null){%>
			  					<input type="checkbox" name="test" value="10">16:00
			  				<% }else{ %>
			  					<input type="checkbox" name="test" value="10"disabled><STRIKE>16:00</STRIKE>
			  				<% } %>
			  				<%if(list.get(11).getRes_inf() == null){%>
			  					<input type="checkbox" name="test" value="11">17:00
			  				<% }else{ %>
			  					<input type="checkbox" name="test" value="11"disabled><STRIKE>17:00</STRIKE>
			  				<% } %>
			  				<br>
			  				<button id="s_button" type="submit">예약하기</button>
			  			</form>
			  		</div>
			  	</div>
			  	
			  	<div class="faq-content" style = "margin-left : 50px">
			  	<button class="question" id="que-4"><span id="que-4-toggle">+</span><span>세미나실C</span></button>
			  	<div class="answer" id="ans-4" style = "margin-left : 50px">
			  			예약현황
			  			<form action="reserveAction.jsp">
			  				<%if(list.get(12).getRes_inf() == null){%>
			  					<input type="checkbox" name="test" value="12">12:00
			  				<% }else{ %>
			  					<input type="checkbox" name="test" value="12"disabled><STRIKE>12:00</STRIKE>
			  				<% } %>
			  				<%if(list.get(13).getRes_inf() == null){%>
			  					<input type="checkbox" name="test" value="13">13:00
			  				<% }else{ %>
			  					<input type="checkbox" name="test" value="13"disabled><STRIKE>13:00</STRIKE>
			  				<% } %>
			  				<%if(list.get(14).getRes_inf() == null){%>
			  					<input type="checkbox" name="test" value="14">14:00
			  				<% }else{ %>
			  					<input type="checkbox" name="test" value="14"disabled><STRIKE>14:00</STRIKE>
			  				<% } %>
			  				<%if(list.get(15).getRes_inf() == null){%>
			  					<input type="checkbox" name="test" value="15">15:00
			  				<% }else{ %>
			  					<input type="checkbox" name="test" value="15"disabled><STRIKE>15:00</STRIKE>
			  				<% } %>
			  				<%if(list.get(16).getRes_inf() == null){%>
			  					<input type="checkbox" name="test" value="16">16:00
			  				<% }else{ %>
			  					<input type="checkbox" name="test" value="16"disabled><STRIKE>16:00</STRIKE>
			  				<% } %>
			  				<%if(list.get(17).getRes_inf() == null){%>
			  					<input type="checkbox" name="test" value="17">17:00
			  				<% }else{ %>
			  					<input type="checkbox" name="test" value="17"disabled><STRIKE>17:00</STRIKE>
			  				<% } %>
			  				<br>
			  				<button id="s_button" type="submit">예약하기</button>
			  			</form>
			  		</div>
			  	</div>
		  </div>		  
		</div>
		
		<div class="faq-content">
		  <button class="question" id="que-5"><span id="que-5-toggle">+</span><span>컨테이너실</span></button>
		  <div class="answer" id="ans-5">
		  	친구 또는 연인과 독립된 공간을
		  		<div class="faq-content" style = "margin-left : 50px">
			  	<button class="question" id="que-6"><span id="que-6-toggle">+</span><span>컨테이너실A</span></button>
			  	<div class="answer" id="ans-6" style = "margin-left : 50px">
			  			예약현황
			  			<form action="reserveAction.jsp">
			  				<%if(list.get(18).getRes_inf() == null){%>
			  					<input type="checkbox" name="test" value="18">12:00
			  				<% }else{ %>
			  					<input type="checkbox" name="test" value="18"disabled><STRIKE>12:00</STRIKE>
			  				<% } %>
			  				<%if(list.get(19).getRes_inf() == null){%>
			  					<input type="checkbox" name="test" value="19">13:00
			  				<% }else{ %>
			  					<input type="checkbox" name="test" value="19"disabled><STRIKE>13:00</STRIKE>
			  				<% } %>
			  				<%if(list.get(20).getRes_inf() == null){%>
			  					<input type="checkbox" name="test" value="20">14:00
			  				<% }else{ %>
			  					<input type="checkbox" name="test" value="20"disabled><STRIKE>14:00</STRIKE>
			  				<% } %>
			  				<%if(list.get(21).getRes_inf() == null){%>
			  					<input type="checkbox" name="test" value="21">15:00
			  				<% }else{ %>
			  					<input type="checkbox" name="test" value="21"disabled><STRIKE>15:00</STRIKE>
			  				<% } %>
			  				<%if(list.get(22).getRes_inf() == null){%>
			  					<input type="checkbox" name="test" value="22">16:00
			  				<% }else{ %>
			  					<input type="checkbox" name="test" value="22"disabled><STRIKE>16:00</STRIKE>
			  				<% } %>
			  				<%if(list.get(23).getRes_inf() == null){%>
			  					<input type="checkbox" name="test" value="23">17:00
			  				<% }else{ %>
			  					<input type="checkbox" name="test" value="23"disabled><STRIKE>17:00</STRIKE>
			  				<% } %>
			  				<br>
			  				<button id="s_button" type="submit">예약하기</button>
			  			</form>
			  		</div>
			  	</div>
			  	
			  	<div class="faq-content" style = "margin-left : 50px">
			  	<button class="question" id="que-7"><span id="que-7-toggle">+</span><span>컨테이너실B</span></button>
			  	<div class="answer" id="ans-7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;예약현황</div>
			  	</div>
			  	
			  	<div class="faq-content" style = "margin-left : 50px">
			  	<button class="question" id="que-8"><span id="que-8-toggle">+</span><span>컨테이너실C</span></button>
			  	<div class="answer" id="ans-8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;예약현황</div>
			  	</div>
			  	
			  	<div class="faq-content" style = "margin-left : 50px">
			  	<button class="question" id="que-9"><span id="que-9-toggle">+</span><span>컨테이너실D</span></button>
			  	<div class="answer" id="ans-9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;예약현황</div>
			  	</div>
		  </div>
		  		  
		<div class="faq-content">
		  <button class="question" id="que-10"><span id="que-10-toggle">+</span><span>개인실</span></button>
		  <div class="answer" id="ans-10">
		  	나만의 공간에서 누리는 편안함
		  		<div class="faq-content" style = "margin-left : 50px">
			  	<button class="question" id="que-11"><span id="que-11-toggle">+</span><span>개인실A</span></button>
			  		<div class="answer" id="ans-11" style = "margin-left : 50px">
			  			예약현황
			  			<div class = "timetable">
			  				<div class = "box">x</div>
			  				<div class = "box">x</div>
			  				<div class = "box">x</div>
			  				<div class = "box">x</div>
			  			</div>
			  			<form action="reserveAction.jsp">
			  				<input type="checkbox" name="test" value="1">12:00
			  				<input type="checkbox" name="test" value="2">13:00
			  				<input type="checkbox" name="test" value="44" disabled><STRIKE>14:00</STRIKE>
			  				<input type="checkbox" name="test" value="45">15:00
			  				<input type="checkbox" name="test" value="46">16:00
			  				<input type="checkbox" name="test" value="47">17:00
			  				<br>
			  				<button id="s_button" type="submit">예약하기</button>
			  			</form>
			  		</div>
			  	</div>
			  	
			  	<div class="faq-content" style = "margin-left : 50px">
			  	<button class="question" id="que-12"><span id="que-12-toggle">+</span><span>개인실B</span></button>
			  	<div class="answer" id="ans-12" style = "margin-left : 50px">
			  			예약현황
			  			<form action="reserveAction.jsp">
			  				<%if(list.get(0).getRes_inf() == null){%>
			  					<input type="checkbox" name="test" value="1">12:00
			  				<% }else{ %>
			  					<input type="checkbox" name="test" value="1"disabled><STRIKE>12:00</STRIKE>
			  				<% } %>
			  				<%if(list.get(0).getRes_inf() == null){%>
			  					<input type="checkbox" name="test" value="1">12:00
			  				<% }else{ %>
			  					<input type="checkbox" name="test" value="1"disabled><STRIKE>12:00</STRIKE>
			  				<% } %>
			  				<%if(list.get(0).getRes_inf() == null){%>
			  					<input type="checkbox" name="test" value="1">12:00
			  				<% }else{ %>
			  					<input type="checkbox" name="test" value="1"disabled><STRIKE>12:00</STRIKE>
			  				<% } %>
			  				<%if(list.get(0).getRes_inf() == null){%>
			  					<input type="checkbox" name="test" value="1">12:00
			  				<% }else{ %>
			  					<input type="checkbox" name="test" value="1"disabled><STRIKE>12:00</STRIKE>
			  				<% } %>
			  				<%if(list.get(0).getRes_inf() == null){%>
			  					<input type="checkbox" name="test" value="1">12:00
			  				<% }else{ %>
			  					<input type="checkbox" name="test" value="1"disabled><STRIKE>12:00</STRIKE>
			  				<% } %>
			  				<%if(list.get(0).getRes_inf() == null){%>
			  					<input type="checkbox" name="test" value="1">12:00
			  				<% }else{ %>
			  					<input type="checkbox" name="test" value="1"disabled><STRIKE>12:00</STRIKE>
			  				<% } %>
			  				<br>
			  				<button id="s_button" type="submit">예약하기</button>
			  			</form>
			  		</div>
			  	</div>
			  	
			  	<div class="faq-content" style = "margin-left : 50px">
			  	<button class="question" id="que-13"><span id="que-13-toggle">+</span><span>개인실C</span></button>
			  	<div class="answer" id="ans-13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;예약현황</div>
			  	</div>
			  	
			  	<div class="faq-content" style = "margin-left : 50px">
			  	<button class="question" id="que-14"><span id="que-14-toggle">+</span><span>개인실D</span></button>
			  	<div class="answer" id="ans-14">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;예약현황</div>
			  	</div>
			  	
			  	<div class="faq-content" style = "margin-left : 50px">
			  	<button class="question" id="que-15"><span id="que-15-toggle">+</span><span>개인실E</span></button>
			  	<div class="answer" id="ans-15">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;예약현황</div>
			  	</div>
			  	
			  	<div class="faq-content" style = "margin-left : 50px">
			  	<button class="question" id="que-16"><span id="que-16-toggle">+</span><span>개인실F</span></button>
			  	<div class="answer" id="ans-16">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;예약현황</div>
			  	</div>
		  </div>		  
		</div>
    
 		<script>
 			const items = document.querySelectorAll('.question');

 		    function openCloseAnswer() {
 		    const answerId = this.id.replace('que', 'ans');

 		    if(document.getElementById(answerId).style.display === 'block') {
 		      document.getElementById(answerId).style.display = 'none';
 		      document.getElementById(this.id + '-toggle').textContent = '+';
 		    } else {
 		      document.getElementById(answerId).style.display = 'block';
 		      document.getElementById(this.id + '-toggle').textContent = '-';
 		    }
 		  }

 		  items.forEach(item => item.addEventListener('click', openCloseAnswer));    
 		 </script>
  </section>

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer">
    <div class="container">
      <h3>JAVA CHiP</h3>
      <p>JSP와 서블릿 강의 조별 프로젝트 J조의 홈페이지 입니다.</p>
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