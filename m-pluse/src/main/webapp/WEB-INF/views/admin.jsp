<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
	 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>M-GS</title>

	<script src="js/ajax.js"></script>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/style1.css">
    <link rel="stylesheet" href="css/stylefooter.css">
    <link rel="stylesheet" href="css/styleicon.css">
    <link rel="stylesheet" href="css/galleria.classic.css">
    <link href="https://fonts.googleapis.com/css?family=Lato:900" rel="stylesheet">
    
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
        <a href="#we" class="navtag">WE</a>
        <a href="#work" class="navtag">WORK</a>
        <a href="#blog" class="navtag">BLOG</a>
        <a href="#gall" class="navtag">GALLARY</a>
        <a href="#cont" class="navtag">CONTACT</a>
    </div>
    <a href="#home" class="navlogo">M-GS</a>
</div>
</nav>
<!--  call back-->
<br>

<!--  first block -->
<div class="B00">
<div  class=" b1 ">
   
</div>
</div>
<div>
<div>									
<c:forEach var="img" items="${imgs}" >
	
		<img src="${img.path}" alt="add foto">
		
		${img.name}
		
	</c:forEach>

<br>

<form:form action="./saveImg?${_csrf.parameterName}=${_csrf.token}"
	method="post" enctype="multipart/form-data">
	<input type="file" name="image">
	<input type="text" name="name" placeholder="Name">
	<button>save image</button>
</form:form>

<c:forEach var="img" items="${imgs}" >
		${img.name}
		<a href="deleteImg/${img.id}">delete img</a>
	</c:forEach>
</div>
<div>
<c:forEach var="game" items="${games}" >
	
		<img src="${game.path}" alt="add foto">
		{game.pathA}
		<br>
		${game.name}
		
	</c:forEach>

<br>

<form:form action="./saveGame?${_csrf.parameterName}=${_csrf.token}"
	method="post" enctype="multipart/form-data">
	<input type="file" name="game">
	<input type="text" name="name" placeholder="Name">
	<input type="text" name="pathA" placeholder="Link">
	<button>save game</button>
</form:form>

<c:forEach var="game" items="${games}" >
		${game.name}
		<a href="deleteGame/${game.id}">delete game</a>
	</c:forEach>
</div>


</div>

<div>

<button onclick="messageLoad()">messageLoad()</button>
<div id="allMessages"></div>






</div>

<!-- block 7 -->
<footer class="b7">
    <div class="foot0">
        <H1 style="font-size: 33px; color:rgb(226, 219, 25); font-family: 'Montserrat', sans-serif;; text-align: left">Follow us:</H1>
        <div class="row"><i class="entypo-facebook" style="width: 40px; height: 40px;"></i>
            <i class="entypo-twitter" style="width: 40px; height: 40px;" ></i>
            <i class="entypo-gplus" style="width: 40px; height: 40px;"></i>
            <i class="entypo-pinterest" style="width: 40px; height: 40px;"></i>
            <i class="entypo-dribbble" style="width: 40px; height: 40px;"></i></div>
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

    <script type="text/javascript" src="js/js.js"></script>
    <!--<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/babel-core/6.1.19/browser.min.js"></script>-->
    <script type="text/javascript" src="js/js1.js"></script>
    <script type="text/javascript" src="js/galleria.classic.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script type="text/javascript" src="js/galleria-1.2.2.js"></script>
    <script type="text/javascript" src="js/js.js"></script>
    <scrtpt></scrtpt>
</body>
