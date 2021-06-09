<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Profile Page</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	
	<% 
		Cookie ck[] = request.getCookies();
		String key = ck[1].getName();
		String email = ck[1].getValue();
		if(key.equals("userId")) {
			out.print("<h4 style='color:green;text-align:center'>Hello user "+email+"<h2>");
		}else {
			throw new ServletException("Invalid user access, please login first");
		}
	%>
</body>
</html>