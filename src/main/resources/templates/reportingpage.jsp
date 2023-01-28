
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Profile Page</title>
<link rel="stylesheet" href="profileStyle.css">
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

	<h1 style="text-align: center">performance report</h1>

	<div class=content>
		<div class="container">



			<div class=rightbox>
				<div class="rightboxcontent">
					<div class=address>

						<div class="line"></div>
						<div class=addressContent>


							<table class="addressTab" width=100%>
								<tr>
									<td colspan="2" width="90%">
										<h3>Daily Sales</h3>
									</td>
									<td colspan="1" align="right"></td>
								</tr>

								<tr>
									<td colspan="3" style="padding: 15px 15px 15px 0px"><h3>RM
											0.00</h3></td>
								</tr>

								<tr>
									<td colspan="3" style="padding: 15px 15px 15px 0px">New
										Customer :</td>

								</tr>

								<tr>
									<td colspan="3" style="padding: 15px 15px 15px 0px">Active
										Customer :</td>
								</tr>

								<tr>
									<td colspan="1" width=33% style="padding: 15px 15px 15px 0px">
										VS 00:00-22:00</td>
								</tr>
								<tr>
									<td>Yesterday</td>
							</table>


						</div>
					</div>

					<div class=payment>
						<div class="line"></div>
						<div class=paymentContent>

							<table class="addressTab" width=100%>
								<tr>
									<td colspan="2" width="90%">
										<h3>Monthly Report</h3>
									</td>
									<td colspan="1" align="right"></td>
								</tr>

								<tr>
									<td colspan="3" style="padding: 15px 15px 15px 0px"><h3>RM
											0.00</h3></td>
								</tr>

								<tr>
									<td colspan="3" style="padding: 15px 15px 15px 0px">New
										Customer :</td>

								</tr>

								<tr>
									<td colspan="3" style="padding: 15px 15px 15px 0px">Active
										Customer :</td>
								</tr>

							</table>


						</div>
					</div>
				</div>
			</div>
		</div>

		<div class=leftbox>
			<div class=profile2>
				<div class=profileContent>
					<form id="custProfile" action="updateProfile.html" method="get">
						<table class="profileTab" width="100%">

							<tr>
								<td style="text-align: center" colspan="3">
									<h1>Employee of the Month</h1> <img
									src="image/profile2.png" width="200" height="200"
									alt="profileImage" />
								</td>
							</tr>

							<tr>
								<td style="text-align: center" colspan="3">
									<h3>jamaluddin Hassan</h3>
								</td>
							</tr>

							<tr>
								<td colspan="2" width="90%">
									<h3>Achievements :</h3>
								</td>
						</table>
					</form>

				</div>


			</div>
		</div>
	</div>

	<style>
@charset "ISO-8859-1";

body {
	margin: 0px;
	width: 100%;
	height: 100%;
	position: fixed;
	font-family: 'Poppins', sans-serif;
	background-color: #b8cad1;
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
	border-radius: 50px;
}

.content {
	display: flex;
	justify-content: center
}

.container {
	display: flex;
	flex-direction: row;
	justify-content: space-evenly;
	align-items: center;
	width: 30%;
	height: 700px;
}

.profile2 {
	background-color: whitesmoke;
	width: 500px;
	display: flex;
	margin-top: 90px;
	flex-direction: column;
	margin-bottom: 20px;
	border-radius: 2em 2em 2em 2em;
	height: 650px;
}

.profileContent {
	padding: 30px 30px 30px 30px;
}

.address {
	background-color: whitesmoke;
	width: 500px;
	display: flex;
	justify-content: center;
	margin-top: 90px;
	border-radius: 2em 2em 2em 2em;
}

.addressContent {
	padding: 0px 30px 30px 30px;
	width: 100%;
}

.payment {
	background-color: whitesmoke;
	width: 500px;
	display: flex;
	justify-content: center;
	margin-top: 30px;
	margin-bottom: 20px;
	border-radius: 2em 2em 2em 2em;
}

.paymentContent {
	padding: 0px 30px 50px 30px;
	width: 100%;
}

.rightbox {
	margin-top: 0px;
	width: 500px;
	height: 100%;
}

.rightboxcontent {
	height: 100%;
	display: flex;
	flex-direction: column;
}

.button {
	border-radius: 0.5em;
	background-color: #cfd9dd;
	border-color: #cfd9dd;
	padding: 3px 6px;
	cursor: pointer;
}

input[type=text] {
	border: none;
	border-bottom: 1px solid #cfd9dd;
	width: 80%;
	transition: 0.05s;
	outline: none;
}

input[type=text]:focus {
	border-bottom: 1px solid #cfd9dd;
}

input[type=date] {
	border: none;
	border-bottom: 1px solid #cfd9dd;
	width: 80%;
	transition: 0.05s;
	outline: none;
}

.line {
	width: 500px;
	height: 0px;
	border-top: 1px solid #b8cad1;
	position: absolute;
	margin-top: 65px;
}
</style>
</body>
</html>