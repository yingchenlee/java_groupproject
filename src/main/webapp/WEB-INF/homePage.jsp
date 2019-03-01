<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isErrorPage="true" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page</title>
<link rel="stylesheet" type="text/css" href="css/style2.css">
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
</head>



<body>
	<div class="body">
	<h1>Welcome, <c:out value="${user.firstName}"/>  <a href="/logout">Logout</a></h1>
	<div class= "header">
		<a href="/instructor" class="btn btn-primary">Instructors' Schedules</a>
	</div>
	<div class ="left">
<div class="calendar dark">
    <div class="calendar_header">
      <h3 class = "header_title">Welcome Back <c:out value="${user.firstName}"/></h3>
      <p class="header_copy"> Calendar Plan</p>
    </div>
    <div class="calendar_plan">
      <div class="cl_plan">
        <div class="cl_title">Today</div>
        <div class="cl_copy">22nd  April  2018</div>
        <div class="cl_add">
          <i class="fas fa-plus"></i>
        </div>
      </div>
    </div>
    <div class="calendar_events">
      <p class="ce_title">Upcoming Events</p>
      <div class="event_item">
        <div class="ei_Dot dot_active"></div>
        <div class="ei_Title">10:30 am</div>
        <div class="ei_Copy">Monday briefing with the team</div>
      </div>
      <div class="event_item">
        <div class="ei_Dot"></div>
        <div class="ei_Title">12:00 pm</div>
        <div class="ei_Copy">Lunch for with the besties</div>
      </div>
      <div class="event_item">
        <div class="ei_Dot"></div>
        <div class="ei_Title">13:00 pm</div>
        <div class="ei_Copy">Meet with the client for final design <br> @foofinder</div>
      </div>
      <div class="event_item">
        <div class="ei_Dot"></div>
        <div class="ei_Title">14:30 am</div>
        <div class="ei_Copy">Plan event night to inspire students</div>
      </div>
      <div class="event_item">
        <div class="ei_Dot"></div>
        <div class="ei_Title">15:30 am</div>
        <div class="ei_Copy">Add some more events to the calendar</div>
      </div>
    </div>
  </div>
	
  </div>
  
  <!-- messages -->
	<div class="right">
		<h1>Here are your messages:</h1>
			<table class= "table table-bordered">
				<thead>
					<tr>
            
						<th>Name</th>
						<th>Message</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>Nate</td>
						<td>Text</td>
					</tr>
				</tbody>
      </table>
      
      
	</div>
	</div>	
</body>
</html>