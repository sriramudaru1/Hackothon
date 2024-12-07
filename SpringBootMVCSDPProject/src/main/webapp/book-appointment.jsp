<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="${pageContext.request.contextPath}/submit-appointment" method="POST">
    <label for="doctorId">Select Doctor:</label>
    <select name="doctorId" id="doctorId">
        <c:forEach var="doctor" items="${doctors}">
            <option value="${doctor.id}">${doctor.name}</option>
        </c:forEach>
    </select>

    <label for="appointmentTime">Appointment Time:</label>
    <input type="datetime-local" id="appointmentTime" name="appointmentTime">

    <input type="submit" value="Book Appointment">
</form>



</body>
</html>