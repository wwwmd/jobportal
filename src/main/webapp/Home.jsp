<%@page import="com.entity.Jobs"%>
<%@page import="java.util.List"%>
<%@page import="com.db.Dbconnect"%>
<%@page import="com.dao.jobdao"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View jobs</title>
<%@include file="all_componet/all_css.jsp" %>
</head>
<body>

<%@include file="all_componet/nevbar.jsp" %>
<div class="container">
<div class="row">
<div class="col-md-12">
<h5 class="text-center text-primary">

All Jobs
</h5>
<%  jobdao dao=new jobdao(Dbconnect.getconnect());


List <Jobs> list=dao.getAllJobs();
for(Jobs j:list)
{%>
	<div class="card mt-2">
<div class="card-body">
<div class="text-center text-primary">
<i class="far fa-clipboard fa-2x"></i>

</div>







<h6><%= j.getTitle() %></h6>
<p> <%=j.getDescription() %></p>
</div>
<br>
<div class="form-row">
<div class="form-group col-md-3">

<input type="text" class="form-control form-control-sm"
value="Location:<%= j.getLocation()%>"readonly>	


</div>
<div class="form-group com-md-3">
<input type="text" class="form-control form-control-sm"
value="Category:<%=j.getCategory() %>" readonly>


</div>



</div>
<h6><%=j.getPdate() %></h6>
<div class="text-center">


      <a href="apply.jsp" class="btn btn-danger"><i class="fa fa-user" aria-hidden="true"></i> Apply Now </a>

</div>





</div>





</div>
<%}
%>

</div>




</div>

</body>
</html>