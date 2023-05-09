<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
<head>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script>
  function submitForm() {
    var name = $('#name').val();
    var mobile = $('#mobile').val();
    // Here you can add the code to send the name and mobile number to your server
  }
  </script>
</head>
<body>

<div class="container">
  <h2>Apply for Jobs</h2>
  <form >
    <div class="form-group">
      <label for="name">Name:</label>
      <input type="text" class="form-control" id="name" placeholder="Enter name">
    </div>
    <div class="form-group">
      <label for="mobile">Mobile:</label>
      <input type="text" class="form-control" id="mobile" placeholder="Enter mobile number">
    </div>
    <button type="button" class="btn btn-primary" onclick="submitForm()" href="afterapply.jsp">Submit</button>
  </form>
</div>

</body>
</html>
