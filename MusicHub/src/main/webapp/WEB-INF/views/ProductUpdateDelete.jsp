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
      <li class="active"><a href="/admin/AdminHome">Home</a></li>
      <li><a href="ProductCRUD">Product Addition</a></li>
      <li class="active"><a href="ProductUpdateDelete">Product Delete</a></li>
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


<div ng-app="repeatSample" ng-controller="repeatController"> 
 <p align="right">Search<input type="text" ng-model="test"></p>
<table class="table">
		    <tr class="danger">
			<th>Product ID </th>
			<th>Product Name</th>
			<th>Product Price</th>
			<th>Category</th>
			<th>Your Action</th>
		</tr>
		<tr class="success" ng-repeat="product in products|filter:test">
                <td>{{product.pid}}</td>
                <td>{{product.pname}}</td>
                <td>{{product.price}}</td>
                <td>{{product.category}}</td>
                <td><a href="ProductUpdate?pid={{product.pid}}">UPDATE</a>/<a href="ProductDelete?pid={{product.pid}}">DELETE</a></td>
        </tr>
</table>
</div>

</div>

</body>
</html>