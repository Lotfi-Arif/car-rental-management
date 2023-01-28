<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>RentoCar</title>
<link rel="stylesheet" type="text/css" href="Registration.css">
<link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
</head>
<body>
<div class="left-design">
	<div class="logo-picture"><img src="logocar.png" ></div>
	<img src="cars.png" class="cars-picture">
</div>
<div class="right-design">
	<div class="sign-in-form">
		<h3>Sign Up</h3>
		<p>If you have an account,<br>You can <a href="registerPage.jsp">Login here!</a></p><br>
		<form method="post" action="indexController.jsp">
			<label for="email" class="function"><strong>Email</strong></label><br>
			<input class="input-box" type="text" name="email" placeholder="Enter your email address"  required><br><br>
			<label for="username" class="function"><strong>username</strong></label><br>
			<input class="input-box" type="text" name="username" placeholder="Enter your username"  required><br><br>
			<label for="password" class="function"><strong>Password</strong></label><br>
			<input class="input-box" type="password" name="password" placeholder="Enter your password"  required><br><br>
            <label for="password" class="function"><strong>Retype Password</strong></label><br>
			<input class="input-box" type="password" name="Re-typepassword" placeholder="Re-type your password"  required><br><br>

			
			<div class="function-space">
				<div>
					<input type="checkbox" name="remember">
					<label for="remember" class="function">Remember me</label>
				</div>d
					<a href="forgotPassword.jsp" class="function">Login</a>
			</div>
			<br><br>
			<button type="submit">Signup</button>
		</form>
	</div>
</div>
</body>
</html>