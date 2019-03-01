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
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
	<title>More</title>
	<style>
		/* Slideshow container */
		.slideshow-container {
			position: relative;
			background: #f1f1f1f1;
		}

		/* Slides */
		.mySlides {
			display: none;
			padding: 80px;
			text-align: center;
		}

		/* Next & previous buttons */
		.prev,
		.next {
			cursor: pointer;
			position: absolute;
			top: 50%;
			width: auto;
			margin-top: -30px;
			padding: 16px;
			color: #888;
			font-weight: bold;
			font-size: 20px;
			border-radius: 0 3px 3px 0;
			user-select: none;
		}

		/* Position the "next button" to the right */
		.next {
			position: absolute;
			right: 0;
			border-radius: 3px 0 0 3px;
		}

		/* On hover, add a black background color with a little bit see-through */
		.prev:hover,
		.next:hover {
			background-color: rgba(0, 0, 0, 0.8);
			color: white;
		}

		/* The dot/bullet/indicator container */
		.dot-container {
			text-align: center;
			padding: 20px;
			background: #ddd;
		}

		/* The dots/bullets/indicators */
		.dot {
			cursor: pointer;
			height: 15px;
			width: 15px;
			margin: 0 2px;
			background-color: #bbb;
			border-radius: 50%;
			display: inline-block;
			transition: background-color 0.6s ease;
		}

		/* Add a background color to the active dot/circle */
		.active,
		.dot:hover {
			background-color: #717171;
		}

		/* Add an italic font style to all quotes */
		q {
			font-style: italic;
		}

		/* Add a blue color to the author */
		.author {
			color: cornflowerblue;
		}
	</style>
	<script>
		var slideIndex = 1;
		showSlides(slideIndex);

		function plusSlides(n) {
			showSlides(slideIndex += n);
		}

		function currentSlide(n) {
			showSlides(slideIndex = n);
		}

		function showSlides(n) {
			var i;
			var slides = document.getElementsByClassName("mySlides");
			var dots = document.getElementsByClassName("dot");
			if (n > slides.length) { slideIndex = 1 }
			if (n < 1) { slideIndex = slides.length }
			for (i = 0; i < slides.length; i++) {
				slides[i].style.display = "none";
			}
			for (i = 0; i < dots.length; i++) {
				dots[i].className = dots[i].className.replace(" active", "");
			}
			slides[slideIndex - 1].style.display = "block";
			dots[slideIndex - 1].className += " active";
		}

	</script>
</head>

<body>

	<!-- <img class="d-block w-100" src="https://backgroundcheckall.com/wp-content/uploads/2017/12/background-img-9.jpg" alt="First slide"> -->
	<!-- Slideshow container -->
	<div class="slideshow-container">

		<!-- Full-width slides/quotes -->
		<div class="mySlides">
			<form action="">
				<input type="text">
				<input type="submit" value="S">
			</form>
		</div>

		<div class="mySlides">
			<q>But man is not made for defeat. A man can be destroyed but not defeated.</q>
			<p class="author">- Ernest Hemingway</p>
		</div>

		<div class="mySlides">
			<q>I have not failed. I've just found 10,000 ways that won't work.</q>
			<p class="author">- Thomas A. Edison</p>
		</div>

		<!-- Next/prev buttons -->
		<a class="prev" onclick="plusSlides(-1)">&#10094;</a>
		<a class="next" onclick="plusSlides(1)">&#10095;</a>
	</div>

	<!-- Dots/bullets/indicators -->
	<div class="dot-container">
		<span class="dot" onclick="currentSlide(1)"></span>
		<span class="dot" onclick="currentSlide(2)"></span>
		<span class="dot" onclick="currentSlide(3)"></span>
	</div>
</body>

</html>