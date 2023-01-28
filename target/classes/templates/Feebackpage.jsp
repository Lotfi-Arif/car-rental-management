<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FeedbackForm</title>
</head>
<body>
	<div class="menu-bar">
		<div class="logo-menubar">
			<img src="image/logo.png">
		</div>
		<div class="navigation">
			<table>
				<tr>
					<td class="nav-items"><a href="feedback.jsp">Home</a></td>
					<td>|</td>
					<td class="nav-items"><a href="aboutus.jsp">About Us</a></td>
					<td>|</td>
					<td class="nav-items"><a href="booking.jsp">Book A Car</a></td>
				</tr>
			</table>
		</div>
		<div class="profile">
			<p>Fakhri Anuar</p>
			<div class="profile-picture">
				<img src="image/profilepicture.png">
			</div>
		</div>
	</div>

	<div class="rectangle">

		<div class="box1">
			<div class="line1"></div>
			<img alt="profile" src="image/profilepicture.png"><br> <h3>Jamaluddin Hassan</h3>

		</div>

		<div class="box2">
			<div class="line1"></div>

			<img alt="" src=""> 

		</div>

		<div class="box3">
			<div class="line1"></div>

			<img alt="" src=""> 

		</div>


	</div>


	<style>
.line1 {
	border-left: 5px solid black;
	height: 100px;
	position: fixed;
	left: 500px
}

.line2 {
	border-left: 5px solid black;
	height: 100px;
	position: fixed;
	left: 500px
}

.line3 {
	border-left: 5px solid black;
	height: 100px;
	position: fixed;
	left: 500px
}

.box1 {
	margin: 5%;
	border: 5px solid black;
	background-color: white;
	height: 100px;
}

.box2 {
	margin: 5%;
	border: 5px solid black;
	background-color: white;
	height: 100px;
}

.box3 {
	margin: 5%;
	border: 5px solid black;
	background-color: white;
	height: 100px;
}

.rectangle {
	border: 5px solid black;
	margin: 5% 5% 5%;
}

h1 {
	text-align: center;
	font-family: 'Arapey';
	font-style: normal;
	font-weight: 400;
	font-size: 64px;
	line-height: 70px;
	color: #2D4046;
}

body {
	margin: 0px;
	width: 100%;
	height: 100%;
	position: fixed;
	font-family: 'Poppins', sans-serif;
	background-color: #B8CAD1;
}

.menu-bar {
	background-color: #031E49;
	margin: 0px;
	padding: 0px;
	width: 100%;
	height: 7%;
	display: flex;
	justify-content: space-between;
	align-items: center;
	color: white;
}

.logo-menubar {
	display: flex;
	margin: 10px;
	height: 50px;
}

.nav-items, .nav-items a {
	width: 200px;
	text-align: center;
	color: white;
	text-decoration: none;
}

.nav-items a:hover {
	text-shadow: 0 0 10px red;
	font-size: 1.05em;
	transition: font-size 0.2s ease-in-out;
	transition: text-shadow 0.2s ease-in-out;
}

.profile {
	display: flex;
	height: 50px;
	margin: 10px;
}

.profile-picture {
	margin-left: 10px;
	background-color: white;
	border-radius:  50px;
}
</style>
</body>
</html>