<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Registration</title>


<link rel="stylesheet" href="assets/fonts/material-icon/css/material-design-iconic-font.min.css">
<link rel="stylesheet" href="alert/dist/sweetalert.css">
<link rel="stylesheet" href="assets/css/login.css">

<script>
function isNumber(evt){
	var num=evt.keyCode ? evt.keyCode : evt.which;
	if(num<48 || num>57){
		alert("Please Enter a valid Phone Number");
		evt.preventDefault();
		return false;'
	}
	return true;
}
</script>
</head>

<body>
<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">

	<div class="main">
		<!-- Sign up form -->
		<section class="signup">
			<div class="container">
				<div class="signup-content">
					<div class="signup-form">
						<h2 class="form-title">Sign up</h2>
						<form method="post" action="register" class="register-form"
							id="register-form">
							<div class="form-group">
								<label for="name"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="name" id="name" placeholder="Your Name" required="required"/>
							</div>
							<div class="form-group">
								<label for="email"><i class="zmdi zmdi-email"></i></label> <input
									type="email" name="email" id="email" placeholder="Your Email" required="required"/>
							</div>
							<div class="form-group">
								<label for="pass"><i class="zmdi zmdi-lock"></i></label> <input
									type="password" name="pass" id="pass" placeholder="Password" required="required"/>
							</div>
							<div class="form-group">
								<label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="password" name="re_pass" id="re_pass"
									placeholder="Repeat your password" required="required"/>
							</div>
							<div class="form-group">
								<label for="contact"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="text" name="contact" id="contact" placeholder="Contact no" onkeypress="isNumber(event);" required="required"/>
							</div>
							<div class="form-group">
								<input type="checkbox" name="agree-term" id="agree-term"
									class="agree-term" /> <label for="agree-term"
									class="label-agree-term"><span><span></span></span>I
									agree all statements in <a href="#" class="term-service">Terms
										of service</a></label>
							</div>
							<div class="form-group form-button">
								<input type="submit" name="signup" id="signup"
									class="form-submit" value="Register" />
							</div>
						</form>
					</div>
					<div class="signup-image">
						<figure>
							<img src="assets/images/R.png" alt="sing up image">
						</figure>
						<a href="login.jsp" class="signup-image-link">I am already
							member</a>
					</div>
				</div>
			</div>
		</section>


	</div>
	<!-- JS -->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="js/main.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>


	
<script type="text/javascript">
var status=document.getElementById("status").value;
if(status=="success"){
	swal("congrats","Account Created Succesfully","success");
}
if(status=="invalidName"){
	swal("Sorry","Please Enter Name","error");
}
if(status=="invalidEmail"){
	swal("Sorry","Please Enter Email","error");
}
if(status=="invalidUpwd"){
	swal("Sorry","Please Enter Password","error");
} 
if(status=="invalidUmobile"){
	swal("Sorry","Please Enter Valid Mobile Number","error");
}

if(status=="invalidUmobileLegth"){
	swal("Sorry","Please Enter Valid Mobile Number","error");
}
if(status=="invalidConfirmPassword"){
	swal("Sorry","Password Donot Match","error");
}

</script>


</body>

</html>