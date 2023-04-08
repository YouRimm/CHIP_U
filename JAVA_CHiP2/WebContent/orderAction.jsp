<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO" %> <!-- userdao의 클래스 가져옴 -->
<%@ page import="java.io.PrintWriter" %> <!-- 자바 클래스 사용 -->
<%
	request.setCharacterEncoding("UTF-8");
%>

<!-- 한명의 회원정보를 담는 user클래스를 자바 빈즈로 사용 / scope:페이지 현재의 페이지에서만 사용-->

<jsp:useBean id="user" class="user.UserDTO" scope="page" />
<jsp:setProperty name="user" property="id" />
<jsp:setProperty name="user" property="selected_menu" /> 
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
			
			if(userId == null){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('로그인 후 구매 가능합니다')");
		script.println("location.href='login.jsp'");
		script.println("</script>");
			}
			
			
			user.UserDAO userDAO = new user.UserDAO();
			int result = userDAO.select(user.getSelected_menu(), userId);
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
			}
	%>
</body>
</html>