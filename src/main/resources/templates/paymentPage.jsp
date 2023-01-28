<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>PaymentPage1</title>
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

	<h1>Choose your payment method</h1>

<p class="p p1"></p>
<p class="p p2"></p>
<p class="p p3"></p>
<p class="p p4"></p>
	<button class="button button1">
		<img src="image/COD1.png" style="width: 50px; height: 50px;">Cash on delivery</button>
	<button class="button button2"><img src="image/Credit Card.png"style="width: 50px;height: 50px;">Credit Card</button>
	<button class="button button3"><img src="image/debit card.png"style="width: 50px;height: 50px;">Debit Card</button>
	<button class="button button4"><img src="image/Online Payment.png"style="width: 50px;height: 50px;">Online Payment</button>
	
	
	<style>
	
	.p1{
	background-color: white;
	width: 250px;
height: 120px;
	position: fixed;
	top: 22%;
	left: 475px;
		border-radius: 15px;
	
	}
	
	.p2{
	background-color: white;
	width: 220px;
height: 110px;
	position: fixed;
	top: 22%;
	right: 475px;
		border-radius: 15px;
	
	}
	
	.p3{
	background-color: white;
	width: 220px;
height: 110px;
	position: fixed;
	bottom: 22%;
	left: 475px;
		border-radius: 15px;
	
	}
	
	.p4{
	background-color: white;
	width: 250px;
height: 120px;
	position: fixed;
	bottom: 22%;
	right: 475px;
		border-radius: 15px;
	
	}
	
.button {
	border: none;
	border-radius: 15px;
	color: white;
	padding: 15px 32px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 4px 2px;
	cursor: pointer;
	color: white;
	
}

.button1 {
	background-color: black;
	position: fixed;
	top: 25%;
	left: 25%;
} /* Green */
.button2 {
	background-color: black;
	position: fixed;
	top: 25%;
	right: 25%;
} /* Blue */
.button3 {
	background-color: black;
	position: fixed;
	bottom: 25%;
	left: 25%;
} /* Blue */
.button4 {
	background-color: black;
	position: fixed;
	bottom: 25%;
	right: 25%;
} /* Blue */
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