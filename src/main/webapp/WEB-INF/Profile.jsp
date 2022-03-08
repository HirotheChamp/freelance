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
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
      
    
 <%-- <form class="d-flex form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-dark my-2 my-sm-0" type="submit">Search</button>
    </form>  --%>
    
<a href="/login"><i class="fa fa-user ml-auto p-2 float-right" style="color: black; font-size:20px;"></i></a>
</div>
</nav>
	<hr></hr>



	<div class="container"> 
	<div class="row mt-5">

		<div class="col">
			<div class="card" style="width: 25rem;">
				<div class="card-body">
					<div class="container">
						<div class="picture-container mt-2">
							<div class="picture">
								<img
									src="https://lh3.googleusercontent.com/LfmMVU71g-HKXTCP_QWlDOemmWg4Dn1rJjxeEsZKMNaQprgunDTtEuzmcwUBgupKQVTuP0vczT9bH32ywaF7h68mF-osUSBAeM6MxyhvJhG6HKZMTYjgEv3WkWCfLB7czfODidNQPdja99HMb4qhCY1uFS8X0OQOVGeuhdHy8ln7eyr-6MnkCcy64wl6S_S6ep9j7aJIIopZ9wxk7Iqm-gFjmBtg6KJVkBD0IA6BnS-XlIVpbqL5LYi62elCrbDgiaD6Oe8uluucbYeL1i9kgr4c1b_NBSNe6zFwj7vrju4Zdbax-GPHmiuirf2h86eKdRl7A5h8PXGrCDNIYMID-J7_KuHKqaM-I7W5yI00QDpG9x5q5xOQMgCy1bbu3St1paqt9KHrvNS_SCx-QJgBTOIWW6T0DHVlvV_9YF5UZpN7aV5a79xvN1Gdrc7spvSs82v6gta8AJHCgzNSWQw5QUR8EN_-cTPF6S-vifLa2KtRdRAV7q-CQvhMrbBCaEYY73bQcPZFd9XE7HIbHXwXYA=s200-no"
									class="picture-src" id="wizardPicturePreview" title=""> <input
									type="file" id="wizard-picture" class="">
							</div>
							<p class="mt-2">Choose Profile Picture</p>
							<!-- TODO set up username backend to link to this page -->
							<h4>${userName}</h4>

							<hr></hr>

						</div>
					</div>
				</div>
				<!-- <button type="button" class="btn btn-success btn-block">Continue
				(price of request)</button> -->
			</div>




			<div class="card mt-5" style="width: 25rem;">
				<div class="card-body">
					<h5 class="card-title">Description</h5>

					<p class="card-text">Hello! My name is Jane Doe and I am here
						to help you walk your dogs after a long day! I've been walking
						dogs since a young age and have become to enjoy it as a side
						hobby. if you are willing enough, I would love to take your dog
						for a walk.</p>

					<hr></hr>

					<h5 class="card-title">Languages</h5>

					<ul>
						<li>English</li>
						<li>Spanish</li>

					</ul>

					<hr></hr>

					<h5 class="card-title">Skills</h5>

					<ul>
						<li>Can build a website from scratch</li>
						<li>Can do mental math</li>

					</ul>

					<hr></hr>

					<h5 class="card-title">Education</h5>

					<p class="card-text">San Francisco State University</p>



				</div>


			</div>



		</div>


		<div class="col">
			<div class="card" style="width: 45rem;">
				<div class="card-body">
					<h5 class="card-title">Reviews as Buyer</h5>

						<ul>
						<li>This product is awesome!</li>
						<li>I didnt like this product</li>

					</ul>

				</div>
				
			</div>

		</div>
	</div>
	</div>

	<div class="page-wrapper"></div>
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