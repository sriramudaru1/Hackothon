<%@page import="com.klef.jfsd.springboot.model.Student" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    Student s = (Student) session.getAttribute("student");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Home</title>
    <!-- Link to Bootstrap CSS for styling -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 20px;
        }
        .container {
            max-width: 800px;
            background-color: #fff;
            padding: 30px;
            margin: auto;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }
        h3 {
            color: #007bff;
            text-align: center;
            margin-bottom: 20px;
        }
        .profile-info {
            margin-bottom: 20px;
        }
        .profile-info label {
            font-weight: 600;
        }
        .profile-info p {
            font-size: 16px;
            color: #555;
        }
    </style>
</head>
<body>

<%@include file="studentnavbar.jsp" %>

<div class="container">
    <h3>My Profile</h3>
    <div class="profile-info">
        <label>ID: </label>
        <p><%= s.getId() %></p>
    </div>
    <div class="profile-info">
        <label>Name: </label>
        <p><%= s.getName() %></p>
    </div>
    <div class="profile-info">
        <label>Gender: </label>
        <p><%= s.getGender() %></p>
    </div>
    <div class="profile-info">
        <label>Date of Birth: </label>
        <p><%= s.getDateofbirth() %></p>
    </div>
    <div class="profile-info">
        <label>Email: </label>
        <p><%= s.getEmail() %></p>
    </div>
    <div class="profile-info">
        <label>Location: </label>
        <p><%= s.getLocation() %></p>
    </div>
    <div class="profile-info">
        <label>Contact: </label>
        <p><%= s.getContact() %></p>
    </div>
</div>

<!-- Bootstrap and jQuery scripts for interactivity if needed -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
