<%@ page language="java" contentType="text/html"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<html>
<head>
<title>Insert title here</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.23/angular.min.js"></script>
<title>Insert title here</title>
</head>
<body>

<div class="container">

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand">MusicHub</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="/admin/AdminHome">Home</a></li>
      <li><a href="ProductCRUD">Product Addition</a></li>
      <li><a href="ProductUpdateDelete">Product Delete</a></li>
      <li class="active"><a href="ProductUpdateDelete">Product Update</a></li>
      <li><a href="SignOut"><span class="glyphicon glyphicon-sign-up"></span>Logout</a></li>
    </ul>
  </div>
</nav>

<div class="jumbotron">
    <div class="container text-center">
    <h1><font face="Monotype Corsiva" color="blue">Music Hub</font></h1>      
    <p><font face="Monotype Corsiva">Traditional Design and Easy Playability</font></p>
  	</div>
</div>

<form:form action="${pageContext.request.contextPath }/admin/ProductUpdate" method="post" commandName="prdt" enctype="multipart/form-data">
<table class="table">
    <thead>
      <tr>
      <th colspan="2"> Addition Production</th>
      </tr>
    </thead>
    <tbody>
      <tr class="success">
        <td>Product ID</td>
        <td><form:input readonly="true" path="pid" /></td>
      </tr>
      <tr class="danger">
        <td>Product Name</td>
        <td><form:input path="pname"/></td>
      </tr>
      <tr class="success">
        <td>Product Price</td>
        <td><form:input path="price"/></td>
      </tr>
      <tr class="danger">
        <td>Category</td>
        <td><form:select path="category" items="${items}" /></td>
       <%--  <td><form:input path="category"/></td> --%>
      </tr>	
      <tr class="success">
        <td>Image</td>
        <td><form:input type="file" path="pimage"/></td>
      </tr>
       <tr class="danger">
        <td>Description</td>
        <td><form:textarea path="desc"/></td>
      </tr>	
      <tr class="success">
         <td colspan="2"><center><input type="submit" value="Update Product" /></center></td>
      </tr>	

    </tbody>
  </table>
</form:form>

</div>

</body>
</html>