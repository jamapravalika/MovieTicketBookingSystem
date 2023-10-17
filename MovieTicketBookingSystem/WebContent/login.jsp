<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Login</title>

<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">

<link rel="stylesheet" href="assets/css/login.css">
<link rel="stylesheet" href="alert/dist/sweetalert.css">
</head>
<body>
<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">
	<div class="main">
		<section class="sign-in">
			<div class="container">
				<div class="signin-content">
					<div class="signin-image">
						<figure>
							<img src="assets/images/cinema-clipart-transparent-background-7.png" alt="sing up image">
						</figure>
						<a href="registration.jsp" class="signup-image-link">Create an
							account</a>
					</div>
					<div class="signin-form">
						<h2 class="form-title">Sign in</h2>
						<form method="post" action="login" class="register-form"
							id="login-form">
							
							<div class="form-group">
								<label for="username"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="username" id="username"
									placeholder="Your Name" />
							</div>
							<div class="form-group">
								<label for="password"><i class="zmdi zmdi-lock"></i></label> <input
									type="password" name="password" id="password"
									placeholder="Password" />
							</div>
							<div class="form-group">
								<a href="forgotPassword.jsp">Forgot Password</a>
							</div>
							<div class="form-group form-button">
								<input type="submit" name="signin" id="signin"
									class="form-submit" value="Log in" />
							</div>
						</form>
						<div class="social-login">
							<span class="social-label">Or login with</span>
							<ul class="socials">
								<li><a href="#"><i class="display-flex-center zmdi zmdi-facebook"></i></a></li>
								<li><a href="#"><i class="display-flex-center zmdi zmdi-twitter"></i></a></li>
								<li><a href="#"><i class="display-flex-center zmdi zmdi-google"></i></a></li>
							</ul>
						</div>
						
					</div>
				</div>
			</div>
		</section>
	</div>
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
	
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	
	<script type="text/javascript">
		var status=document.getElementById("status").value;
		if(status == "failed"){
			swal("Sorry","Wrong username and password","error");
		}
		if(status == "invalidEmail"){
			swal("Sorry","Please Enter Username","error");
		}
		if(status == "invalidupwd"){
			swal("Sorry","Please Enter Password","error");
		}
		if(status == "resetSuccess"){
			swal("Congrats","Password set successufully","success");
		}
		if(status == "resetFailed"){
			swal("Sorry","Password Reset Failed","error");
		}
	</script>
</body>
</html>