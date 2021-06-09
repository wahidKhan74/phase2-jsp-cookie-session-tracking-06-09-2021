<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Submitted Request</title>
</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>
	<%
		String email = request.getParameter("email");
		String password = request.getParameter("password");
	
		if(email== null || email.equals("") || password== null || password.equals("")) {
			throw new ServletException("Invalid request : Required Parameters are missing");
		} else {
			if(email.equals("admin@gmail.com") && password.equals("admin@123")) {
				
				int HOUR24 = 60*60*24;
				
				// create a cookie
				Cookie ck = new Cookie("userId",email);
				ck.setMaxAge(HOUR24);				
				response.addCookie(ck);
				
				out.print("<h4 style='color:green;text-align:center'>Successfully Logged In !<h2>");
				
			} else {
				throw new ServletException(" Invalid credentials !");
			}
		}
	
	
	%>

</body>
</html>