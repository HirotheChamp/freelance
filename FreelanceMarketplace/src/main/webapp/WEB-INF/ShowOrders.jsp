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
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- YOUR own local CSS -->
<link rel="stylesheet" type="text/css" href="/css/style.css">
<!-- For any Bootstrap that uses JS or jQuery-->
<script src="/webjars/jquery/jquery.min.js"></script>
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
      
    
 <%-- <form class="d-flex form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-dark my-2 my-sm-0" type="submit">Search</button>
    </form>  --%>
    
<a href="/login"><i class="fa fa-user ml-auto p-2 float-right" style="color: black; font-size:20px;"></i></a>
</div>
</nav>
	<hr></hr>
	
	<table class="table table-light table-striped mt-5">
			<thead>
				<tr>
					<th class="col-1">Request</th>
					<th class="col-2">From</th>
					<th class="col-3">Price</th>
					<th class="col-4">Days until completion</th>
					
				</tr>
			</thead>
			<tbody>
		<%-- 		<c:forEach var="tvshow" items="${tvshows}">
					<!-- LOOP -->
					<tr>
						<td><c:out value="${tvshow.id}" /></td>
						<td><a href="/show/${tvshow.id}"><c:out
									value="${tvshow.title}" /></a></td>
						<td><c:out value="${tvshow.network}" /></td>
						<td><c:out value="${tvshow.user.userName}" /></td>
					</tr>
				</c:forEach> --%>

			</tbody>
			
		</table>
	
	
	
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