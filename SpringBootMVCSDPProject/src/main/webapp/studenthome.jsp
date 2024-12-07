<%@page import="com.klef.jfsd.springboot.model.Student" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
Student s = (Student)session.getAttribute("student");
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Home</title>

    <!-- Link to Bootstrap CSS for better styling and responsiveness -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }
        .container {
            margin-top: 50px;
            background-color: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            max-width: 500px;
            margin: auto;
        }
        h3 {
            text-align: center;
            color: #007bff;
        }
        h4 {
            color: #333;
            text-align: center;
        }
        .btn-home {
            width: 100%;
            margin-top: 20px;
        }
    </style>
</head>
<body>

<%@ include file = "studentnavbar.jsp" %>

<div class="container">
    <h3>Welcome, <%=s.getName() %>!</h3>
    <h4>Here's your student dashboard</h4>

    <p>Manage your profile, appointments, and more.</p>

    <!-- You can add more functionality like links to the profile, therapy sessions, etc. -->
    <a href="studentprofile" class="btn btn-primary btn-home">View Profile</a><br><br>
    <a href="#" class="btn btn-success btn-home">Schedule an Appointment</a><br><br>
    <a href="${pageContext.request.contextPath}/book-appointment" class="btn btn-primary">Book Appointment</a><br><br>
    

    
</div>

<!-- Bootstrap and jQuery scripts for interactivity if needed -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
