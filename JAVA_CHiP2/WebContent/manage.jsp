<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO" %>
<%@ page import="user.UserDTO" %> <!-- userdao의 클래스 가져옴 -->
<%@ page import="java.io.PrintWriter" %> <!-- 자바 클래스 사용 -->
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
  
  	.timetable{
		border: 1px solid #999;
   		border-radius: 5px;
   		width: 700px;
   		height: 550px;
   		display: flex;
   		flex-direction: column;
   		align-items: center;
   		}
   		
   	.trow {
   		width: 700px;
   		height: 40px;
   		display: flex;
   		flex-direction: row;
   		}
   		
   	.box{
   		border-right: 1px solid #999;
   		border-bottom: 1px solid #999;
   		width: 100px;   		
   		text-align: center;
   		}
   		
   		.rbox{
   		
   		border-bottom: 1px solid #999;
   		width: 100px;   		
   		text-align: center;
   		}
   		
   		.bbox{
   		border-right: 1px solid #999;
   		
   		width: 100px;   		
   		text-align: center;
   		}
   		
   	.tablebox {
   		display: flex;
   		flex-direction: row;
   		}
   		
   	#browsers2{
	    background-color: white;
	    border: 1px solid purple;
	    border-radius: 10px;
	    display: inline-block;
	    font: inherit;
	    line-height: 1.5em;
	    padding: 0.5em 3.5em 0.5em 1em;

		margin: 0;
		-webkit-box-sizing: border-box;
		-moz-box-sizing: border-box;
		box-sizing: border-box;
		-webkit-appearance: none;
		-moz-appearance: none;


		background-image:
		linear-gradient(45deg, transparent 50%, gray 50%),
		linear-gradient(135deg, gray 50%, transparent 50%),
		radial-gradient(#ddd 70%, transparent 72%);
		background-position:
		calc(100% - 20px) calc(1em + 2px),
		calc(100% - 15px) calc(1em + 2px),
		calc(100% - .5em) .5em;
		background-size:
		5px 5px,
		5px 5px,
		1.5em 1.5em;
		background-repeat: no-repeat;
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
          <li><a href="mypage.jsp">Login</a></li>
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
    


    <section class="inner-page" style="height: 1600px;">
      <div style="margin-top: 30px;">
        <div class="container" style="padding-top: 150px;">
          <div class="section-title" data-aos="zoom-out">
            <h2>manage</h2>
            <p>주문목록</p>
          </div>
        </div>

        <div class="container" style="padding-top: 30px;">
          
          <div class="row">
			<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th style="background-color: #eeeeee; text-align: center;">주문내역</th>
						<th style="background-color: #eeeeee; text-align: center;">고객명</th>
						
					</tr>
				</thead>
				<tbody>
					<tr>
						<!-- 테스트 코드 -->
					<%
						user.UserDAO userDAO = new user.UserDAO(); // 인스턴스 생성
															ArrayList<user.UserDTO> list = userDAO.order();
															for(int i = 0; i < list.size(); i++){
					%>
					<tr>
						<td><%=list.get(i).getMenu_name()%></td>
						<td><%=list.get(i).getId()%></td>
						
					</tr>
					<%
						}
					%>
						
					</tr>
				</tbody>
			</table>
			<!-- 글쓰기 버튼 생성 -->
			
		</div>
        </div>

        <div class="container" style="padding-top: 150px;">
          <div class="section-title" data-aos="zoom-out">
            <h2>manage</h2>
            <p>좌석현황</p>
          </div>
        </div>
        
        
        
        <%
                                	user.UserDAO userDAO2 = new user.UserDAO(); // 인스턴스 생성
                                                                                                	ArrayList<user.UserDTO> tablelist = userDAO.table();
                                %>
        
        <div class="container" style="padding-top: 30px;">
        <div class="tablebox">
        	<div class = "timetable">
			  	<div class ="trow" style="height: 30px;">
				  	<div class = "box"></div>
				  	<div class = "box">12:00</div>
				  	<div class = "box">13:00</div>
				  	<div class = "box">14:00</div>
				  	<div class = "box">15:00</div>
				  	<div class = "box">16:00</div>
				  	<div class = "rbox">17:00</div>
			  	</div>
			  	
			  	<div class ="trow">
				  	<div class = "box">세미나A</div>
				  	<div class = "box"><%if(tablelist.get(0).getRes_inf() != null){%><%=tablelist.get(0).getRes_inf()%><% } %></div>
				  	<div class = "box"><%if(tablelist.get(1).getRes_inf() != null){%><%=tablelist.get(1).getRes_inf()%><% } %></div>
				  	<div class = "box"><%if(tablelist.get(2).getRes_inf() != null){%><%=tablelist.get(2).getRes_inf()%><% } %></div>
				  	<div class = "box"><%if(tablelist.get(3).getRes_inf() != null){%><%=tablelist.get(3).getRes_inf()%><% } %></div>
				  	<div class = "box"><%if(tablelist.get(4).getRes_inf() != null){%><%=tablelist.get(4).getRes_inf()%><% } %></div>
				  	<div class = "box"><%if(tablelist.get(5).getRes_inf() != null){%><%=tablelist.get(5).getRes_inf()%><% } %></div>
			  	</div>
			  	
			  	<div class ="trow">
				  	<div class = "box">세미나B</div>
				  	<div class = "box"><%if(tablelist.get(6).getRes_inf() != null){%><%=tablelist.get(6).getRes_inf()%><% } %></div>
				  	<div class = "box"><%if(tablelist.get(7).getRes_inf() != null){%><%=tablelist.get(7).getRes_inf()%><% } %></div>
				  	<div class = "box"><%if(tablelist.get(8).getRes_inf() != null){%><%=tablelist.get(8).getRes_inf()%><% } %></div>
				  	<div class = "box"><%if(tablelist.get(9).getRes_inf() != null){%><%=tablelist.get(9).getRes_inf()%><% } %></div>
				  	<div class = "box"><%if(tablelist.get(10).getRes_inf() != null){%><%=tablelist.get(10).getRes_inf()%><% } %></div>
				  	<div class = "box"><%if(tablelist.get(11).getRes_inf() != null){%><%=tablelist.get(11).getRes_inf()%><% } %></div>
			  	</div>
			  	
			  	<div class ="trow">
				  	<div class = "box">세미나C</div>
				  	<div class = "box"><%if(tablelist.get(12).getRes_inf() != null){%><%=tablelist.get(12).getRes_inf()%><% } %></div>
				  	<div class = "box"><%if(tablelist.get(13).getRes_inf() != null){%><%=tablelist.get(13).getRes_inf()%><% } %></div>
				  	<div class = "box"><%if(tablelist.get(14).getRes_inf() != null){%><%=tablelist.get(14).getRes_inf()%><% } %></div>
				  	<div class = "box"><%if(tablelist.get(15).getRes_inf() != null){%><%=tablelist.get(15).getRes_inf()%><% } %></div>
				  	<div class = "box"><%if(tablelist.get(16).getRes_inf() != null){%><%=tablelist.get(16).getRes_inf()%><% } %></div>
				  	<div class = "box"><%if(tablelist.get(17).getRes_inf() != null){%><%=tablelist.get(17).getRes_inf()%><% } %></div>
			  	</div>
			  	
			  	<div class ="trow">
				  	<div class = "box">컨테이너A</div>
				  	<div class = "box"><%if(tablelist.get(18).getRes_inf() != null){%><%=tablelist.get(18).getRes_inf()%><% } %></div>
				  	<div class = "box"><%if(tablelist.get(19).getRes_inf() != null){%><%=tablelist.get(19).getRes_inf()%><% } %></div>
				  	<div class = "box"><%if(tablelist.get(20).getRes_inf() != null){%><%=tablelist.get(20).getRes_inf()%><% } %></div>
				  	<div class = "box"><%if(tablelist.get(21).getRes_inf() != null){%><%=tablelist.get(21).getRes_inf()%><% } %></div>
				  	<div class = "box"><%if(tablelist.get(22).getRes_inf() != null){%><%=tablelist.get(22).getRes_inf()%><% } %></div>
				  	<div class = "box"><%if(tablelist.get(23).getRes_inf() != null){%><%=tablelist.get(23).getRes_inf()%><% } %></div>
			  	</div>
			  	
			  	<div class ="trow">
				  	<div class = "box">컨테이너B</div>
				  	<div class = "box"></div>
				  	<div class = "box"></div>
				  	<div class = "box"></div>
				  	<div class = "box"></div>
				  	<div class = "box"></div>
				  	<div class = "box"></div>
			  	</div>
			  	
			  	<div class ="trow">
				  	<div class = "box">컨테이너C</div>
				  	<div class = "box"></div>
				  	<div class = "box"></div>
				  	<div class = "box"></div>
				  	<div class = "box"></div>
				  	<div class = "box"></div>
				  	<div class = "box"></div>
			  	</div>
			  	
			  	<div class ="trow">
				  	<div class = "box">컨테이너D</div>
				  	<div class = "box"></div>
				  	<div class = "box"></div>
				  	<div class = "box"></div>
				  	<div class = "box"></div>
				  	<div class = "box"></div>
				  	<div class = "box"></div>
			  	</div>
			  	
			  	<div class ="trow">
				  	<div class = "box">개인실A</div>
				    <div class = "box"></div>
				  	<div class = "box"></div>
				  	<div class = "box"></div>
				  	<div class = "box"></div>
				  	<div class = "box"></div>
				  	<div class = "box"></div>
			  	</div>
			  	
			  	<div class ="trow">
				  	<div class = "box">개인실B</div>
				    <div class = "box"></div>
				  	<div class = "box"></div>
				  	<div class = "box"></div>
				  	<div class = "box"></div>
				  	<div class = "box"></div>
				  	<div class = "box"></div>
			  	</div>
			  	
			  	<div class ="trow">
				  	<div class = "box">개인실C</div>
				    <div class = "box"></div>
				  	<div class = "box"></div>
				  	<div class = "box"></div>
				  	<div class = "box"></div>
				  	<div class = "box"></div>
				  	<div class = "box"></div>
			  	</div>
			  	
			  	<div class ="trow">
				  	<div class = "box">개인실D</div>
				  	<div class = "box"></div>
				  	<div class = "box"></div>
				  	<div class = "box"></div>
				  	<div class = "box"></div>
				  	<div class = "box"></div>
				  	<div class = "box"></div>
			  	</div>
			  	
			  	<div class ="trow">
				  	<div class = "box">개인실E</div>
				  	<div class = "box"></div>
				  	<div class = "box"></div>
				  	<div class = "box"></div>
				  	<div class = "box"></div>
				  	<div class = "box"></div>
				  	<div class = "box"></div>
			  	</div>
			  	
			  	<div class ="trow">
				  	<div class = "bbox">개인실F</div>
				  	<div class = "bbox"></div>
				  	<div class = "bbox"></div>
				  	<div class = "bbox"></div>
				  	<div class = "bbox"></div>
				  	<div class = "bbox"></div>
				  	<div></div>
			  	</div>
			 </div>
			 
			 
			 <div style="padding-left: 30px;">
			 	<% ArrayList<String> r_list = new ArrayList<String>();%>
			 
			 	
			 <form action="seatdAction.jsp" method="post">	
			 	<select id="browsers" name="res_inf" multiple size="4" required autofocus>
			 	<% for(int i = 0; i < tablelist.size(); i++){ %>
			 		<% if(tablelist.get(i).getRes_inf() != null && r_list.contains(tablelist.get(i).getRes_inf()) == false) { %>
			 			<% r_list.add(tablelist.get(i).getRes_inf()); %>
			 		<% } %>
			 	<% } %>
			 	
			 	<% for(int i = 0; i < r_list.size(); i++){ %>
			 		 <option><%= r_list.get(i) %></option>
			 		 
			 	<% } %>
				     <option>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</option>
				</select>
				<br><br>
				<button id="s_button" type="submit">선택내역삭제</button>
			</form>
			</div>
			
			
        </div>
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