<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login page</title>
<%@include file="all_componet/all_css.jsp" %>
</head>
<body>

<%@include file="all_componet/nevbar.jsp" %>

<form action="login" method="post">
Enter Email: <input type="text" placeholder="Enter Your email" name="email1"/><br><br>
 Password: <input type="password" placeholder="Enter Your password" name="pass1"/><br><br>
<input type="submit" value="Login" 	/>
</form>







</body>
</html>