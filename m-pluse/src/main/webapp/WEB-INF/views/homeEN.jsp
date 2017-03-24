<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!doctype html>
<html lang="en">
<head>


<meta charset="UTF-8">
<title>M-Plus</title>
<link rel="shortcut icon" href="img/logo_m-plus.png" type="image/png">
<script type="text/javascript" src="js/js.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<!--     <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/babel-core/6.1.19/browser.min.js"></script> -->
<script type="text/javascript" src="js/js1.js"></script>
<script type="text/javascript" src="js/galleria.classic.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.js"></script>
<script type="text/javascript" src="js/galleria-1.2.2.js"></script>
<script type="text/javascript" src="js/ajax.js"></script>
<script type="text/javascript" src="js/LanguageButton.js"></script>

<link rel="stylesheet" media="all" href="css/animate.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/style1.css">
<link rel="stylesheet" href="css/stylefooter.css">
<link rel="stylesheet" href="css/styleicon.css">
<link rel="stylesheet" href="css/galleria.classic.css">
<link href="https://fonts.googleapis.com/css?family=Lato:900"
	rel="stylesheet">
<link rel="stylesheet" href="css/styleLanguageButton.css">
<link rel="stylesheet" href="css/download.css">
<script src="js/wow.min.js"></script>
<script>
	new WOW().init();
</script>

</head>
<body>
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

							var $preloader = $('#page-preloader'), $spinner = $preloader
									.find('.spinner');
							$spinner.fadeOut();

							$preloader.delay(1).fadeOut();
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
			<a href="#home" class="navlogo">M-Plus</a>


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

	<!--  call back-->
	<div class="navslide"
		style="display: none; padding-top: 13%; right: 0; z-index: 10;"
		id="mySidenav">
		<%-- 		<form:form action="messageCallLeft" modelAttribute="userWrapper"  class="" target="_blank" id="formMessageCallLeft" method="post"> --%>
		<p class="textbott">
			Give us a chance <br> <font color="#e2db19">Call us</font>
		</p>
		<div class="sidenavblock">
			<div class="">
				<label class="textbott">Name</label><br> <input class="form1"
					placeholder="Your name" type="text" required="" name="name"
					id="nameFormLeft">
			</div>
			<div class="">
				<label class="textbott">Number or E-mail</label><br> <input
					class="form1" placeholder="+38(***) or @mail.com" type="tel"
					required=" " name="phoneOrEmail" id="emailOfPhoneFormLeft">
			</div>
		</div>

		<%-- 		</form:form> --%>

		<button type="button" class="button" id="sendFormLeft"
			onclick="validationEmailOfPhoneFormLeft()">Send</button>
		<p id="loggerFormLeft"></p>
		<a href="javascript:void(0)" onclick="closeNav()" class=" " style="">
			<i class="ibar2"></i>
		</a>
	</div>

	<span class="navbutton" style="width: auto; right: 0;"
		onclick="openNav()"> <i class="ibar"> <img
			style="height: 50px; width: 45px; padding-top: 16%;"
			src="img/SMARTPHONE1.png" alt="">
	</i></span>
	<!--  first block -->
	<div class="B00">
		<div class=" b1 ">
			<div class="b1-block1 bounceInLeft wow">
				<span class="texttitle bounceInLeft wow">Making <mone></mone>
					is art and working is art and good business <br>is the <font
					color="#e2db19" class="bounceInLeft wow"> best art.</font>
				</span>
			</div>
			<div class=" b b1-block0 ">
				<span class="b spanBGT bounceInLeft wow">M-Plus</span>
			</div>
		</div>
	</div>
	<!-- block 2 -->
	<div id="we" class=" b2">
		<div class="b2-block3">
			<h1 class="text-b3"></h1>
		</div>
		<div class="b b2-block2">

			<span class="text1-b2 bounceInLeft wow"> <font color="#e2db19">WHAT</font>
				<br> WE <br> DO <br>
			</span>
		</div>
		<span class="spanBG">CREAT</span>
		<div class="b b2-block1 bounceInLeft wow">
			<div class="b2-block1-01 bounceInLeft wow">
				<div class="b2-block1-01-00 bounceInLeft wow">
					<span class="b2-font"> VR/AR </span> <br> <a href=""> <img
						src="img/virtual_reality.png" class="B2-iclon" " alt="">
					</a>
				</div>
				<div class="b2-block1-01-01 bounceInLeft wow">
					<span class="b2-font"> G&P </span> <br> <a href=""> <img
						src="img/game_design.png" class="B2-iclon" " alt="">
					</a>
				</div>
			</div>
			<div class="b2-block1-02 bounceInLeft wow">
				<div class="b2-block1-02-03">
					<span class="b2-font">SITE</span> <br> <a href=""> <img
						src="img/site_design.png" class="B2-iclon" " alt="">
					</a>
				</div>
				<div class="b2-block1-02-04 bounceInLeft wow">

					<span class="b2-font">DESIGN</span> <br> <a href=""> <img
						src="img/design.png" class="B2-iclon" " alt="">
					</a>
				</div>
				<div class="b2-block1-02-05 bounceInLeft wow">
					<span class="b2-font">MARKETING</span> <br> <a href=""> <img
						src="img/marketing.png" class="B2-iclon" " alt="">
					</a>
				</div>



			</div>
		</div>
		<div class="b b2-block0"></div>
	</div>
	<!-- block 3-->
	<div id="work" class=" b3">
		<div class="b3-block2 ">
			<span class="text-b4 bounceInLeft wow">
				<button type="button" class="button-b2 bounceInLeft wow" class="b"
					onclick="myFunction()">VR/AR</button> <br> <a href="#"
				class=""></a>
				<button type="button" class="button-b2 bounceInLeft wow"
					onclick="myFunction1()">GAMES</button>
			</span>
		</div>
		<div class="b b2-block2 bounceInLeft wow">

			<span class="text1-b2 bounceInLeft wow"> <font color="#e2db19">OUR</font>
				<br> PROJECTS <br>
			</span>
		</div>
		<span class="spanBG bounceInLeft wow">WORK</span>
		<div class="b bounceInLeft wow"></div>
		<div class="b3-block0"></div>
		<div id="div3" class="b3-block1 bounceInLeft wow">${game}</div>


	</div>
	<!-- block 4-->
	<div class=" b4">
		<span class="spanBG bounceInLeft wow">WE</span>
		<div class="b"></div>
		<div class="b4-block3 bounceInLeft wow"></div>
		<div class="b4-block0 bounceInLeft wow">
			<div class="b4-block0-0 bounceInLeft wow">
				<span class="text2-b4 bounceInLeft wow">New game called
					"Be_Touch" </span>
				<p class="textpar bounceInLeft wow">Almost made a new game
					called "Be_Touch".</p>
			</div>
			<div class="b4-block0-1 bounceInLeft wow">
				<span class="text2-b4 bounceInLeft wow"> Some big updates </span>
				<p class="textpar bounceInLeft wow">Added menu, made 2 playing
					modes, added a lot of themes. Fixed lot of bugs, made realistic
					colliders. The new version of the game is now testing by a closed
					beta-testing.</p>
			</div>
		</div>
		<div class="b2-block2">
			<span class="text1-b2"> <font color="#e2db19">OUR</font> <br>
				BLOG <br>
			</span>
		</div>
		<div class="b2-block3">
			<h1 class="text-b3">Game Development is our core competence. We
				collaborate closely with our partners, assisting them throughout the
				whole process of developing high quality AAA titles.</h1>
		</div>
	</div>
	<!-- block 5-->
	<div class="b5">
		<div class="b4-block3"></div>
		<span class="spanBG">PIC</span>
		<div class="b5-block0">
			<div class="content">
				<!-- Adding gallery images. We use resized thumbnails here for better performance, but it’s not necessary -->
				<div class="bounceInLeft wow" id="galleria">
					<a
						href="http://upload.wikimedia.org/wikipedia/commons/thumb/3/34/Locomotives-Roundhouse2.jpg/1000px-Locomotives-Roundhouse2.jpg">
						<img title="Locomotives Roundhouse"
						alt="Steam locomotives of the Chicago &amp; North Western Railway."
						src="http://upload.wikimedia.org/wikipedia/commons/thumb/3/34/Locomotives-Roundhouse2.jpg/100px-Locomotives-Roundhouse2.jpg">
					</a> ${gallery}
				</div>

			</div>
		</div>
		<div class="b b6-block3 bounceInLeft wow">

			<span class="text1-b2 "> <font color="#e2db19">GALLARY</font>
				<br>

			</span>
		</div>
	</div>
	<!-- block 6 -->
	<div class=" b6">
		<span class="spanBG bounceInLeft wow">CONTACT</span>
		<div class="b6-block0"></div>
		<!-- call back -->
		<div class="b6-block1 bounceInLeft wow">
			<div class="end-callback bounceInLeft wow">
				<%-- 				<form:form action="messageCall" target="_blank" modelAttribute="user" method="post" id="formMessageCall"> --%>
				<p class="textbott">
					Give us a chance <br> <font color="#e2db19">Call us</font>
				</p>
				<div class="sidenavblock1">
					<div class="sidenavbloc">
						<label class="text-callbakc bounceInLeft wow">Name</label><br>
						<input class="end-callbackblock" type="text" name="name"
							id="nameUser-bottom">
						<div class="">
							<label class="text-callbakc bounceInLeft wow">Email</label><br>
							<input class="end-callbackblock bounceInLeft wow" type="text"
								name="email" id="email-bottom">
						</div>
						<div class="">
							<label class="text-callbakc bounceInLeft wow">Message</label>
							<textarea class="end-callbackmess" name="message"
								id="message-bottom"></textarea>
						</div>
					</div>
					<button type="submit" class="button bounceInLeft wow"
						onclick="validationEmailOfPhoneFormBottom()">Send</button>
					<p id="loggerFormBottom"></p>
				</div>
				<%-- 				</form:form> --%>
			</div>
		</div>
		<div class="b b2-block2">

			<span class="text1-b2"> <font color="#e2db19">CALL</font> <br>
				TO <br> ACTION <br>
			</span>
		</div>
	</div>
	<!-- block 7 -->
	<footer class="b7 ">
		<div class="foot0 bounceInLeft wow">
			<H1
				style="font-size: 33px; color: rgb(226, 219, 25); font-family: 'Montserrat', sans-serif;; text-align: left">Follow
				us:</H1>
			<div class="row">
				<i class="entypo-facebook bounceInLeft wow"
					style="width: 40px; height: 40px;"></i> <i
					class="entypo-twitter bounceInLeft wow"
					style="width: 40px; height: 40px;"></i> <i
					class="entypo-gplus bounceInLeft wow"
					style="width: 40px; height: 40px;"></i> <i
					class="entypo-pinterest bounceInLeft wow"
					style="width: 40px; height: 40px;"></i> <i
					class="entypo-dribbble bounceInLeft wow"
					style="width: 40px; height: 40px;"></i>
			</div>
		</div>
		<div class="foot1"></div>
		<div class="foot2 bounceInLeft wow">
			<h2>
				<p class="foot2-p1 bounceInLeft wow">Contacts</p>
			</h2>
			<p class="foot2-p2 bounceInLeft wow">Ukr-lviv</p>
			<p class="foot2-p3 bounceInLeft wow">Mobile phone: 096-369-03-91</p>
			<p class="foot2-p4 bounceInLeft wow">Email: ceo@m-plus.com</p>
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