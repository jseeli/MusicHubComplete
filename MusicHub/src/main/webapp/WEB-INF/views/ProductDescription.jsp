<%@ page language="java" contentType="text/html"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="Header.jsp" %>

<body>

<div class="container">

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand">MusicHub</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="ProductHome">Home</a></li>
      <li><a href="">Feedback</a></li>
      <li><a href="">Your Orders</a></li>
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




<table class="table">
  <tr>
  	<td rowspan="5"><img src='${pageContext.request.contextPath }/resources/${MyProduct.pid}' width="200" height="200"/></td>
    <td>Product	:</td><td>${MyProduct.pid} </td>
  <tr>
  <tr>  
    <td>Product Name :</td><td>${MyProduct.pname}</td>
  </tr>
  <tr>
    <td>Product Category :</td><td>${MyProduct.category}</td>
  </tr>
  <tr>
    <td>Product Description :</td><td>${MyProduct.desc}</td>
  </tr>
</table>


</div>
<%@include file="Footer.jsp" %>

</body>
</html>