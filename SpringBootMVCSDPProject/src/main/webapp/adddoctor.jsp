<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Doctor</title>

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
    <h3>Add Doctor</h3>
    <form method="post" action="insertdoctor" enctype="multipart/form-data">
        
        <!-- Name Field -->
        <div class="form-group">
            <label for="dname">Doctor Name</label>
            <input type="text" id="dname" class="form-control" name="dname" required>
        </div>

        <!-- Gender Selection -->
        <div class="form-group">
            <label>Select Gender</label><br>
            <div class="form-check form-check-inline">
                <input type="radio" id="genderMale" name="dgender" class="form-check-input" value="Male" required>
                <label class="form-check-label" for="genderMale">Male</label>
            </div>
            <div class="form-check form-check-inline">
                <input type="radio" id="genderFemale" name="dgender" class="form-check-input" value="Female" required>
                <label class="form-check-label" for="genderFemale">Female</label>
            </div>
            <div class="form-check form-check-inline">
                <input type="radio" id="genderOther" name="dgender" class="form-check-input" value="Other" required>
                <label class="form-check-label" for="genderOther">Other</label>
            </div>
        </div>

        <!-- Email Field -->
        <div class="form-group">
            <label for="demail">Enter Email Id</label>
            <input type="email" id="demail" name="demail" class="form-control" required>
        </div>

        <!-- Password Field -->
        <div class="form-group">
            <label for="spwd">Doctor Cost</label>
            <input type="number" id="dcost" name="dcost" class="form-control" required>
        </div>

        <!-- About Doctor -->
        <div class="form-group">
            <label for="dabout">About Doctor</label>
            <textarea name="dabout" required></textarea>
        </div>

        <!-- Doctor image -->
        <div class="form-group">
            <label for="dimage">Doctor Image</label>
            <input type="file" id="dimage" name="dimage" class="form-control" required>
        </div>

        <!-- Submit and Reset Buttons -->
        <div class="form-group text-center">
            <input type="submit" value="Add" class="btn btn-success">
            <input type="reset" value="Clear" class="btn btn-secondary">
        </div>

    </form>
</div>

</body>
</html>