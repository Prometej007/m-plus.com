<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html lang="en">

<head>
<link rel="shortcut icon" href="img/logo_m-plus.png" " type="image/png">
<meta charset="UTF-8">
<title>M-pulse</title>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.js"></script>
<script type="text/javascript" src="js/ajax.js"></script>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">

<link rel="stylesheet" href="log.css">
</head>
<body>

	<input type="hidden" name="csrf_name" value="${_csrf.parameterName}" />
	<input type="hidden" name="csrf_value" value="${_csrf.token}" />
	<div class="block">
		<form:form action="login" method="GET" >
			<h2 style="background-color: #ffe121">Login</h2>
			<input type="text" class="form" name="name">
			<br>
			<h2 style="background-color: #ffe121">Pass</h2>
			<input type="password" class="form" name="password">
			<button type="submit" class="button">Log</button>
		</form:form>

	</div>
</body>