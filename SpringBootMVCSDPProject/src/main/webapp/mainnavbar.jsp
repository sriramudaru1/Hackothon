<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>JFSD - Student Support</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Link Bootstrap CSS for styling -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="style.css"/>

    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            padding: 0;
            margin: 0;
        }
        h2 {
        	font-size: 40px;
        	font-weight: 600;
        	background-image: linear-gradient(to right, #553c9a 15%, #ee4b2b);
            color: transparent;
            background-clip: text;
            -webkit-background-clip: text;
            text-align: center;
            margin-top: 20px;
        }
  
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
}
li {
  float: left;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}


nav {
  background-color: #333;
}

.nav-item {
  float: left;
}

.nav-item a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

.nav-item.active {
  background-color: #4CAF50;
}

    </style>
</head>
<body>

<h2>Student Performance and Analytics</h2>

<!-- Navbar -->
<nav>
	<ul>
		<li class="nav-item"><a href="/">Home</a></li>
    	<li class="nav-item"><a  href="studentreg">Student Registration</a></li>
    	<li class="nav-item"><a href="studentlogin">Student Login</a></li>
    	<li class="nav-item" style="float:right"><a href="adminlogin">Admin Login</a></li>
	</ul>
</nav>
<script>
//script.js
document.addEventListener('DOMContentLoaded',
    function () {
        const navItems = document
            .querySelectorAll('.nav-item');

        navItems.forEach(item => {
            item.addEventListener('click',
                function () {
                    navItems.forEach(navItem => navItem
                        .classList.remove('active'));
                    this.classList.add('active');
                });
        });
    });

</script>
<!-- Bootstrap and jQuery scripts for interactivity -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</body>
</html>
