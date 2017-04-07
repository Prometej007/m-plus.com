<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html lang="en">

<head>
<link rel="shortcut icon" href="img/logo_m-plus.png" " type="image/png">
<meta charset="UTF-8">
<title>M-pulse</title>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.js"></script>
<!-- <script type="text/javascript" src="js/ajax.js"></script> -->
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<link rel="stylesheet" href="css/log.css">
</head>
<body>
<script type="text/javascript">
$(window, document, undefined).ready(function() {

	  $('input').blur(function() {
	    var $this = $(this);
	    if ($this.val())
	      $this.addClass('used');
	    else
	      $this.removeClass('used');
	  });

	  var $ripples = $('.ripples');

	  $ripples.on('click.Ripples', function(e) {

	    var $this = $(this);
	    var $offset = $this.parent().offset();
	    var $circle = $this.find('.ripplesCircle');

	    var x = e.pageX - $offset.left;
	    var y = e.pageY - $offset.top;

	    $circle.css({
	      top: y + 'px',
	      left: x + 'px'
	    });

	    $this.addClass('is-active');

	  });

	  $ripples.on('animationend webkitAnimationEnd mozAnimationEnd oanimationend MSAnimationEnd', function(e) {
	    $(this).removeClass('is-active');
	  });

	});
</script>
<script type="text/javascript">

function sendEmailForUnlock() {

	$.ajax({

		url : 'sendEmailForUnlock?' + $('input[name=csrf_name]').val() + "="
				+ $('input[name=csrf_value]').val(),
		method : 'POST',
		contentType : 'application/json; charset=UTF-8',
		dataType : 'json',
		success : function(res) {

		}
	})

}

</script>

	<input type="hidden" name="csrf_name" value="${_csrf.parameterName}" />
	<input type="hidden" name="csrf_value" value="${_csrf.token}" />
	<div class="block">
		<form:form action="login" method="GET" >
			<div class="group">
				<input type="text" class="form" name="name"><span class="highlight"></span>
				<span class="bar"></span>
				<label>Name</label>
			</div>
			<div class="group">
				<input type="password" class="form" name="password"><span class="highlight"></span>
				<span class="bar"></span>
				<label>Password</label>			
			</div>
			<button type="submit" class="button buttonBlue">Login
			<div class="ripples buttonRipples"><span class="ripplesCircle"></span></div>
			</button>
			<a href="#" onclick="sendEmailForUnlock()">Forgot password?</a>
		</form:form>
		
		<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="js/login.js"></script>
	</div>
	

</body>