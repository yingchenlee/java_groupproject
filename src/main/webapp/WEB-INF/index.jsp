<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome to Book-it </title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/login.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body class="body">

	 <div class="topheader">
        <div class="header_main">
            <h1 id="backdoor">Book-</h1>
            <img class="logo" src="/logo.gif" alt="">
            <div class="login">
            	<!-- <p><c:out value="${error}" /></p> -->
                <form method="post" action="/login">
                    <div class="login-form">
                        <label for="email" style="color:white">Email or Phone number </label>
                		<input type="text" class="form-control" id="email" name="email" placeholder="Enter email">
                    </div>
                    <div class="login-form">
                        <label for="exampleInputPassword1" style="color:white">Password</label>
                		<input type="password" class="form-control" id="password" name="password" placeholder="Password">
                    </div>
                    <input type="submit" id="login_button" class="btn btn-primary" value="Login!"/>
                </form>
                <p style="color: white; margin-left:230px">Forgot account info?</p>
            </div>
        </div>
    </div>

	<div class="mainpage">
		<div class="leftbody">
            <img src="/coming_soon.jpg" alt="">
        </div>
	    <div class="reg_container">
	   		<div class="registration">
	    		<h2>Register here!</h2> <br>
	                <form:form method="POST" action="/registration" modelAttribute="newUser">
	                    <div class="form-group">
            				<form:errors path="firstName"/>
            				<form:input type="firstName" path="firstName" placeholder="First Name" class="form-control" id="form2" />
	                    </div>
	                    <div class="form-group">
							
            				<form:errors path="lastName"/>
            				<form:input type="lastName" path="lastName" placeholder="Last Name" class="form-control" id="form2" />
        				</div>
						<!-- <div class="form-group">
	                        <input type="text" class="form-control" id="form2" name="phone_number" placeholder="Phone Number">
	                    </div> -->
	                    <div class="form-group">
	                        <div id="checkmessage"></div>
	                             
            						<form:errors path="email"/>
            						<form:input type="email" path="email" placeholder="Email" class="form-control" id="form2" />
        						
	                    </div>
	                    <div id="form4" class="form-group">
	                        
            					<form:errors path="password"/>
            					<form:password path="password" placeholder="Password" class="form-control" id="form2" />
        					
	                    </div>
	                    <div id="form4" class="form-group">
	                        
            					<form:password path="passwordConfirmation" placeholder="Confirm Password" class="form-control" id="form2" />
        				
	                    </div>
	                        <div class="sex">
	                            <label for="male">Personal Account</label>
	                            <input type="radio" id="male" name="sex" value="male" required>
	                            <label for="female">Business Account</label>
	                            <input type="radio" id="female" name="sex" value="female" required>
	                        </div> <br>
	                    <p id="privacy">By clicking Sign up, you are indicating that you have read and agree to the Terms of Service and Privacy Policy.</p>
	                    <button id="signup" type="submit" class="btn btn-primary">Sign Up!</button> <br>
	                    <br> <img class="f_login" src="/static/images/facbook_login.jpg" alt="">
	                    <img class="g_login" src="/static/images/google_login.jpg" alt="">
	                </form:form>
	             </div>
	      </div>			
    </div>
    

</body>
</html>