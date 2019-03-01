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
  <style>
    /* Set height of body and the document to 100% to enable "full page tabs" */
    /* body,
    html {
      height: 100%;
      margin: 0;
      font-family: Arial;
    } */

    /* Style tab links */
    .tablink {
      background-color: #555;
      color: white;
      float: left;
      border: none;
      outline: none;
      cursor: pointer;
      padding: 14px 16px;
      font-size: 17px;
      width: 25%;
    }

    .tablink:hover {
      background-color: #777;
    }

    /* Style the tab content (and add height:100% for full page content) */
    .tabcontent {
      color: white;
      display: none;
      padding: 100px 20px;
      height: 100%;
    }

    #Home {
      background-color: darkred;
    }

    #Send {
      background-color: darkolivegreen;
    }

    #Contact {
      background-color: darkcyan;
    }

    #About {
      background-color: orange;
    }

    /* ++popup chats++ */
    {box-sizing: border-box;}

    /* Button used to open the chat form - fixed at the bottom of the page */
    .open-button {
      background-color: #555;
      color: white;
      padding: 16px 20px;
      border: none;
      cursor: pointer;
      opacity: 0.8;
      position: fixed;
      bottom: 23px;
      right: 28px;
      width: 280px;
    }

    /* The popup chat - hidden by default */
    .form-popup {
      display: none;
      position: fixed;
      bottom: 0;
      right: 15px;
      border: 3px solid #f1f1f1;
      z-index: 9;
    }

    /* Add styles to the form container */
    .form-container {
      max-width: 300px;
      padding: 10px;
      background-color: white;
    }

    /* Full-width textarea */
    .form-container textarea {
      width: 100%;
      padding: 15px;
      margin: 5px 0 22px 0;
      border: none;
      background: #f1f1f1;
      resize: none;
      min-height: 200px;
    }

    /* When the textarea gets focus, do something */
    .form-container textarea:focus {
      background-color: #ddd;
      outline: none;
    }

    /* Set a style for the submit/login button */
    .form-container .btn {
      background-color: #4CAF50;
      color: white;
      padding: 16px 20px;
      border: none;
      cursor: pointer;
      width: 100%;
      margin-bottom: 10px;
      opacity: 0.8;
    }

    /* Add a red background color to the cancel button */
    .form-container .cancel {
      background-color: red;
    }

    /* Add some hover effects to buttons */
    .form-container .btn:hover,
    .open-button:hover {
      opacity: 1;
    }
  </style>

  <script>
    function openPage(pageName, elmnt, color) {
      // Hide all elements with class="tabcontent" by default */
      var i, tabcontent, tablinks;
      tabcontent = document.getElementsByClassName("tabcontent");
      for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
      }

      // Remove the background color of all tablinks/buttons
      tablinks = document.getElementsByClassName("tablink");
      for (i = 0; i < tablinks.length; i++) {
        tablinks[i].style.backgroundColor = "";
      }

      // Show the specific tab content
      document.getElementById(pageName).style.display = "block";

      // Add the specific color to the button used to open the tab content
      elmnt.style.backgroundColor = color;
    }

    // Get the element with id="defaultOpen" and click on it
    document.getElementById("defaultOpen").click();


    // popup chat window
    function openForm() {
      document.getElementById("myForm").style.display = "block";
    }

    function closeForm() {
      document.getElementById("myForm").style.display = "none";
    }
  </script>
</head>



<body>
  <div class="body">
    <h1>Welcome,
      <c:out value="${user.firstName}" /> <a href="/logout">Logout</a></h1>
    <div class="header">
      <a href="/instructor" class="btn btn-primary">Instructors' Schedules</a>
    </div>
    <div class="left">
      <div class="calendar dark">
        <div class="calendar_header">
          <h3 class="header_title">Welcome Back
            <c:out value="${user.firstName}" />
          </h3>
          <p class="header_copy"> Calendar Plan</p>
        </div>
        <div class="calendar_plan">
          <div class="cl_plan">
            <div class="cl_title">Today</div>
            <div class="cl_copy">22nd April 2018</div>
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

      <!-- buttons are here with colors as strings -->
      <button class="tablink" onclick="openPage('Home', this, 'darkred')">Home</button>
      <button class="tablink" onclick="openPage('Send', this, 'darkolivegreen')" id="defaultOpen">Send</button>
      <button class="tablink" onclick="openPage('Contact', this, 'darkcyan')">Contact</button>
      <button class="tablink" onclick="openPage('About', this, 'orange')">About</button>

      <div id="Home" class="tabcontent">
        <h4>Here are your messages:</h4>
        <table class="table table-bordered">
          <thead>
            <tr>

              <th>Message</th>
              <th>From:</th>
            </tr>
          </thead>
          <tbody>
            <c:forEach items="${messages}" var="ms">
              <tr>
                <td>
                  <c:out value="${ ms.content }"></c:out>
                </td>
                <td>
                  <c:out value="${ ms.user.firstName } ${ms.user.lastName}"></c:out>
                </td>
              </tr>
            </c:forEach>
            <a href="/chats">Conversation</a>
          </tbody>
        </table>



      </div>
      <!-- send mgs to users in drop down menu -->
      <div id="Send" class="tabcontent">
        <p>Send some messages!</p>
        <form:form action="/sendmsg" method="POST" modelAttribute="message">
          <!-- hard coded sender id here -->
          <form:select path="receiverId">
            <form:option value="1">user 1</form:option>
            <form:option value="1">user 2</form:option>
          </form:select>
          <form:input type="hidden" path="user" value="${userId}" />
          <form:input type="text" path="content" />
          <form:button type="submit" class="btn btn-sm btn-success d-inline">Send</form:button>
        </form:form>

        
      </div>
      <div id="Contact" class="tabcontent">
      	<a href="/chats">
        	<h3>Conversations</h3>
        </a>
        <p>Get in touch, or swing by for a cup of coffee.</p>
        <div class="chat-popup" id="myForm">
          <!-- popup version -->
          <form action="/sendmsg" class="form-container">
            <h1>Chat</h1>

            <label for="msg"><b>Message</b></label>
            <textarea placeholder="Type message.." name="msg" required><textarea>
        
            <button type="submit" class="btn">Send</button>
            <button type="button" class="btn cancel" onclick="closeForm()">Close</button>
          </form>
        </div>
      </div>

      <div id="About" class="tabcontent">
        <h3>About</h3>
        <p>Who we are and what we do.</p>
      </div>

    </div>
  </div>
</body>

</html>