<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap"
	rel="stylesheet">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<style>
* {
	margin: 0;
	padding: 0;
	font-family: 'Poppins', sans-serif;
	font-family: 'Roboto', sans-serif;
}

.topnav {
	overflow: hidden;
	background-color: #0e0e0e;
	top: 0;
	width: 100%;
}

.topnav a {
	float: right;
	display: block;
	color: #ffffff;
	text-align: center;
	padding: 18px;
	text-decoration: none;
	font-size: 25px;
}

.topnav a.active {
	float: left;
	font-size: 64px;
	margin-top: -15px;
	margin-bottom: -15px;
	padding: -10px;
	background-color: #0e0e0e;
	color: white;
}

.topnav .icon {
	display: none;
}

.dropdown {
	float: right;
	overflow: hidden;
}

.dropdown .dropbtn {
	font-size: 25px;
	border: none;
	outline: none;
	color: white;
	padding: 18px;
	background-color: inherit;
	font-family: inherit;
	margin: 0;
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: #f9f9f9;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
}

.dropdown-content a {
	float: none;
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
	text-align: left;
}

.topnav a:hover, .dropdown:hover .dropbtn {
	background-color: #0e0e0e;
	color: white;
}

.dropdown-content a:hover {
	background-color: #ddd;
	color: black;
}

.dropdown:hover .dropdown-content {
	display: block;
}

@media screen and (max-width: 600px) {
	.topnav a:not(:first-child), .dropdown .dropbtn {
		display: none;
	}
	.topnav a.icon {
		float: right;
		display: block;
	}
}

@media screen and (max-width: 600px) {
	.topnav.responsive {
		position: relative;
	}
	.topnav.responsive .icon {
		position: absolute;
		right: 0;
		top: 0;
	}
	.topnav.responsive a {
		float: none;
		display: block;
		text-align: left;
	}
	.topnav.responsive .dropdown {
		float: none;
	}
	.topnav.responsive .dropdown-content {
		position: relative;
	}
	.topnav.responsive .dropdown .dropbtn {
		display: block;
		width: 100%;
		text-align: left;
	}
}

.mySlides {
	display: none;
	width: 100%;
	height: 1000px;
	cursor: default;
}

.one {
	position: absolute;
	margin-top: 400px;
	top: 30px;
	left: 30px;
	font-size: 50px;
	color: #0e0e0e;
	text-shadow: 0 1px #808d93, -1px 0 #cdd2d5, -1px 2px #808d93, -2px 1px
		#cdd2d5, -2px 3px #808d93, -3px 2px #cdd2d5, -3px 4px #808d93, -4px
		3px #cdd2d5, -4px 5px #808d93, -5px 4px #cdd2d5, -5px 6px #808d93,
		-6px 5px #cdd2d5, -6px 7px #808d93, -7px 6px #cdd2d5, -7px 8px #808d93,
		-8px 7px #cdd2d5;
}

.two {
	position: absolute;
	margin-top: 400px;
	top: 30px;
	left: 30px;
	font-size: 50px;
	color: whitesmoke;
	text-shadow: peachpuff;
}
#bg {
  position: fixed; 
  top: 0; 
  left: 0; 

  /* Preserve aspet ratio */
  min-width: 100%;
  min-height: 100%;
}
</style>
<body>
	<div class="container" style="position: fixed; width: 100%;">
		<div class="topnav" id="myTopnav">
		<div style="margin-top: 1%">
			<a href="#home" class="active"><b><img
              src="https://lh3.googleusercontent.com/kwx2xddM9Fh6lT3-s1-bpwY0uE_EGu5wkH0JFx-2J7mTSvIWXt3v6TYxuFVoiZ-2RFq8bJX2WhzPrGP8-nlab5HUI0WQnknzDrufrZkHN1JOaQth0tCjaGjJUuQrlazUXAtDAMktCQ=w355-h131-p-k"
           width="150" height="60" 
           />
           </b>
           </a> <a href="signin">Signin/Signup</a>
			<div class="dropdown">
				<button class="dropbtn">
					Contact us <i class="fa fa-caret-down"></i>
				</button>
				<div class="dropdown-content">
					<a href="#"><img width="100%" height="20%"
						src="https://profileadvertise.co.za/wp-content/uploads/2021/06/8720d3608f0dc52635b4a7968a6db2e2.jpg" /></a>
				</div>
			</div>
			<div class="dropdown">
				<button class="dropbtn">
					About us <i class="fa fa-caret-down"></i>
				</button>
				<div class="dropdown-content">
					<a href="#">Overview</a> <a href="#">History</a> <a href="#">Clients
						Speak</a> <a href="#">Subsidiory</a>
				</div>
			</div>
			<div class="dropdown">
				<button class="dropbtn">
					Services <i class="fa fa-caret-down"></i>
				</button>
				<div class="dropdown-content">
					<a href="#">Digital Marketing</a> <a href="#">Digital
						Communication</a> <a href="#">Machine Learning</a> <a href="#">Cloud
						Computing</a> <a href="#">Artificial Intelligence</a> <a href="#">Block
						Chain</a>
				</div>
			</div>
			<a href="javascript:void(0);" style="font-size: 15px;" class="icon"
				onclick="myFunction()">&#9776;</a>
		</div>
	</div>

	<div class="autoSlide">
		<div class="mySlides">
			
				<img src="https://www.hcltech.com/sites/default/files/images/home-page/Gartner-Tab-800x600.jpg"
				style="width: 100%">
  
			<div class="imgtext one">
				<b>This website is create by Team Param-6 <br> <br>
					Prashant Kuntal (Leader) <br> Sourabh Ojha <br> Upasna
					Patel<br>Jigyasa Singh<br> Akshay Selokar <br>
					Shashawat Patel
				</b>
			</div>
		</div>
	</div>

	<div class="mySlides">
		<img
			src="https://www.hcltech.com/sites/default/files/images/home-page/Hartford-Tab-800x600pix.jpg"
			style="width: 100%">
		<div class="imgtext one">
			<h2>
				<b>This website is made for <br> Employee management system
				</b>
			</h2>
		</div>
	</div>
	</div>

	<div class="mySlides">
		<img
			src="https://www.hcltech.com/sites/default/files/images/home-page/landscape-736x414px.jpg"
			style="width: 100%" >
		<div class="imgtext one">
			<h1>
				<b>Touch the Sky with Glory...</b>
			</h1>
		</div>
	</div>
	</div>

	<div class="mySlides">
		<img
			src="https://www.hcltech.com/sites/default/files/images/home-page/forbes-banner_tab_800x600.png"
			style="width: 100%">
		<div class="imgtext two">
			<h3>
				<b>Helping someone is what life is all about, <br> Help
					orphan child who are affected during covid 19. <br> Interested
					people can contact us to donate on this Mob: +91 9876543210
				</b>
			</h3>
		</div>
	</div>
	</div>
	</div>

	<div class="other">
		<img class="newPic" src="./HCL.png" style="width: 100%"> <img
			class="newPic" src="./hcl1.png" style="width: 100%"> <img
			class="newPic" src="./hcl2.png" style="width: 100%"> <img
			class="newPic" src="./hcl3.png" style="width: 100%">
	</div>

</body>
</html>

<script>
	function myFunction() {
		var x = document.getElementById("myTopnav");
		if (x.className === "topnav") {
			x.className += " responsive";
		} else {
			x.className = "topnav";
		}
	}

	var myIndex = 0;
	carousel();
	function carousel() {

		var x = document.getElementsByClassName("mySlides");
		for (var i = 0; i < x.length; i++) {
			x[i].style.display = "none";
		}
		myIndex++;
		if (myIndex > x.length) {
			myIndex = 1
		}
		x[myIndex - 1].style.display = "block";
		setTimeout(carousel, 4000);
	}
</script>

