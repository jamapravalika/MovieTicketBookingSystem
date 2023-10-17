<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us</title>

	<link href="//fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,600;0,700;1,600&display=swap"
		rel="stylesheet">
<!-- <link rel="stylesheet" href="css/ContactForm.css"> -->
<link rel="stylesheet" href="assets/css/Header.css">

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css">
<style>

.container form {
    max-width: 500px;
    margin: 0 auto;
    padding: 20px;
    background-color: #f5f5f5; 
    border-radius: 10px;
}

.container h2 {
    font-size: 24px;
    color: red;
    margin-bottom: 20px;
}

.container input[type="text"],
.container input[type="email"],
.container input[type="tel"],
.container textarea {
    width: 100%;
    padding: 10px;
    margin: 5px 0;
    border: 1px solid #ccc;
    border-radius: 5px;
    outline: none;
}

form
{
background: white ;
display: flex;
justify-content: center;
position: absolute;
top: 50%;
left: 50%;
transform: translate(-50%,-50%);
flex-direction: row;
flex-direction: column;
padding: 1vw 3vw;
width: 49%;
max-width: 500px;
border-radius: 10px;
}
form h2
{
color:red;
font-weight: 800;
margin-bottom: 20px;
}
form input,form textarea
{
border: 0;
margin: 10px 0;
padding: 20px;
outline: none;
background: whitesmoke;
font-size: 16px;
}
form button{
    padding:15px ;
    background: red;
    color: whitesmoke;
    font-size: 18px;
    border: 0;
    outline:none;
    cursor: pointer;
    width: 150px;
    margin: 20px auto 0;
    border-radius: 30px;
}

}
</style>
</head>
<body>

	<!-- header -->
	<nav class="navbar navbar-expand-sm custom-navbar" style="background-color: maroon;">
  <div class="container-fluid">
    <a class="navbar-brand" href="javascript:void(0)"><i class="fa-solid fa-film"></i> MovieTicket</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#mynavbar">
      <span class="navbar-toggler-icon"></span>
    </button>
    <br>
    <div class="collapse navbar-collapse" id="mynavbar">
      <ul class="navbar-nav me-auto">
        <li class="nav-item">
          <a class="nav-link" href="Home.jsp"><i class="fas fa-home"></i> Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="Movies.jsp"><i class="fa-solid fa-video"></i> Movies</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="About.html"><i class="fas fa-book"></i> About</a>
      </li>
        <li class="nav-item">
          <a class="nav-link" href="ContactForm.jsp"><i class="fas fa-envelope"></i> Contact</a>
        </li>
        
      
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"><i class="fas fa-user"></i> Account</a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="#">Account</a></li>
            <li><a class="dropdown-item" href="#">History</a></li>
            <li><a class="dropdown-item" href="login.jsp">Logout</a></li>
          </ul>
        </li>
      </ul>
      <form class="d-flex">
        <input class="form-control me-2" type="text" placeholder="Search">
        <i class="fas fa-search"></i>
      </form>
    </div>
  </div>
</nav>
   
   

<!-- 					/search-right
					/search-right

					<div class="Login_SignUp" id="login"
						style="font-size: 2rem ; display: inline-block; position: relative;">
						<li class="nav-item">
						<a class="nav-link" href="login.jsp"><i class="fa fa-user-circle-o"></i></a>
						</li>
					</div>
				</div>
				
				
				toggle switch for light and dark theme
				<div class="mobile-position">
					<nav class="navigation">
						<div class="theme-switch-wrapper">
							<label class="theme-switch" for="checkbox">
								<input type="checkbox" id="checkbox">
								<div class="mode-container">
									<i class="gg-sun"></i>
									<i class="gg-moon"></i>
								</div>
							</label>
						</div>
					</nav>
				</div>
			</div>
		</nav>
	</header>
	/breadcrumbs
	<div class="w3l-breadcrumbs">
		<nav id="breadcrumbs" class="breadcrumbs">
			<div class="container page-wrapper">
				<a href="index.jsp">Home</a> » <span class="breadcrumb_last" aria-current="page">Contact</span>
			</div>
		</nav>
	</div> -->

    <div class="container" id="con"> 
        <form onsubmit="SendEmail(); reset(); return false;">
            <h2>CONTACT US</h2>
            <input type="text" id="name" placeholder="Your Name" required>
            <input type="email" id="email" placeholder="Email ID" required>
            <input type="text" id="phone" placeholder="Phone no." required>
            <textarea id="message" rows="4" placeholder="YOUR MESSAGE"></textarea>
            <button type="submit">SEND</button>
        </form>
    </div>
    <!--/theme-change-->
<script src="assets/js/theme-change.js"></script>
    <script src="https://smtpjs.com/v3/smtp.js"></script>
    <script>
        function reset() {
            document.getElementById('name').value = '';
            document.getElementById('email').value = '';
            document.getElementById('phone').value = '';
            document.getElementById('message').value = '';
        }

        function SendEmail() {
            Email.send({
                Host: "smtp.elasticemail.com",
                Username: "jamapravalika@gmail.com",
                Password: "ECEC2B38670C471A8A4A68ACE2421F1BABA5",
                To: "pravallikajama@gmail.com",
                From: "jamapravalika@gmail.com",
                Subject: "This is the subject",
                Body: "And this is the body"
            }).then(
                message => {
                    if (message === 'OK') {
                        alert('Email sent successfully');
                        reset();
                    } else {
                        alert('Email not sent. Please check your SMTP configuration.');
                    }
                }
            );
        }
    </script>
    <!-- disable body scroll which navbar is in active -->
<script>
	$(function () {
		$('.navbar-toggler').click(function () {
			$('body').toggleClass('noscroll');
		})
	});
</script>
<!-- disable body scroll which navbar is in active -->

<!--/MENU-JS-->
<script>
	$(window).on("scroll", function () {
		var scroll = $(window).scrollTop();

		if (scroll >= 80) {
			$("#site-header").addClass("nav-fixed");
		} else {
			$("#site-header").removeClass("nav-fixed");
		}
	});

	//Main navigation Active Class Add Remove
	$(".navbar-toggler").on("click", function () {
		$("header").toggleClass("active");
	});
	$(document).on("ready", function () {
		if ($(window).width() > 991) {
			$("header").removeClass("active");
		}
		$(window).on("resize", function () {
			if ($(window).width() > 991) {
				$("header").removeClass("active");
			}
		});
	});
</script>
<script src="assets/js/jquery-3.3.1.min.js"></script>
<!-- stats -->

<script src="assets/js/jquery.waypoints.min.js"></script>
<script src="assets/js/jquery.countup.js"></script>
<script type="text/javascript" src='assets/js/swiper.min.js'></script>
<script src="assets/js/bootstrap.min.js"></script>
</body>
</html>
    