<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('주문이 완료되었습니다.')");
			script.println("location.href='main.jsp'");
			script.println("</script>");
			 %>
</body>
</html>