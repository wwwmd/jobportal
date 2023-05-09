<%@page import="com.entity.Jobs"%>
<%@page import="com.db.Dbconnect"%>
<%@page import="com.dao.jobdao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EDITING JOBS</title>
<%@include file="all_componet/all_css.jsp" %>
</head>
<body>
<c:if test="${userobj.role ne 'admin'}">

<c:redirect url="Login.jsp"></c:redirect>
</c:if>
<%@include file="all_componet/nevbar.jsp" %>

  <%
          int id=Integer.parseInt(request.getParameter("id"));
          jobdao dao=new jobdao(Dbconnect.getconnect());
      Jobs  j=   dao.getjobbyid(id);
          
          %>
          <h2>EDIT JOBS</h2> 
 <form action="add_job" method="post">
        <div class="title">
          <i class="fas fa-pencil-alt"></i> 
         
     
          
        </div>
        
         Enter Title: <input  type="text" name="title" value="<%=j.getTitle()%>"><br><br>
                <div>
          <select name="location">
            <option value="<%= j.getLocation()%>" selected><%= j.getLocation()%></option>
            <option value="Bihar">Bihar</option>
            <option value="Mumbai">Mumbai</option>
            <option value="Delhi">Delhi</option>
            <option value="Banglor">Banglor</option>
            <option value="Hydrabad">Hydrabad</option>
      
          </select>
          </div>  
        
          
         <div>
          <select name="category">
            <option value="<%=j.getCategory() %>" selected><%=j.getCategory() %></option>
            <option value="IT">IT</option>
				<option value="Medical">Medical</option>
            <option value="Market">Market</option>
            
          </select>
        </div>
<div>
          <select name="status">
            <option value="<%=j.getStatus() %>" selected><%=j.getStatus() %></option>
            <option value="Active">Active</option>
            <option value="Not Active">Not Active</option>
           
          </select>
          </div>
        
     Enter Description  <input type="text" name="description" value="<%=j.getDescription()%>">
        <input type="submit" value="publis">
      </form>
    


</body>
</html>