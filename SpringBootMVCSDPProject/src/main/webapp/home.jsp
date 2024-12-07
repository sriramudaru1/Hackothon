<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Home</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Link Bootstrap CSS for styling -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            padding: 0;
            margin: 0;
        }
        .container {
            max-width: 12
            00px;
            margin: auto;
            padding: 20px;
            text-align: center;
        }
        h2{
        	font-size: 40px;
        	font-weight: 600;
        	background-image: linear-gradient(to right, #553c9a 15%, #ee4b2b);
            color: transparent;
            background-clip: text;
            -webkit-background-clip: text;
            text-align: center;
            margin-top: 20px;
        }
        h1 {
            font-size: 40px;
        	font-weight: 600;
        	background-image: linear-gradient(to right, #553c9a 15%, #ee4b2b);
            color: transparent;
            background-clip: text;
            -webkit-background-clip: text;
            text-align: center;
            margin-top: 20px;
        }
        .content {
            padding: 20px;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin-top: 20px;
        }
        .section-title {
        font-size: 40px;
        	font-weight: 600;
        	background-image: linear-gradient(to right, #553c9a 15%, #ee4b2b);
            color: transparent;
            background-clip: text;
            -webkit-background-clip: text;
            text-align: center;
            margin-top: 20px;
            
        }
        <!-- HTML !-->
<button class="button-33" role="button">Button 33</button>

/* CSS */
.button-33 {
  background-color: #c2fbd7;
  border-radius: 100px;
  box-shadow: rgba(44, 187, 99, .2) 0 -25px 18px -14px inset,rgba(44, 187, 99, .15) 0 1px 2px,rgba(44, 187, 99, .15) 0 2px 4px,rgba(44, 187, 99, .15) 0 4px 8px,rgba(44, 187, 99, .15) 0 8px 16px,rgba(44, 187, 99, .15) 0 16px 32px;
  color: green;
  cursor: pointer;
  display: inline-block;
  font-family: CerebriSans-Regular,-apple-system,system-ui,Roboto,sans-serif;
  padding: 7px 20px;
  text-align: center;
  text-decoration: none;
  transition: all 250ms;
  border: 0;
  font-size: 16px;
  user-select: none;
  -webkit-user-select: none;
  touch-action: manipulation;
}

.button-33:hover {
  box-shadow: rgba(44,187,99,.35) 0 -25px 18px -14px inset,rgba(44,187,99,.25) 0 1px 2px,rgba(44,187,99,.25) 0 2px 4px,rgba(44,187,99,.25) 0 4px 8px,rgba(44,187,99,.25) 0 8px 16px,rgba(44,187,99,.25) 0 16px 32px;
  transform: scale(1.05) rotate(-1deg);
}
        .btn-primary {
            margin-top: 20px;
        }
/* Container for both roles (Student and Doctor) */
.role-container {
    display: flex;
    justify-content: space-between; /* Distribute space evenly between sections */
    gap: 20px;
    flex-wrap: wrap; /* Allow the sections to wrap if the screen is too small */
}

/* Style for each section (Appointments or Manage Appointments) */
.role-section {
    flex: 1 1 48%; /* Flex-grow: 1, Flex-shrink: 1, Flex-basis: 48% */
    box-sizing: border-box;
    min-width: 300px; /* Ensure it doesn't get too narrow */
    background-color: #f9f9f9; /* Optional: Add background color */
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Optional: Add some shadow */
}

/* Optional: Style tables for better presentation */
.table {
    width: 100%;
    margin-top: 20px;
    border-collapse: collapse;
}

.table th, .table td {
    padding: 10px;
    text-align: left;
    border: 1px solid #ddd;
}

/* Responsive Design for smaller screens */
@media (max-width: 768px) {
    .role-section {
        flex-basis: 100%; /* Stacks the sections vertically on smaller screens */
    }
}

        
    </style>
</head>
<body>

<!-- Include the main navbar -->
<%@ include file="mainnavbar.jsp" %>

<div class="container">
    <h1>Welcome to Our Platform</h1>
    <div class="content">
    <!-- Container to hold both sections -->
    <div class="role-container">
        <!-- For Students -->
        <c:if test="${userRole == 'student'}">
            <div class="role-section">
                <h2 class="section-title">Analysis of students</h2>

                <a href="book-appointment.jsp" class="btn btn-primary">Statics</a>

                <!-- List of available appointments (This could be dynamic from database) -->
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Student name</th>
                            <th>Marks</th>
                            <th>Status</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="appointment" items="${appointments}">
                            <tr>
                                <td>${appointment.doctor.name}</td>
                                <td>${appointment.appointmentTime}</td>
                                <td>${appointment.status}</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </c:if>

        <!-- For Doctors -->
        <c:if test="${userRole == 'doctor'}">
            <div class="role-section">
                <h2 class="section-title">Student Performance</h2>
                <a href="doctor-appointments.jsp" class="btn btn-primary">Student performances</a>

                <!-- List of upcoming appointments for the doctor -->
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Student Name</th>
                            <th>Marks</th>
                            <th>Status</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="appointment" items="${appointments}">
                            <tr>
                                <td>${appointment.student.name}</td>
                                <td>${appointment.appointmentTime}</td>
                                <td>${appointment.status}</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </c:if>
    </div>
</div>

</div>

<!-- Link Bootstrap and jQuery JS for any interactivity if needed -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
