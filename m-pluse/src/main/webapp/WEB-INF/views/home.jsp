<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!doctype html>
<html lang="en">
<head>

    <meta charset="UTF-8">
    <title>M-GS</title>
    <script type="text/javascript" src="js/js.js"></script>
     <script type="text/javascript" src="js/script.js"></script>
<!--     <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/babel-core/6.1.19/browser.min.js"></script> -->
    <script type="text/javascript" src="js/js1.js"></script>
    <script type="text/javascript" src="js/galleria.classic.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.js"></script>
    <script type="text/javascript" src="js/galleria-1.2.2.js"></script>
<script type="text/javascript" src="js/ajax.js"></script>

<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/style1.css">
<link rel="stylesheet" href="css/stylefooter.css">
<link rel="stylesheet" href="css/styleicon.css">
<link rel="stylesheet" href="css/galleria.classic.css">
<link href="https://fonts.googleapis.com/css?family=Lato:900"
	rel="stylesheet">
</head>
<body>

<input type="hidden" name="csrf_name"
       value="${_csrf.parameterName}" />
<input type="hidden" name="csrf_value"
       value="${_csrf.token}" />
	<!-- nav bar -->
	<nav class="nav">
		<div class="nav1">
			<div class="navmenu">
				<a href="#we" class="navtag">WE</a> <a href="#work" class="navtag">WORK</a>
				<a href="#blog" class="navtag">BLOG</a> <a href="#gall"
					class="navtag">GALLARY</a> <a href="#cont" class="navtag">CONTACT</a>
			</div>
			<a href="#home" class="navlogo">M-GS</a>
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
					<label class="textbott" >Name</label><br> <input class="form1"
						placeholder="Your name" type="text" required="" name="name" id="nameFormLeft">
				</div>
				<div class="">
					<label class="textbott">Number or E-mail</label><br> <input
						class="form1" placeholder="+38(***) or @mail.com" type="tel"
						required=" " name="phoneOrEmail" id="emailOfPhoneFormLeft">
				</div>
			</div>
			
<%-- 		</form:form> --%>
		
		<button type="button" class="button" id="sendFormLeft" onclick="validationEmailOfPhoneFormLeft()">Send</button>
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
			<div class="b1-block1">
				<span class="texttitle">Making <mone></mone>y is art and
					working is art and good business <br>is the <font
					color="#e2db19"> best art.</font>
				</span>
			</div>
			<div class=" b b1-block0">
				<span class="b spanBGT">M-GS</span>
			</div>
		</div>
	</div>
	<!-- block 2 -->
	<div id="we" class=" b2">
		<div class="b2-block3">
			<h1 class="text-b3"></h1>
		</div>
		<div class="b b2-block2">

			<span class="text1-b2"> <font color="#e2db19">WHAT</font> <br>
				WE <br> DO <br>
			</span>
		</div>
		<span class="spanBG">CREAT</span>
		<div class="b b2-block1">
			<div class="b2-block1-01">
				<div class="b2-block1-01-00">
					<span class="b2-font"> VR/AR </span> <br> <a href=""> <img
						src="img/virtual_reality.png" class="B2-iclon" " alt="">
					</a>
				</div>
				<div class="b2-block1-01-01">
					<span class="b2-font"> G&P </span> <br> <a href=""> <img
						src="img/game_design.png" class="B2-iclon" " alt="">
					</a>
				</div>
			</div>
			<div class="b2-block1-02">
				<div class="b2-block1-02-03">
					<span class="b2-font">SITE</span> <br> <a href=""> <img
						src="img/site_design.png" class="B2-iclon" " alt="">
					</a>
				</div>
				<div class="b2-block1-02-04">

					<span class="b2-font">DESIGN</span> <br> <a href=""> <img
						src="img/design.png" class="B2-iclon" " alt="">
					</a>
				</div>
				<div class="b2-block1-02-05">
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
		<div class="b3-block2">
			<span class="text-b4">
				<button type="button" class="button-b2" class="b"
					onclick="myFunction()">VR/AR</button> <br> <a href="#"
				class=""></a>
				<button type="button" class="button-b2" onclick="myFunction1()">GAMES
				</button> <br>
				<button type="button" class="button-b2" onclick="myFunction2()">COUTH</button>
				<br>
			</span>
		</div>
		<div class="b b2-block2">

			<span class="text1-b2"> <font color="#e2db19">OUR</font> <br>
				PROJECTS <br>
			</span>
		</div>
		<span class="spanBG">WORK</span>
		<div class="b"></div>
		<div class="b3-block0"></div>
		<div id="div3" class="b3-block1">
			<div class="b3-block1-0">
				<a href="">
					<div class="overlay">
						<div class="text-b3-box">
							<span style="font-size: 25px;">GAME </span><br> some text
							about games
						</div>
					</div>
				</a>
			</div>
			<div class="b3-block1-1">

				<a href="">
					<div class="overlay">
						<div class="text-b3-box">
							<span style="font-size: 25px;">GAME </span><br> some text
							about games
						</div>
					</div>
				</a>
			</div>
			<div class="b3-block1-2">
				<a href="">
					<div class="overlay">
						<div class="text-b3-box">
							<span style="font-size: 25px;">GAME </span><br> some text
							about games
						</div>
					</div>
				</a>
			</div>
			<div class="b3-block1-3">
				<a href="">
					<div class="overlay">
						<div class="text-b3-box">
							<span style="font-size: 25px;">GAME </span><br> some text
							about games
						</div>
					</div>
				</a>
			</div>
		</div>
		<div id="div1" class="b3-block1">
			<div class="b3-block1-0">
				<a href="">
					<div class="overlay">
						<div class="text-b3-box">
							<span style="font-size: 25px;">GAME </span><br> some text
							about games
						</div>
					</div>
				</a>
			</div>
			<div class="b3-block1-1">

				<a href="">
					<div class="overlay">
						<div class="text-b3-box">
							<span style="font-size: 25px;">GAME </span><br> some text
							about games
						</div>
					</div>
				</a>
			</div>
			<div class="b3-block1-2">
				<a href="">
					<div class="overlay">
						<div class="text-b3-box">
							<span style="font-size: 25px;">GAME </span><br> some text
							about games
						</div>
					</div>
				</a>
			</div>
			<div class="b3-block1-3">
				<a href="">
					<div class="overlay">
						<div class="text-b3-box">
							<span style="font-size: 25px;">GAME </span><br> some text
							about games
						</div>
					</div>
				</a>
			</div>
		</div>
		<div id="div2" class="b3-block1">
			<div class="b3-block1-0">
				<a href="">
					<div class="overlay">
						<div class="text-b3-box">
							<span style="font-size: 25px;">GAME </span><br> some text
							about games
						</div>
					</div>
				</a>
			</div>
			<div class="b3-block1-1">

				<a href="">
					<div class="overlay">
						<div class="text-b3-box">
							<span style="font-size: 25px;">GAME </span><br> some text
							about games
						</div>
					</div>
				</a>
			</div>
			<div class="b3-block1-2">
				<a href="">
					<div class="overlay">
						<div class="text-b3-box">
							<span style="font-size: 25px;">GAME </span><br> some text
							about games
						</div>
					</div>
				</a>
			</div>
			<div class="b3-block1-3">
				<a href="">
					<div class="overlay">
						<div class="text-b3-box">
							<span style="font-size: 25px;">GAME </span><br> some text
							about games
						</div>
					</div>
				</a>
			</div>
		</div>

	</div>
	<!-- block 4-->
	<div class=" b4">
		<span class="spanBG">WE</span>
		<div class="b"></div>
		<div class="b4-block3"></div>
		<div class="b4-block0">
			<div class="b4-block0-0">
				<span class="text2-b4"> latest new </span>
				<p class="textpar">The developer also teases the mysterious
					PS4-exclusive's online mode.</p>
			</div>
			<div class="b4-block0-1">
				<span class="text2-b4"> latest new </span>
				<p class="textpar">The developer also teases the mysterious
					PS4-exclusive's online mode.</p>
			</div>
			<div class="b4-block0-2">
				<span class="text2-b4"> latest new </span>
				<p class="textpar">The developer also teases the mysterious
					PS4-exclusive's online mode.</p>
			</div>
			<div class="b4-block0-3">
				<span class="text2-b4"> latest new </span>
				<p class="textpar">The developer also teases the mysterious
					PS4-exclusive's online mode.</p>
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
				<div id="galleria">
					<a
						href="http://upload.wikimedia.org/wikipedia/commons/thumb/3/34/Locomotives-Roundhouse2.jpg/1000px-Locomotives-Roundhouse2.jpg">
						<img title="Locomotives Roundhouse"
						alt="Steam locomotives of the Chicago &amp; North Western Railway."
						src="http://upload.wikimedia.org/wikipedia/commons/thumb/3/34/Locomotives-Roundhouse2.jpg/100px-Locomotives-Roundhouse2.jpg">
					</a> ${gallery}
				</div>

			</div>
		</div>
		<div class="b b6-block3">

			<span class="text1-b2"> <font color="#e2db19">GALLARY</font> <br>

			</span>
		</div>
	</div>
	<!-- block 6 -->
	<div class=" b6">
		<span class="spanBG">CONTACT</span>
		<div class="b6-block0"></div>
		<!-- call back -->
		<div class="b6-block1">
			<div class="end-callback">
<%-- 				<form:form action="messageCall" target="_blank" modelAttribute="user" method="post" id="formMessageCall"> --%>
					<p class="textbott">
						Give us a chance <br> <font color="#e2db19">Call us</font>
					</p>
					<div class="sidenavblock1">
						<div class="sidenavbloc">
							<label class="text-callbakc">Name</label><br> <input
								class="end-callbackblock" type="text" name="name" id="nameUser-bottom">
							<div class="">
								<label class="text-callbakc">Email</label><br> <input
									class="end-callbackblock" type="text" name="email" id="email-bottom">
							</div>
							<div class="">
								<label class="text-callbakc">Message</label> <input
									class="end-callbackmess" name="message" id="message-bottom">
							</div>
						</div>
						<button type="submit" class="button" onclick="validationEmailOfPhoneFormBottom()">Send</button>
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
		<div class="foot1">Contacts</div>
		<div class="foot2">Lockation</div>
		<div class="foot3">Some Text</div>
	</footer>
	<script>
		// Load the classic theme
		Galleria.loadTheme('js/galleria.classic.min.js');

		// Initialize Galleria
		$('#galleria').galleria();
	</script>
</body>
</html>