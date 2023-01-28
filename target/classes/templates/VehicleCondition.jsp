<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
	
	<div class="container">
    <img src="image/myvi.jpg" alt="image" class="image">
    <p class="text">Perodua Myvi 2022</p>
</div>
	<div class="report"><h2>Car Condition Report</h2>
	</div>

    <div class="grid-container">
      <div>
        <input type="checkbox" id="option-1" name="option-1" value="Option 1">
        <label class="checkbox-label" for="option-1">Engine</label>
      </div>
      <div>
        <input type="checkbox" id="option-2" name="option-2" value="Option 2">
        <label class="checkbox-label" for="option-2">Coolant</label>
      </div>
      <div>
        <input type="checkbox" id="option-3" name="option-3" value="Option 3">
        <label class="checkbox-label" for="option-3">Signal Lights</label>
      </div>
      <div>
        <input type="checkbox" id="option-4" name="option-4" value="Option 4">
        <label class="checkbox-label" for="option-4">Tyres</label>
      </div>
      <div>
        <input type="checkbox" id="option-5" name="option-5" value="Option 5">
        <label class="checkbox-label" for="option-5">Side Mirrors</label>
      </div>
      <div>
        <input type="checkbox" id="option-6" name="option-6" value="Option 6">
        <label class="checkbox-label" for="option-6">Wiper</label>
      </div>
      <div>
        <input type="checkbox" id="option-7" name="option-7" value="Option 7">
        <label class="checkbox-label" for="option-7">Car Doors</label>
      </div>
      <div>
        <input type="checkbox" id="option-8" name="option-8" value="Option 8">
        <label class="checkbox-label" for="option-8">car Trunks</label>
      </div>
      <div>
        <input type="checkbox" id="option-9" name="option-9" value="Option 9">
        <label class="checkbox-label" for="option-9">Windshield</label>
      </div>
      <div>
        <input type="checkbox" id="option-10" name="option-10" value="Option 10">
        <label class="checkbox-label" for="option-10">Stop Light</label>
      </div>
      <div>
        <input type="checkbox" id="option-11" name="option-11" value="Option 11">
        <label class="checkbox-label" for="option-11">Air Conditioner</label>
      </div>
      <div>
        <input type="checkbox" id="option-12" name="option-12" value="Option 12">
        <label class="checkbox-label" for="option-12">Dashboard</label>
      </div>
      
      
      
	
	<style>
	.report{
	text-align: center;
	}
	
	.container {
    display: flex; /* Use flexbox layout */
    align-items: center; /* Center the items vertically */
    margin-left: 45%;    
    }

.image {
    width: 100px; /* Set the width of the image */
    height: 100px; /* Set the height of the image */
    margin-right: 10px; /* Add some margin to the right of the image */
    border-radius: 15px;
}

.text {
    font-size: 20px; /* Set the font size of the text */
}
	
	
	.report{
	text-align: center;
	}
	
	.carname {
	background-color: white;
	text-align: center;
	border-radius: 15px;
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
	border-radius: �50px;
}



/* Set the grid layout */
      .grid-container {
        display: grid;
        grid-template-columns: 1fr 1fr 1fr;
        grid-template-rows: repeat(4, 1fr);
        grid-column-gap: 10px;
        grid-row-gap: 10px;
        padding: 10px;
        background-color: white;
      }

      /* Style the checkboxes */
      input[type="checkbox"] {
        display: none;
      }

      /* Style the labels for the checkboxes */
      .checkbox-label {
        display: block;
        padding: 5px;
        border: 1px solid gray;
        border-radius: 5px;
        cursor: pointer;
      }

      /* Style the checked checkboxes */
      input[type="checkbox"]:checked + .checkbox-label {
        background-color: gray;
        color: white;
      }
	</style>
</body>
</html>