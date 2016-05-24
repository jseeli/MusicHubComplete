<%@page contentType="text/html" %>
<%@include file="WEB-INF/views/Header.jsp" %>

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
  
  
  <div id="myCarousel" class="carousel slide" data-ride="carousel">

    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src='resources/images/Image1.jpg' alt="bag" width="300px" height="245px">
      </div>

      <div class="item">
        <img src='resources/images/Image3.jpg' alt="Chania" width="300px" height="245px">
      </div>
    
      <div class="item">
        <img src='resources/images/Image3.jpg' alt="Flower" width="300px" height="245px">
      </div>
     
  </div>
   
  
  
  
    
 

<%@include file="WEB-INF/views/Footer.jsp" %>

</html>
