<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Registration</title>
    <%@include file="all_componet/all_css.jsp" %>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
  </head>
  <body>
  <%@include file="all_componet/nevbar.jsp" %>

  <c:if test="${not empty msg }">
<h4 class="text-center text-success">${msg}</h4>
<c:remove var="msg"/>
</c:if>
    <div class="container mt-5">
      <h1>Registration</h1>
      <form action="add_user" method="post"    id="registration-form">
        <div class="form-group">
          <label for="name">Name</label>
          <input type="text" class="form-control" id="name" placeholder="Enter your name" name="name1">
        </div>
        <div class="form-group">
          <label for="email">Email address</label>
          <input type="email" class="form-control" id="email" placeholder="Enter your email1" name="email1">
        </div>
        <div class="form-group">
          <label for="password">Password</label>
          <input type="password" class="form-control" id="password" placeholder="Enter your password" name="pass1">
        </div>
        <div class="form-group">
          <label for="qualification">Qualification</label>
          <input type="text" class="form-control" id="qualification" placeholder="Enter your qualification" name="qua1">
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
      </form>

    </div>
          <%@include file="all_componet/footer.jsp" %>

    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <!-- Bootstrap JS -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js" integrity="sha384-1CmrxMRARb6aLqgBO7yyAxTOQE2AKb9GfXnEo760AUcUmFx3ibVJJAzGytlQcNXd" crossorigin="anonymous"></script>
  </body>
</html>
    