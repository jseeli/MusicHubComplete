<%@ page language="java" contentType="text/html"%>
<%@include file="Header.jsp" %>
<body>

<div class="container">

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand">MusicHub</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="index.jsp">Home</a></li>
      <li><a href="AboutUs">About Us</a></li>
      <li><a href="ContactUs">Contact Us</a></li>
      <li><a href="Login"><span class="glyphicon glyphicon-log-in"></span> Log in</a></li>
      <li><a href="Register"><span class="glyphicon glyphicon-sign-up"></span>Sign Up</a></li>
    </ul>
  </div>
</nav>

<div class="jumbotron">
    <div class="container text-center">
    <h1><font face="Monotype Corsiva" color="blue">Music Hub</font></h1>      
    <p><font face="Monotype Corsiva">Traditional Design and Easy Playability</font></p>
  	</div>
  </div>
  
  		<br/><br/>

		<form name="loginForm" action="<c:url value="/j_spring_security_check"/>" method="post">
               <c:if test="${not empty error}">
                   <div class="error" style="color: #ff0000 ;">${error}</div>
               </c:if>
               <div class="form-group">
                   <label for="username">User: </label>
                   <input type="text" id="username" name="username" class="form-control" />
               </div>
               <div class="form-group">
                   <label for="password">Password:</label>
                   <input type="password" id="password" name="password" class="form-control" />
               </div>
               
				<div class="form-group">
                   <label for="email">Password:</label>
                   <input type="email" id="email" name="email" class="form-control" />
                </div>
               
               <div class="form-group">
                   <label for="addr">Address:</label>
                   <textarea id="addr" name="addr" cols=20 rows=10 class="form-control"></textarea>
                </div>
                
                <div class="form-group">
                   <label for="Mobile">Mobile:</label>
                   <input type="text" id="mobile" name="mobile"class="form-control"></textarea>
                </div>
                               
               <input type="submit" value="Submit" class="btn btn-default">
               <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
 		</form>
 		
 </div>

<br/><br/>
<%@include file="Footer.jsp" %>
</html>