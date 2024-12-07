<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JFSD - Student Dashboard</title>
    
    <!-- Link to Bootstrap for better styling and responsiveness -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }
        .container {
            margin-top: 20px;
        }
        h2 {
            color: #007bff;
            margin-bottom: 30px;
        }
        .nav-links a {
            padding: 10px 20px;
            background-color: #007bff;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            margin: 0 10px;
        }
        .nav-links a:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

    <div class="container">
        <h2 align="center">Student Mental Wellbing Support</h2>

        <div class="text-center nav-links">
            <a href="studenthome">Home</a>
            <a href="studentprofile">Student Profile</a>
            <a href="updateprofile">Update Profile</a>
            <a href="studentlogin">Logout</a>
        </div>
    </div>

    <!-- Bootstrap and jQuery scripts for interactivity if needed -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    
</body>
</html>
