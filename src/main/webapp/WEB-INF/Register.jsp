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
<link rel="stylesheet" type="text/css" href="/css/loginregistration.css">
<!-- For any Bootstrap that uses JS or jQuery-->
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<!-- YOUR own local JS -->
<script type="text/javascript" src="/js/app.js"></script>
</head>
<body>
<div class="home">
 <a href="/"><i class="fa fa-home"  style="color: white; font-size: 50px;"></i></a>
 </div>
  <div class="center">
      <h1>Register</h1>
      <form:form action="/register" method="POST" modelAttribute="newUser">
       <div class="txt_field">
       
          <form:input type="text" path="userName" required="required"/>
          <span></span>
          <form:label path="userName">Username</form:label>
          
        </div>
        <form:errors path="userName" class="text-danger" />
        <div class="txt_field">
          <form:input type="text" path="email" required="required"/>
          <span></span>
          <form:label path="email">Email</form:label>
        </div>
        <form:errors path="email" class="text-danger" />
           <div class="txt_field">
          <form:input type="password" path="password" required="required"/>
          <span></span>
          <form:label path="password">Password</form:label>
        </div>
        <form:errors path="password" class="text-danger" />
           <div class="txt_field">
          <form:input type="password" path="confirm" required="required"/>
          <span></span>
          <form:label path="confirm">Confirm Password</form:label>
        </div>
        <form:errors path="confirm" class="text-danger" />
        
       
        <input type="submit" value="Register">
        
        <div class="signup_link">
          Already a member? <a href="/login">Sign in</a>
        </div>
      </form:form>
    </div>
</body>
</html>