<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
         <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<%@include file="all_componet/all_css.jsp" %>
</head>
<body>
<%@include file="all_componet/nevbar.jsp" %>

<div class="container-fluid login-page hlo">
<div class="row">
<div class="col-sm-4">




</div>
<c:if test="${not empty msg }">
<h4 class="text-center text-success">${msg}</h4>
<c:remove var="msg"/>
</c:if>
<div class="col-sm-4 m-5">
<form action="add_user" method="post">
  Name: <input type="text" placeholder="enter your name" name="name1"/><br><br>
Qualification:<input type="text" placeholder="enter your qualification" name="qua1"/><br><br>
 Email:<input type="text" placeholder="Enter Your email" name="email1"/></br><br>
Password:<input type="password" placeholder="Enter Your password" name="pass1"/></br><br>
<input type="submit" value="Register Here" class="btn btn-primary  text-bold 	"/>
</form>
</div>



<div class="col-sm-4">

</div>

</div>
</div>


</body>
</html>