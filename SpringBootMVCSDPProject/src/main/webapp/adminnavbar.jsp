<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Home</title>

    <!-- Link to Bootstrap CSS for better styling and responsiveness -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 20px;
        }
        h2 {
            color: #007bff;
            margin-bottom: 30px;
        }
        .container {
            background-color: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            max-width: 800px;
            margin: auto;
        }
        .btn {
            margin: 10px 0;
            width: 100%;
        }
    </style>
</head>
<body>

<div class="container">
    <h2 class="text-center">Student Performance and Analytics</h2><br/>
    
    <div class="text-center">
        <a href="adminhome" class="btn btn-primary">Home</a>&nbsp;&nbsp;<br>
        <a href="viewallstudents" class="btn btn-secondary">View All Students</a>&nbsp;&nbsp;<br>
        <a href="deletestudent" class="btn btn-danger">Delete Student</a>&nbsp;&nbsp;<br>
        <a href="viewstudentbyid" class="btn btn-danger">View Student By ID</a>&nbsp;&nbsp;<br>
        <a href="adminlogin" class="btn btn-danger">Logout</a>&nbsp;&nbsp;
    </div>
</div>

<!-- Bootstrap and jQuery scripts for interactivity if needed -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
