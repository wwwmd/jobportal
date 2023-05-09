 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>

<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
  <a class="navbar-brand" href="index.jsp"></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link   " href="index.jsp" >Home <span class="sr-only">(current)</span></a>
      </li>
      <c:if test="${ userobj.role eq 'admin' }">
      
      
      
        <li class="nav-item">
        <a class="nav-link " href="add_job.jsp "> <i class="fa fa-plus" aria-hidden="true"> </i>Post job</a>
      </li>
          <li class="nav-item">
        <a class="nav-link " href="viewjob.jsp"><i class="fa fa-eye" aria-hidden="true"></i> View job</a>
      </li>
      
      
    </c:if>
      
    
     
     
     
    </ul>
    <form class="form-inline my-2 my-lg-0">
    <c:if test="${not empty userobj }">
    
       
      <a href="logout" class="btn btn-Light"><i class="fa fa-user" aria-hidden="true"></i> Logout </a>
    </c:if>
    
    <c:if test="${empty userobj }">
      <a href="login2.jsp" class="btn btn-Light mr-1 ">Login </a>
      <a href="Register2.jsp" class="btn btn-Light"><i class="fa fa-user" aria-hidden="true"></i> SingUp </a>
      </c:if>
    </form>
  </div>
</nav>