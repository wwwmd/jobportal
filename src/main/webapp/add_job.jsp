<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Job adding</title>
<%@include file="all_componet/all_css.jsp" %>

</head>
<body>
<c:if test="${userobj.role ne 'admin'}">

<c:redirect url="Login.jsp"></c:redirect>
</c:if>
<%@include file="all_componet/nevbar.jsp" %>
<div class="container">
<h2 class="text-center">ADD JOBS</h2>


  <div class="title">
          <i class="fas fa-pencil-alt"></i> 
          <c:if test="${not empty msg }">
          <div class="alert-alert-success "role="alert">${msg }</div>
          
          </c:if>
      
    </div>
    
 <form action="add_job" method="post">
 
          <div class="row"> 
          <div class="col-md-6">
            <label> Enter Title: </label>
          <input  type="text" name="title" class="form-control"><br><br>
         </div> 
         </div>
        <div>
          <select name="location">
            <option value="Select city" selected>Select city</option>
            <option value="Bihar">Bihar</option>
            <option value="Mumbai">Mumbai</option>
            <option value="Delhi">Delhi</option>
            <option value="Banglor">Banglor</option>
            <option value="Hydrabad">Hydrabad</option>
      
          </select>
          </div>  
        
          
         <div>
          <select name="category">
            <option value="Select Category" selected>Select Category</option>
            <option value="IT">IT</option>
				<option value="Medical">Medical</option>
            <option value="Market">Market</option>
            
          </select>
        </div>
<div>
          <select name="status">
            <option value="Select Status" selected>Select Status</option>
            <option value="Active">Active</option>
            <option value="Not Active">Not Active</option>
           
          </select>
          </div>
        
     Enter Description  <input type="text" name="description">
        <input type="submit" value="publis">
      </form>
    </div>


</body>
</html>