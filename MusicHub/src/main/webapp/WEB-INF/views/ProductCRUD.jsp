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
  <script>
  var prod = ${proddt};
  angular.module('repeatSample', []).controller('repeatController', function($scope)
   {
      	  $scope.products=prod;
      
          $scope.sort = function(keyname)
          {
              $scope.sortKey = keyname;   //set the sortKey to the param passed
              $scope.reverse = !$scope.reverse; //if true make it false and vice versa
          }
      	
    });
 </script>
</head>
<body>

<div class="container">

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand">MusicHub</a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="/admin/AdminHome">Home</a></li>
      <li class="active"><a href="/admin/ProductCRUD">Product Addition</a></li>
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


<form:form action="${pageContext.request.contextPath }/admin/ProductCRUD" method="post" commandName="prdt" enctype="multipart/form-data">
<table class="table">
    <thead>
      <tr>
      <th colspan="2"> Addition Production</th>
      </tr>
    </thead>
    <tbody>
      <tr class="success">
        <td>Product ID</td>
        <td><form:input path="pid"/></td>
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
         <td colspan="2"><center><input type="submit" value="Add Product" /></center></td>
      </tr>	

    </tbody>
  </table>
</form:form>

<% if (request.getMethod()=="POST")
{
%>

<div ng-app="repeatSample" ng-controller="repeatController"> 
 <p align="right">Search<input type="text" ng-model="test"></p>
<table class="table">
		<tr class="success"><td colspan=5> Product Added </td></tr>
		<tr class="danger">
			<th>Product ID </th>
			<th>Product Name</th>
			<th>Product Price</th>
			<th>Image</th>
			<th>Category</th>
		</tr>
		<tr class="success" ng-repeat="product in products|filter:test">
                <td><a href="ProductDescription?pid={{product.pid}}">{{product.pid}}</a></td>
                <td>{{product.pname}}</td>
                <td>{{product.price}}</td>
                <td><img src='${pageContext.request.contextPath }/resources/{{product.pid}}.jpg' height="50px" width="50px"/></td>
                <td>{{product.category}}</td>
        </tr>
</table>
</div>
<%
}
%>

</div>

</body>
</html>