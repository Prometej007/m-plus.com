<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="UTF-8"%> 
   <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %> 
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Pochti adminka</title>
    <link rel="stylesheet" href="log.css">
</head>
<body>
<div class="block">
<form:form action="loginprocesing" method="get">
    <h2 style="background-color:#ffe121 "> Login</h2>
    <input type="text" class="form
" name="username">
    <br>
    <h2 style="background-color:#ffe121 ">Pass</h2>
    <input type="password" class="form
" name="password">
    <button type="submit" class="button">Log</button>
   </form:form>
  
</div>
</body>
