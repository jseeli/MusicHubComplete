<%@ page language="java" contentType="text/html"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
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
      <li><a href="ProductUpdateDelete">Product Update</a></li>
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


<table class="table">
<tr class="danger"><td colspan="2"> Product Manipulation </td></tr>
<tr class="danger"><td> Product Addition </td><td> <a href="ProductCRUD">Add Product</a>
<tr class="danger"><td> Product Deletion </td><td> <a href="ProductUpdateDelete">Delete Product</a>
<tr class="danger"><td> Product Addition </td><td> <a href="ProductUpdateDelete">Update Product</a>		
</tr>
</table>


</div>

</body>
</html>