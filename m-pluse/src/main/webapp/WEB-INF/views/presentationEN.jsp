<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!doctype html>
<html lang="en">
<head>


<meta charset="UTF-8">
<title>M-Plus</title>
<link rel="shortcut icon" href="img/logo_m-plus.png" type="image/png">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.js"></script>
<script type="text/javascript" src="js/js.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<!--     <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/babel-core/6.1.19/browser.min.js"></script> -->
<script type="text/javascript" src="js/js1.js"></script>
<script type="text/javascript" src="js/galleria.classic.js"></script>
<script type="text/javascript" src="js/galleria-1.2.2.js"></script>
<script type="text/javascript" src="js/ajax.js"></script>
<script type="text/javascript" src="js/LanguageButton.js"></script>
<script type="text/javascript" src="js/video.js"></script>


<link rel="stylesheet" media="all" href="css/animate.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/style1.css">
<link rel="stylesheet" href="css/stylefooter.css">
<link rel="stylesheet" href="css/styleicon.css">
<link rel="stylesheet" href="css/galleria.classic.css">
<link href="https://fonts.googleapis.com/css?family=Lato:900"
	rel="stylesheet">
<script src="js/wow.min.js"></script>
<script>
	new WOW().init();
</script>


<link rel="stylesheet" href="css/styleLanguageButton.css">
<link rel="stylesheet" href="css/download.css">
<link rel="stylesheet" href="css/presentation.css">


</head>
<body>
	<a download="img/arrow1.png" id="a-presentation" style="display: none;"></a>

	<script type="text/javascript">
		function pause(n) {
			today = new Date()
			today2 = today
			while ((today2 - today) <= n) {
				today2 = new Date()
			}
		}

		$(window)
				.on(
						'load',
						function() {
							//						$('#background-presentation').height($('#video-player').height());

							$("#video-player")[0].volume = 0;
							var $preloader = $('#page-preloader'), $spinner = $preloader
									.find('.spinner');
							$spinner.fadeOut();

							$preloader.delay(2500).fadeOut();

							$("#video-player")[0].currentTime = 0;
						});
	</script>

	<input type="hidden" name="csrf_name" value="${_csrf.parameterName}" />
	<input type="hidden" name="csrf_value" value="${_csrf.token}" />
	<div id="page-preloader" class="page-preloader"
		style="height: 100%; width: 100%; background-image: url(img/pattern.png); background-repeat: no-repeat;">
		<div id="large-header" class="large-header"></div>

		<div class="contpre">
			<span class="spinner"> </span>
			<svg class="animtext" viewBox="0 0 800 600">
  <symbol id="s-text">
    <text text-anchor="middle" x="50%" y="35%" class="text--line">
     M-Plus
    </text>
    <text text-anchor="middle" x="50%" y="68%" class="text--line2">
      
    </text>
    
  </symbol>
  
  <g class="g-ants">
    <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#s-text"
					class="text-copy"></use>     
    <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#s-text"
					class="text-copy"></use>     
    <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#s-text"
					class="text-copy"></use>     
    <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#s-text"
					class="text-copy"></use>     
    <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#s-text"
					class="text-copy"></use>     
  </g>
  
  
</svg>

			</center>

			</span>

		</div>

	</div>

	<!-- nav bar -->
	<nav class="nav">
		<div class="nav1">
			<div class="navmenu">
				<a href="#we" class="navtag">WE</a> <a href="#work" class="navtag">WORK</a>
				<a href="#blog" class="navtag">BLOG</a> <a href="#gall"
					class="navtag">GALLARY</a> <a href="#cont" class="navtag">CONTACT</a>
			</div>
			<a href="en" class="navlogo">M-Plus</a>


		</div>

	</nav>
	<nav class="nav lang">

		<div class="wrapper-button-language" id="wrapper-button-language">
			<div class="button-language-1" id="button-language-1">
				<p class="button-language-1-p" id="button-language-1-p">
					<a href="ua" class="button-language-1-p-a"
						id="button-language-1-p-a"> UA </a>
				</p>
			</div>
			<div class="button-language-2" id="button-language-2">
				<p class="button-language-2-p" id="button-language-2-p">
					<a href="ru" class="button-language-2-p-a"
						id="button-language-2-p-a"> RU </a>
				</p>
			</div>
			<div class="button-language-3" id="button-language-3"
				style="background: #595958;">
				<p class="button-language-3-p" id="button-language-3-p">
					<a href="en" class="button-language-3-p-a"
						id="button-language-3-p-a" style="color: #929491;"> EN </a>
				</p>
			</div>
		</div>

	</nav>

	<div class="wrapper-video-presentation">

		<video id="video-player" class="video-player"
			src="img/soundtestvideo.mp4" autoplay controls loop>

		</video>
		<div id="background-presentation" style="width: 100%; height: 100%;"
			class="background-presentation">
			<div class="div-vidoe-text">
				<h3>TEXT</h3>
				<p>text text text text text text text text text text text text
					text text text text text text text text text text text text text
					text text text text text text text text text text text text text
					text text text text text text text text text text text text text
					text text text text text text text text text text text text text
					text text text text text text text text text text text text text
					text text text text text text text text text text text text text
					text text text text text text text text text text text text text
					text text text text text text text text text text text text text
					text text text text text text text text text text text text text
					text text text text text text text text text text text text text
					text text text text text text text text text text text text text
					text text text text text text text text text text text text text
					text text text text text text text text text text text text text
					text text text text text text text text text text text text text
					text text text text text text text text text text</p>
			</div>
			<a href="#"><div class="play-button-presentation"
					id="play-button-presentation" onclick="playVideoPresentation()"
					style="background-image: url(img/play.jpg); background-size: cover;"></div></a>

		</div>
		<div id="close-button-presentation" class="close-button-presentation"
			style="display: none" onclick="closeVideoPresentation()">
			<a href="#">&times;</a>
		</div>

	</div>
	<div class="download" id="download">

		<!-- 		<a href="#" onclick="sendEmail('play','img/play.jpg')" -->
		<!-- 			title="presentation" class="download-a" id="download-a"><div -->
		<!-- 				class="download-a-div"> -->
		<!-- 				download <a href="#" onclick="closeDownload()">&times;</a></a> -->
		<!-- 	</div> -->
		<!-- 	</a> -->
	</div>


	<div class="form0" id="formmenu" style="display: none">
		<h3 style="position: relative; top: 7%;">Введіть E-mail для
			завантаження брошури</h3>
		<div class="formmenu">
			<center>
				<label>E-mail</label><br> <input class=""
					style="width: 173px; height: 17px; font-size: 18px;" type="text"
					name="email" id="emailVideo"> <br>
				<button type="submit" class="buttno" onclick="closeDownload()">ні</button>
				<button type="submit" class="buttyes"
					onclick="sendEmail('play','presentation/VR_AR.compressed.pdf','VR')">Так</button>
			</center>
		</div>
	</div>

	<div class="dowbutt" id="dowbutt">
		<a href="#" title="file name"><img class="dow" id="dow"
			src="img/Download-Icon.png" alt="" onclick="startEmail();"
			onmouseover="nameFile('name file')" onmouseout="closeNameFile()"
			style="z-index: 100;"></a>
		<div class="dowblock" id="dowblock"
			style="display: none; position: absolute; right: 31px;">




			<p id="download-info-name"
				style="display: none; position: absolute; left: 47px; z-index: 9;">
				Завантажити <br> брошру <br> name file
			</p>
			<div class="circleright" id="circle"
				style="display: none; position: absolute; right: -32px;"></div>
		</div>
	</div>

	<div class="body-presentation" id="body-presentation">

		<div class="body-presentation-p-left bounceInLeft wow">
			<h3>t1</h3>

			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text
		</div>

		<div class="body-presentation-p-right bounceInRight wow">
			<h3>t2</h3>
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text

		</div>
		<div class="body-presentation-p-left bounceInLeft wow">
			<h3>t3</h3>
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text

		</div>
		<div class="body-presentation-p-right bounceInRight wow">
			<h3>t4</h3>
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text
		</div>
		<div class="body-presentation-p-left  bounceInLeft wow">
			<h3>t5</h3>
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text

		</div>
		<div class="body-presentation-p-right  bounceInRight wow">
			<h3>t6</h3>
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text

		</div>
		<div class="body-presentation-p-left  bounceInLeft wow">
			<h3>t7</h3>
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text

		</div>
		<div class="body-presentation-p-right  bounceInRight wow">
			<h3>t8</h3>
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text

		</div>
		<div class="body-presentation-p-left  bounceInLeft wow">
			<h3>t9</h3>
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text

		</div>
		<div class="body-presentation-p-right  bounceInRight wow">
			<h3>t10</h3>
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text text text text text
			text text text text text text text text text text

		</div>


	</div>
	<!-- block 7 -->
	<footer class="b7">
		<div class="foot0">
			<H1
				style="font-size: 33px; color: rgb(226, 219, 25); font-family: 'Montserrat', sans-serif;; text-align: left">Follow
				us:</H1>
			<div class="row">
				<i class="entypo-facebook" style="width: 40px; height: 40px;"></i> <i
					class="entypo-twitter" style="width: 40px; height: 40px;"></i> <i
					class="entypo-gplus" style="width: 40px; height: 40px;"></i> <i
					class="entypo-pinterest" style="width: 40px; height: 40px;"></i> <i
					class="entypo-dribbble" style="width: 40px; height: 40px;"></i>
			</div>
		</div>
		<div class="foot1"></div>
		<div class="foot2">
			<h2>
				<p class="foot2-p1">Contacts</p>
			</h2>
			<p class="foot2-p2">Ukr-lviv</p>
			<p class="foot2-p3">Mobile phone: 096-369-03-91</p>
			<p class="foot2-p4">Email: ceo@m-plus.com</p>
		</div>
		<!--  		<div class="foot3"> -->

		<!--  		</div>  -->
	</footer>
	<script>
		// Load the classic theme
		Galleria.loadTheme('js/galleria.classic.min.js');

		// Initialize Galleria
		$('#galleria').galleria();
	</script>
</body>
</html>