<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Arrays" %>
<%@ page import="user.UserDAO" %>
<%@ page import="user.UserDTO" %> <!-- userdao의 클래스 가져옴 -->
<%@ page import="java.io.PrintWriter" %> <!-- 자바 클래스 사용 -->
<%
	request.setCharacterEncoding("UTF-8");
%>

<!-- 한명의 회원정보를 담는 user클래스를 자바 빈즈로 사용 / scope:페이지 현재의 페이지에서만 사용-->

<jsp:useBean id="user" class="user.UserDTO" scope="page" />
<jsp:setProperty name="user" property="id" />
<jsp:setProperty name="user" property="res_inf" /> 


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String userId = null;
			if(session.getAttribute("userId") != null){
		userId = (String)session.getAttribute("userId");
		
			}
			

			
	/* 		userDAO userDAO = new userDAO();
			int result = userDAO.select(user, userId);
			if(result == -1){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('에러')");
		
		script.println("</script>");
			}else {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('상품이 장바구니에 담겼습니다.')");
		script.println("location.href='order.jsp'");
		script.println("</script>");
			} */
		
		
			/* System.out.println(Arrays.toString(User.getTime_check())); */
			
			user.UserDAO userDAO = new user.UserDAO();
			int result = userDAO.seatDelete(user.getRes_inf());
			System.out.println(user.getRes_inf());
			if(result == -1){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('에러')");
		
		script.println("</script>");
			}else {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('수정이 완료되었습니다.')");
		script.println("location.href='main.jsp'");
		script.println("</script>");
			}
	%>
</body>
</html>