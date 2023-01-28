<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>WalkinBook</title>
<link rel="stylesheet" href="BookingForm.css">
</head>
<body>

<div class="menu-bar">
	<div class="logo-menubar"><img src="images/logo.png" ></div>
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
		<div class="profile-picture"><img src="images/profilepicture.png"></div>
	</div>
</div>
<fieldset>
<form>
  <div class="container">
    <h1>RENTO CAR BOOKING FORM</h1>
    

    <label for="Name"><b>Name</b></label>
    <br>
    <input type="text" placeholder="Name" name="Name" id="Name" required> <br>
    
     <label for="NRIC"><b>NRIC</b></label>
    <br>
    <input type="text" placeholder="NRIC" name="NRIC" id="NRIC" required> <br>

    <label for="College"><b>College</b></label>
    <br>
    <input type="text" placeholder="College" name="College" id="College" required>
    <br>

    <label for="PhoneNo"><b>Phone No</b></label>
    <br>
    <input type="text" placeholder="PhoneNo" name="PhoneNo" id="PhoneNo" required>
  </div>
  <br>
  <button type="submit" class="submitbtn" >Submit</button>

</form>
</body>
</html>