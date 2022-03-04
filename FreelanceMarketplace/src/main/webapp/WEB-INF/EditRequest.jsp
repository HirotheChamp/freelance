<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. -->
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Formatting (dates) -->
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Freelance app</title>
<!-- for Bootstrap CSS -->
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- YOUR own local CSS -->
<link rel="stylesheet" type="text/css" href="/css/style.css">
<!-- For any Bootstrap that uses JS or jQuery-->
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<!-- YOUR own local JS -->
<script type="text/javascript" src="/js/app.js"></script>
</head>
<body>



<nav class="navbar navbar-expand-lg navbar-light mt-2 mx-5">
  
  
    <a class="navbar-brand p-2" href="#">Hidden brand</a>
    <div class="d-flex navbar-nav mr-auto mt-2 mt-lg-0">
      
        <a class="nav-link p-2" href="/">Home <span class="sr-only">(current)</span></a>
     
     
        <a class="nav-link p-2" href="/showorders">Orders</a>
     
      
        <a class="nav-link p-2" href="/profile">Profile</a>
      
    

    
<a href="/login"><i class="fa fa-user ml-auto p-2 float-right" style="color: black; font-size:20px;"></i></a>
    <a href="/logout" class="btn btn-secondary me-3 ">Logout</a>

  </div>
</nav>
<hr></hr>
	<div class="container mt-5">
   		
   		<div>	   		
   			<form:form class="form-control" action="/edit/${editRequest.id}" method="post" modelAttribute="editRequest">       	  		
		  		<input type="hidden" name="_method" value="put"/>		  		
		
		  		<form:input type="hidden" value="${user_id}" path="user"/>		  		
		
		  		<form:label path="title" class="form-label">Request Name:</form:label>
		  		<form:errors path="title" class="text-danger"/>
		    	<form:input path="title" class="form-control"/>	    
		  		
		  		<form:label path="price" class="form-label">Price:</form:label>
		  		<form:errors path="price" class="text-danger"/>
		    	<form:input path="price" class="form-control"/>	   
		
				<form:label path="description" class="form-label">Description:</form:label>
				<form:errors path="description" class="text-danger"/>					
		    	<form:textarea path="description" class="form-control"/>	    
		    		<a href="/show/${id}" class="btn btn-secondary mt-2 ">Cancel</a>	  	
		  		<button type="submit" class="btn btn-primary mt-2">Submit</button>
			  
        	</form:form>	   			   		
   		</div>   
   		   <form action="/request/${id}/delete" method="post">
							<input type="hidden" name="_method" value="delete"> <input class="btn btn-danger mt-4"
								type="submit"  value="Delete">
						</form>
	</div>
	
	 <div class="page-wrapper">

 </div>
 <div class="footer">
    <div class="footer-content">
      <div class="footer-section about">
        <h2>About Us</h2>
        
        <div class="socials">
          <a href="#"><i class="fa fa-spotify" style="color: white; font-size: 20px;"></i></a>
          <a href="#"><i class="fa fa-apple" style="color: white; font-size: 20px;"></i></a>
          <a href="#"><i class="fa fa-facebook" style="color: white; font-size: 20px;"></i></a>
          <a href="#"><i class="fa fa-instagram"  style="color: white; font-size: 20px;"></i></a>
          <a href="#"><i class="fa fa-twitter"  style="color: white; font-size: 20px;"></i></a>
          <a href="#"><i class="fa fa-youtube-play"  style="color: white; font-size: 20px;"></i></a>
        </div>



      </div>
      <div class="footer-section links">
        <h2>Contact Us</h2>
        <div class="contacts">
          <span><i class="fa fa-phone"></i> &nbsp; 408-888-6532</span>
          <span><i class="fa fa-envelope"></i> &nbsp; kyleyoungins94@gmail.com</span>
           </div>
        
        
      </div>
      <div class="footer-section contact-form">
        
        <li><a href="#" style="text-decoration: none; color: white;">Food</a></li>
        <li><a href="#" style="text-decoration: none; color: white;">Apparel</a></li>
        <li><a href="#" style="text-decoration: none; color: white;">Accessories</a></li>
        <li><a href="#" style="text-decoration: none; color: white;">Music</a></li>
        <li><a href="#" style="text-decoration: none; color: white;">Business</a></li>
        
      </div>
      <div class="footer-section email-form">
        <h2>Join our newsletter</h2>
        <input type="email" placeholder="Enter your email address" id="footer-email">
       <input type="submit" value="Sign Up" id="footer-email-btn">
      </div>

      <div class="footer-bottom">
        &copy; Scopefree.com | Designed by Kyle Young
      </div>
    </div>
  </div>
</body>
</html>