<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!doctype html>
<html lang="ru">
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

<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/style1.css">
<link rel="stylesheet" href="css/stylefooter.css">
<link rel="stylesheet" href="css/styleicon.css">
<link rel="stylesheet" href="css/galleria.classic.css">
<link href="https://fonts.googleapis.com/css?family=Lato:900"
	rel="stylesheet">
</head>
<body>

	<input type="hidden" name="csrf_name" value="${_csrf.parameterName}" />
	<input type="hidden" name="csrf_value" value="${_csrf.token}" />
	<!-- nav bar -->
	<nav class="nav">
		<div class="nav1">
			<div class="navmenu">
				<a href="#we" class="navtag">МЫ</a> <a href="#work" class="navtag">РАБОТА</a>
				<a href="#blog" class="navtag">БЛОГ</a> <a href="#gall"
					class="navtag">ГАЛЕРЕЯ</a> <a href="#cont" class="navtag">НАШИ КОНТАКТЫ</a>
			</div>
			<a href="#home" class="navlogo">M-Plus</a>
		</div>
	</nav>
	<!--  call back-->
	<div class="navslide"
		style="display: none; padding-top: 13%; right: 0; z-index: 10;"
		id="mySidenav">
		<%-- 		<form:form action="messageCallLeft" modelAttribute="userWrapper"  class="" target="_blank" id="formMessageCallLeft" method="post"> --%>
		<p class="textbott">
			Дайте нам шанс <br> <font color="#e2db19">Связаться с нами </font>
		</p>
		<div class="sidenavblock">
			<div class="">
				<label class="textbott">Имя</label><br> <input class="form1"
					placeholder="Your name" type="text" required="" name="name"
					id="nameFormLeft">
			</div>
			<div class="">
				<label class="textbott">Номер или E-mail</label><br> <input
					class="form1" placeholder="+38(***) or @mail.com" type="tel"
					required=" " name="phoneOrEmail" id="emailOfPhoneFormLeft">
			</div>
		</div>

		<%-- 		</form:form> --%>

		<button type="button" class="button" id="sendFormLeft"
			onclick="validationEmailOfPhoneFormLeft()">Отправить</button>
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
				<span class="texttitle">Мы верим <mone></mone> в идеалы и ценим каждого нашего клиента <br>с нами вы будете чувствовать себя в <font
					color="#e2db19"> безопасности.</font>
				</span>
			</div>
			<div class=" b b1-block0">
				<span class="b spanBGT">M-Pulse</span>
			</div>
		</div>
	</div>
	<!-- block 2 -->
	<div id="we" class=" b2">
		<div class="b2-block3">
			<h1 class="text-b3"></h1>
		</div>
		<div class="b b2-block2">

			<span class="text1-b2"> <font color="#e2db19">ЧТО</font> <br>
				МЫ <br> ДЕЛАЕМ <br>
			</span>
		</div>
		<span class="spanBG">СОЗДАЁМ</span>
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
					<span class="b2-font">САЙТЫ</span> <br> <a href=""> <img
						src="img/site_design.png" class="B2-iclon" " alt="">
					</a>
				</div>
				<div class="b2-block1-02-04">

					<span class="b2-font">ДИЗАЙН</span> <br> <a href=""> <img
						src="img/design.png" class="B2-iclon" " alt="">
					</a>
				</div>
				<div class="b2-block1-02-05">
					<span class="b2-font">МАРКЕЙТИНГ</span> <br> <a href=""> <img
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
      <span class="text-b4"> <button type="button" class="button-b2" class="b" onclick="myFunction()"> VR/AR </button>
          <br>
          <a href="#"class=""></a>
        <button type="button" class="button-b2" onclick="myFunction1()">ИГРЫ </button>
          <br>
           <button type="button" class="button-b2" onclick="myFunction2()">COUTH</button><br>
      </span>
    </div>
    <div class="b b2-block2">

       <span class="text1-b2">
            <font color="#e2db19">НАШИ</font> <br>
        ПРОЕКТЫ <br>
       </span>
    </div>
    <span class="spanBG">РАБОТА</span>
    <div class="b"></div>
    <div class="b3-block0"></div>
    <div id="div3" class="b3-block1">
       ${game}
    </div>
    

</div>
	<!-- block 4-->
	<div class=" b4">
		<span class="spanBG">МЫ</span>
		<div class="b"></div>
		<div class="b4-block3"></div>
		<div class="b4-block0">
			<div class="b4-block0-0">
				<span class="text2-b4">  "Be_Touch"  </span>
				<p class="textpar">Новая игра под названием "Be_Touch" </p>
			</div>
			<div class="b4-block0-1">
				<span class="text2-b4"> Несколько больших обновлений. </span>
				<p class="textpar">Добавлено меню, добавлено 2 новых мода, добавлено много тем. Исправлено много ошибок, созданы реалистичные коллайдеры. Новая версия игры сейчас тестируется в закрытом бета-тесте.</p>
			</div>
		</div>
		<div class="b2-block2">
			<span class="text1-b2"> <font color="#e2db19">НАШ</font> <br>
				БЛОГ <br>
			</span>
		</div>
		<div class="b2-block3">
			<h1 class="text-b3">Разработка игр является нашей главной деятельностью. 
Мы тесно сотрудничаем с нашими партнерами, помогая им на протяжении всего процесса разработки высококачественных игр.</h1>
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

			<span class="text1-b2"> <font color="#e2db19">ГАЛЕРЕЯ</font> <br>

			</span>
		</div>
	</div>
	<!-- block 6 -->
	<div class=" b6">
		<span class="spanBG">НАШИ КОНТАКТЫ</span>
		<div class="b6-block0"></div>
		<!-- call back -->
		<div class="b6-block1">
			<div class="end-callback">
				<%-- 				<form:form action="messageCall" target="_blank" modelAttribute="user" method="post" id="formMessageCall"> --%>
				<p class="textbott">
					Дайте нам шанс <br> <font color="#e2db19">Связаться с нами</font>
				</p>
				<div class="sidenavblock1">
					<div class="sidenavbloc">
						<label class="text-callbakc">Имя</label><br> <input
							class="end-callbackblock" type="text" name="name"
							id="nameUser-bottom">
						<div class="">
							<label class="text-callbakc">E-mail</label><br> <input
								class="end-callbackblock" type="text" name="email"
								id="email-bottom">
						</div>
						<div class="">
							<label class="text-callbakc">Сообщение</label> <input
								class="end-callbackmess" name="message" id="message-bottom">
						</div>
					</div>
					<button type="submit" class="button"
						onclick="validationEmailOfPhoneFormBottom()">Отправить</button>
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
<!-- 		<div class="foot1">Contacts</div> -->
		<div class="foot2"><h2><p class="foot2-p1">Contacts</p></h2>
			<p class="foot2-p2">Ukr-lviv </p>
 			<p class="foot2-p3"> Mobile phone: 096-369-03-91</p>
 			<p class="foot2-p4"> Email: ceo@m-plus.com</p>
		
		</div>
<!--  		<div class="foot3"><p>Contacts</p> -->
<!--  			<p>Ukr-lviv </p> -->
<!--  			<p> Mobile phone: 096-369-03-91</p> -->
<!--  			<p> Email: ceo@m-plus.com</p> -->
 		
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