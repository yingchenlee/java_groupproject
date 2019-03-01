<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>

<head>
	<meta charset="ISO-8859-1">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
		integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<title>Chat</title>

	<style>
		/* Chat containers */
		.container {
			border: 2px solid #dedede;
			background-color: #f1f1f1;
			border-radius: 5px;
			padding: 10px;
			margin: 10px 0;
		}

		/* Darker chat container */
		.darker {
			border-color: #ccc;
			background-color: #ddd;
		}

		/* Clear floats */
		.container::after {
			content: "";
			clear: both;
			display: table;
		}

		/* Style images */
		.container img {
			float: left;
			max-width: 60px;
			width: 100%;
			margin-right: 20px;
			border-radius: 50%;
		}

		/* Style the right image */
		.container img.right {
			float: right;
			margin-left: 20px;
			margin-right: 0;
		}

		/* Style time text */
		.time-right {
			float: right;
			color: #aaa;
		}

		/* Style time text */
		.time-left {
			float: left;
			color: #999;
		}
	</style>
</head>

<body>
	<div class="container">
		<img src="http://comic-cons.xyz/wp-content/uploads/Star-Wars-avatar-icon-Darth-Vader-480x480.png" alt="Avatar">
		<p>Hello. How are you today?</p>
		<span class="time-right">11:00</span>
	</div>

	<div class="container darker">
		<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXTJqoyebrdg4vPPR-oz1jfUP2VgQwDx-FKa04_ckaRvAZAVES" alt="Avatar" class="right">
		<p>Hey! I'm fine. Thanks for asking!</p>
		<span class="time-left">11:01</span>
	</div>

	<div class="container">
		<img src="http://comic-cons.xyz/wp-content/uploads/Star-Wars-avatar-icon-Darth-Vader-480x480.png" alt="Avatar">
		<p>Sweet! So, what do you wanna do today?</p>
		<span class="time-right">11:02</span>
	</div>

	<div class="container darker">
		<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXTJqoyebrdg4vPPR-oz1jfUP2VgQwDx-FKa04_ckaRvAZAVES" alt="Avatar" class="right">
		<p>Nah, I dunno. Teach me the Force.. or learn more coding perhaps?</p>
		<span class="time-left">11:05</span>
	</div>
</body>

</html>