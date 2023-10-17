<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
    <link href="//fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,600;0,700;1,600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  
  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css">
  <link rel="stylesheet" href="assets/css/movies.css">
  <link rel="stylesheet" href="assets/css/Header.css">
    <title>Movies</title>
</head>
<body>
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
   

    <section class="w3l-grids">
        <div class="headerhny-title">
            <h3 class="hny-title">Popular Movies</h3>
        </div>
		<div class="grids-main py-4">
			<div class="container py-lg-4">
				
				<div class="owl-four owl-carousel owl-theme">
					<div class="item vhny-grid">
						<div class="box16">
							<a href="#">
								<figure>
									<img class="img-fluid" src="assets/images/banner1.jpg" alt="">
								</figure>
								<div class="box-content">
									<h3 class="title">Jawan</h3>
									<h4>
										<span class="post"><span class="fa fa-clock-o">
										</span> 1 Hr 4min </span> <span class="post fa fa-heart text-right"></span>
									</h4>
								</div> <span class="fa fa-play video-icon" aria-hidden="true"></span>
							</a>
						</div>
						<div class="box16 mt-4">
							<a href="#">
								<figure>
									<img class="img-fluid" src="assets/images/banner2.jpg" alt="">
								</figure>
								<div class="box-content">
									<h3 class="title">Miss Shetty Mr Polishetty</h3>
									<h4>
										<span class="post"><span class="fa fa-clock-o">
										</span> 1 Hr 4min </span> <span class="post fa fa-heart text-right"></span>
									</h4>
								</div> <span class="fa fa-play video-icon" aria-hidden="true"></span>
							</a>
						</div>
					</div>
					<div class="item vhny-grid">
						<div class="box16">
							<a href="#">
								<figure>
									<img class="img-fluid" src="assets/images/banner3.jpeg" alt="">
								</figure>
								<div class="box-content">
									<h3 class="title">Kushi</h3>
									<h4>
										<span class="post"><span class="fa fa-clock-o">
										</span> 1 Hr 4min </span> <span class="post fa fa-heart text-right"></span>
									</h4>
								</div> <span class="fa fa-play video-icon" aria-hidden="true"></span>
							</a>
						</div>
						<div class="box16 mt-4">
							<a href="#">
								<figure>
									<img class="img-fluid" src="assets\images\paw2.jpeg" alt="">
								</figure>
								<div class="box-content">
									<h3 class="title">Paw Patrol: The Mighty Movie</h3>
									<h4>
										<span class="post"><span class="fa fa-clock-o">
										</span> 1 Hr 4min </span> <span class="post fa fa-heart text-right"></span>
									</h4>
								</div> <span class="fa fa-play video-icon" aria-hidden="true"></span>
							</a>
						</div>
					</div>
					<div class="item vhny-grid">
						<div class="box16">
							<a href="#">
								<figure>
									<img class="img-fluid" src="assets\images\barbieposter.webp"
										alt="">

								</figure>
								<div class="box-content">
									<h3 class="title">Barbie</h3>
									<h4>
										<span class="post"><span class="fa fa-clock-o">
										</span> 1 Hr 4min </span> <span class="post fa fa-heart text-right"></span>
									</h4>
								</div> <span class="fa fa-play video-icon" aria-hidden="true"></span>
							</a>
						</div>
						<div class="box16 mt-4">
							<a href="#">
								<figure>
									<img class="img-fluid" src="assets/images/b1.jpeg" alt="">
								</figure>
								<div class="box-content">
									<h3 class="title">Frozen 2</h3>
									<h4>
										<span class="post"><span class="fa fa-clock-o">
										</span> 1 Hr 4min </span> <span class="post fa fa-heart text-right"></span>
									</h4>
								</div> <span class="fa fa-play video-icon" aria-hidden="true"></span>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
    <h2>Latest Movies</h2>
    <div class="container mt-3">
        <div class="card">
            <img class="card-img-top custom-card-image" src="assets/images/mad-2023-et00370942-1695798072.webp" alt="Card image">
            <div class="card-body">
                <h4 class="card-title">Mad</h4>
                <p class="card-text">Comedy/Drama</p>
                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalLong">Show more</button>
            </div> 
        </div> 
          <!-- Modal -->
          <div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
            <div class="modal-dialog" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title" id="exampleModalLongTitle">Mad</h5>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>
                </div>
                <div class="modal-body">
                    <img src="" alt="/assets/images/mad-2023-et00370942-1695798072.webp">
                    <p class="card-text">Comedy/Drama</p>
                    <p>The story follows three college freshmen, Manoj, Ashok, and Damodhar, as they become best friends, navigate college experiences, and ultimately find their true love.</p>
                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                  <button type="button" class="btn btn-primary">Save changes</button>
                </div>
              </div>
            </div>
          </div>
        <div class="card" >
            <img class="card-img-top custom-card-image" src="assets/images/skanda.jpg" alt="Card image">
            <div class="card-body">
                <h4 class="card-title">skanda</h4>
                <p class="card-text">Action/Drama</p>
                <a href="#" class="btn btn-primary">Book Tickets</a>
            </div> 
        </div>
        <div class="card">
            <img class="card-img-top custom-card-image" src="assets/images/sarkar.jpeg" alt="Card image">
            <div class="card-body">
                <h4 class="card-title">sarkar</h4>
                <p class="card-text">Action/Drama</p>
                <a href="#" class="btn btn-primary">Book Tickets</a>
            </div> 
        </div>
        <div class="card">
            <img class="card-img-top custom-card-image" src="assets/images/Kushi.jpg" alt="Card image">
            <div class="card-body">
                <h4 class="card-title">Kushi</h4>
                <p class="card-text">Comedy/Drama</p>
                <a href="#" class="btn btn-primary">Book Tickets</a>
            </div> 
        </div>
    </div>
    <h2>Popular Movies</h2>
    <div class="container mt-3">
        <div class="card">
            <img class="card-img-top custom-card-image" src="assets/images/Jawan.webp" alt="Card image">
            <div class="card-body">
                <h4 class="card-title">Jawan</h4>
                <p class="card-text">Action/Dram</p>
                <a href="#" class="btn btn-primary">Book Tickets</a>
            </div> 
        </div>
        <div class="card" >
            <img class="card-img-top custom-card-image" src="assets/images/DreamGirl2.webp" alt="Card image">
            <div class="card-body">
                <h4 class="card-title">Dream Girl II</h4>
                <p class="card-text">Comedy/Drama</p>
                <a href="#" class="btn btn-primary">Book Tickets</a>
            </div> 
        </div>
        <div class="card">
            <img class="card-img-top custom-card-image" src="assets/images/oppenheimer-portrait.webp" alt="Card image">
            <div class="card-body">
                <h4 class="card-title">oppenheimer</h4>
                <p class="card-text">Drama/History</p>
                <a href="#" class="btn btn-primary">Book Tickets</a>
            </div> 
        </div>
        <div class="card">
            <img class="card-img-top custom-card-image" src="assets/images/jumanji.webp" alt="Card image">
            <div class="card-body">
                <h4 class="card-title">Jumanji</h4>
                <p class="card-text">Fantacy/Adventure/Comedy</p>
                <a href="#" class="btn btn-primary">Book Tickets</a>
            </div> 
        </div>
    </div>
    <h2>Tollywood</h2>
    <div class="container mt-3">
        <div class="card">
            <img class="card-img-top custom-card-image" src="assets/images/Jawan.webp" alt="Card image">
            <div class="card-body">
                <h4 class="card-title">Jawan</h4>
                <p class="card-text"></p>
                <a href="#" class="btn btn-primary">Book Tickets</a>
            </div> 
        </div>
        <div class="card" >
            <img class="card-img-top custom-card-image" src="assets/images/skanda.jpg" alt="Card image">
            <div class="card-body">
                <h4 class="card-title">skanda</h4>
                <p class="card-text"></p>
                <a href="#" class="btn btn-primary">Book Tickets</a>
            </div> 
        </div>
        <div class="card">
            <img class="card-img-top custom-card-image" src="assets/images/sarkar.jpeg" alt="Card image">
            <div class="card-body">
                <h4 class="card-title">sarkar</h4>
                <p class="card-text"></p>
                <a href="#" class="btn btn-primary">Book Tickets</a>
            </div> 
        </div>
        <div class="card">
            <img class="card-img-top custom-card-image" src="assets/images/Kushi.jpg" alt="Card image">
            <div class="card-body">
                <h4 class="card-title">Kushi</h4>
                <p class="card-text"></p>
                <a href="#" class="btn btn-primary">Book Tickets</a>
            </div> 
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>

    <script>
        $(document).ready(function () {
    $('.owl-four').owlCarousel({
        stagePadding: 280,
        loop: true,
        margin: 20,
        nav: true,
        responsiveClass: true,
        autoplay: true,
        autoplayTimeout: 5000,
        autoplaySpeed: 1000,
        autoplayHoverPause: false,
        responsive: {
            0: {
                items: 2,
                stagePadding: 40,
                nav: false
            },
            480: {
                items: 1,
                stagePadding: 60,
                nav: true
            },
            667: {
                items: 1,
                stagePadding: 80,
                nav: true
            },
            1000: {
                items: 1,
                nav: true
            }
        }
    });
});
    </script>
    
</body>
</html>
