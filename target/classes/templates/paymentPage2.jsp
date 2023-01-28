<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>PaymentForm</title>
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

	<div class="form">
		<h1>Your Payment Details</h1>

		<form action="/action_page.php">
			<label for="cname">CARD HOLDER NAME</label><br> <input
				type="text" id="fname" name="fname" value="Victor Arenas"><br>
			<br>
			<br> <label for="email">Email</label><br> <input
				type="text" id="fname" name="fname" value="someone@example.com"><br>
			<br>
			<br> <label for="cnum">CARD NUMBER</label><br> <input
				type="text" id="fname" name="fname" value="John"><br>
			<br> <label for="expdate">EXPIRATION DATE</label><br> <select
				name="month" id="month">
				<option value="Jan">January</option>
				<option value="Feb">February</option>
				<option value="March">March</option>
				<option value="Apr">April</option>
				<option value="May">May</option>
				<option value="Jun">June</option>
				<option value="July">July</option>
				<option value="Aug">August</option>
				<option value="Sep">September</option>
				<option value="Oct">October</option>
				<option value="Dec">December</option>
			</select> <select name="month" id="month">
				<option value="Jan">2022</option>
				<option value="Feb">2023</option>
				<option value="March">2024</option>
				<option value="Apr">2025</option>
				<option value="May">2026</option>
				<option value="Jun">2027</option>
				<option value="July">2028</option>
				<option value="Aug">2029</option>
				<option value="Sep">2030</option>
				<option value="Oct">2031</option>
				<option value="Dec">2032</option>
			</select><br>
			<br> <label for="cvc">CVC</label><br> <input type="text"
				id="fname" name="fname" value="xxx"><br>
			<br>
			<br>

			<button>PAY NOW</button>
	</div>


	<div class="side-bar">

		<br> <br> <br> <br> <br> <br> <br>
		<br> <br> <br> <br>
		<h2>Booking Details</h2>
		<br>

		<h3>Car Type and name</h3>
		<br> <br>

		<h3>Duration</h3>
		<br> <br>

		<h3>total cost</h3>

	</div>


	<style>
select {
	border: none;
	border-bottom: 4px solid white;
	background-color: #B8CAD1;
}

button {
	background-color: #243474;
	border-radius: 5px;
	border: none;
	color: white;
	padding: 15px 32px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
}

input[type=text] {
	border: none;
	border-bottom: 4px solid white;
	background-color: #B8CAD1;
	width: 400px;
}

.form {
	position: fixed;
	right: 35%;
}

.side-bar {
	background-color: #031E49;
	margin-top: 1px;
	padding: 0px;
	width: 25%;
	height: 100%;
	color: white;
	border-top-right-radius: 200px;
	border-bottom-right-radius: 200px;
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