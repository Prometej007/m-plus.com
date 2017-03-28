<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
<meta charset="UTF-8">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.js"></script>
<link rel="shortcut icon" href="img/logo_m-plus.png" " type="image/png">
<meta charset="UTF-8">
<title>M-Plus Admin Page</title>
<script src="js/jquery-3.2.0.min.js"></script>
<script src="js/ajax.js"></script>
<link rel="stylesheet" href="css/menu.css">
<link rel="stylesheet" href="css/select.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/style1.css">
<link rel="stylesheet" href="css/stylefooter.css">
<link rel="stylesheet" href="css/styleicon.css">
<link rel="stylesheet" href="css/galleria.classic.css">

<link href="https://fonts.googleapis.com/css?family=Lato:900"
	rel="stylesheet">
<link rel="stylesheet" href="css/admin.css">

</head>
<body>
	<script src="js/multiple-select.js"></script>
	<script type="text/javascript">
		// 		$("select").multipleSelect();
	</script>
	<script type="text/javascript">
		$(window).on('load', function() {
			loadUserSelect();

		});
	</script>

	<input type="hidden" name="csrf_name" value="${_csrf.parameterName}" />
	<input type="hidden" name="csrf_value" value="${_csrf.token}" />
	<input type="hidden" name="name" value="${user-password}" />
	<input type="hidden" name="password" value="${user-name}" />
	<!-- nav bar -->
	<nav class="nav">
		<div class="nav1">
			<div class="navmenu">
				<a href="#we" class="navtag">WE</a> <a href="#work" class="navtag">WORK</a>
				<a href="#blog" class="navtag">BLOG</a> <a href="#gall"
					class="navtag">GALLARY</a> <a href="#cont" class="navtag">CONTACT</a>
				<div>

					<form:form action="logout" method="get">

						<button class="button">LogOut</button>
					</form:form>

				</div>
			</div>
			<a href="en" class="navlogo">M-Pulse</a>
		</div>
	</nav>
	<!--  call back-->
	<br>

	<!--  first block -->
	<div class="B00">
		<div class=" b1 "></div>
	</div>
	<div>
		<div>
			<!-- 			homeEN homeRU homeUA downloadPresentationAR downloadPresentationSite -->
			<!-- 			presentationSiteEN presentationSiteRU presentationSiteUA -->
			<!-- 			presentationVREN presentationVRRU presentationVRUA -->
			<div class="statistic">

				<table class="table-statistic">
					<tr>
						<td class="table-statistic-td-name">homeUA</td>
						<td class="table-statistic-td-number">${homeUA}</td>
					</tr>
					<tr>
						<td class="table-statistic-td-name">homeEN</td>
						<td class="table-statistic-td-number">${homeEN}</td>
					</tr>
					<tr>
						<td class="table-statistic-td-name">homeRU</td>
						<td class="table-statistic-td-number">${homeRU}</td>
					</tr>
					<tr>
						<td class="table-statistic-td-name">downloadPresentationAR</td>
						<td class="table-statistic-td-number">${downloadPresentationAR}</td>
					</tr>
					<tr>
						<td class="table-statistic-td-name">downloadPresentationSite</td>
						<td class="table-statistic-td-number">${downloadPresentationSite}</td>
					</tr>
					<tr>
						<td class="table-statistic-td-name">presentationSiteEN</td>
						<td class="table-statistic-td-number">${presentationSiteEN}</td>
					</tr>
					<tr>
						<td class="table-statistic-td-name">presentationSiteRU</td>
						<td class="table-statistic-td-number">${presentationSiteRU}</td>
					</tr>
					<tr>
						<td class="table-statistic-td-name">presentationSiteUA</td>
						<td class="table-statistic-td-number">${presentationSiteUA}</td>
					</tr>
					<tr>
						<td class="table-statistic-td-name">presentationVREN</td>
						<td class="table-statistic-td-number">${presentationVREN}</td>
					</tr>
					<tr>
						<td class="table-statistic-td-name">presentationVRRU</td>
						<td class="table-statistic-td-number">${presentationVRRU}</td>
					</tr>
					<tr>
						<td class="table-statistic-td-name">presentationVRUA</td>
						<td class="table-statistic-td-number">${presentationVRUA}</td>
					</tr>

				</table>

			</div>

			<br>




		</div>
		<div>

			<div>
				<button class="profilebutton"
					onclick="document.getElementById('GalleryImage').style.display='block'"
					style="">Gallery</button>

				<div id="GalleryImage" class="modal">

					<div class="modal-content animate">
						<div class="imgcontainer">
							<span
								onclick="document.getElementById('GalleryImage').style.display='none'"
								class="close" title="Close Modal">&times;</span>
						</div>
						<div class="imgcontainer">
							<p>imgcontainer</p>
						</div>

						<div class="container">

							<c:forEach var="img" items="${imgs}">

								<div>
									<img src="${img.path}" alt="add foto"> <a
										href="deleteImg/${img.id}">&times;</a>

								</div>

								<p>${img.name}</p>
							</c:forEach>
						</div>


						<div class="container" style="background-color: #f1f1f1">

							<div>
								<button class="profilebutton"
									onclick="document.getElementById('addphoto').style.display='block'"
									style="">addphoto</button>

								<div id="addphoto" class="modal">

									<div class="modal-content animate">
										<div class="imgcontainer">
											<span
												onclick="document.getElementById('addphoto').style.display='none'"
												class="close" title="Close Modal">&times;</span>
										</div>
										<div class="imgcontainer">
											<p>imgcontainer</p>
										</div>

										<div class="container">
											<form:form
												action="./saveImg?${_csrf.parameterName}=${_csrf.token}"
												method="post" enctype="multipart/form-data">
												<input type="file" name="image">
												<input type="text" name="name" placeholder="Name">
												<button>save image</button>
											</form:form>
										</div>
										<div class="container" style="background-color: #f1f1f1">
											<button type="button"
												onclick="document.getElementById('addphoto').style.display='none'"
												class="cancelbtn">Cancel</button>

										</div>
									</div>
								</div>
							</div>

							<button type="button"
								onclick="document.getElementById('GalleryImage').style.display='none'"
								class="cancelbtn">Cancel</button>

						</div>
					</div>
				</div>
			</div>
		</div>



		<div>
			<button class="profilebutton"
				onclick="document.getElementById('Game').style.display='block'"
				style="">Game</button>

			<div id="Game" class="modal">

				<div class="modal-content animate">
					<div class="imgcontainer">
						<span
							onclick="document.getElementById('Game').style.display='none'"
							class="close" title="Close Modal">&times;</span>
					</div>
					<div class="imgcontainer">
						<p>imgcontainer</p>
					</div>

					<div class="container">
						<c:forEach var="game" items="${games}">
							<p>${game.name}</p>
							<div>
								<img src="${game.path}" alt="add foto"> <a
									href="deleteGame/${game.id}">&times;</a> </img>
							</div>

						</c:forEach>
					</div>
					<div class="container" style="background-color: #f1f1f1">

						<div>
							<button class="profilebutton"
								onclick="document.getElementById('addgame').style.display='block'"
								style="">addgame</button>

							<div id="addgame" class="modal">

								<div class="modal-content animate">
									<div class="imgcontainer">
										<span
											onclick="document.getElementById('addgame').style.display='none'"
											class="close" title="Close Modal">&times;</span>
									</div>
									<div class="imgcontainer">
										<p>imgcontainer</p>
									</div>

									<div class="container">
										<form:form
											action="./saveGame?${_csrf.parameterName}=${_csrf.token}"
											method="post" enctype="multipart/form-data">
											<input type="file" name="game">
											<input type="text" name="name" placeholder="Name">
											<input type="text" name="pathA" placeholder="Link">
											<button>save game</button>
										</form:form>

									</div>
									<div class="container" style="background-color: #f1f1f1">
										<button type="button"
											onclick="document.getElementById('addgame').style.display='none'"
											class="cancelbtn">Cancel</button>

									</div>
								</div>
							</div>
						</div>


						<button type="button"
							onclick="document.getElementById('Game').style.display='none'"
							class="cancelbtn">Cancel</button>

					</div>
				</div>
			</div>
		</div>
		<br>




	</div>


	</div>




	<div>
		<button class="profilebutton"
			onclick="document.getElementById('Message').style.display='block'"
			style="">Message</button>
		<div id="Message" class="modal">
			<div class="modal-content animate">
				<div class="imgcontainer">

					<span
						onclick="document.getElementById('Message').style.display='none'"
						class="close" title="Close Modal">&times;</span>
				</div>
				<div class="imgcontainer">
					<p>imgcontainer</p>
				</div>

				<div class="container">
					<div id="allMessages">
						<c:forEach var="message" items="${WASREADMESSAGE}">


							<div>


								<div id="message${message.id}" class="modal">

									<div class="modal-content animate">
										<div class="imgcontainer">
											<span
												onclick="document.getElementById('message${message.id}').style.display='none'"
												class="close" title="Close Modal">&times;</span>
										</div>
										<div class="imgcontainer">
											<p>imgcontainer</p>
										</div>


										<div class="container" style="color: black;">

											<div>

												<p>name : [ ${message.name} ]</p>


											</div>
											<div>

												<p>email : [ ${message.email} ]</p>


											</div>
											<div>

												<p>phone : [ ${message.phone} ]</p>



											</div>
											<div>

												<p>message : [ ${message.message} ]</p>



											</div>



										</div>
										<div class="container" style="background-color: #f1f1f1">
											<button type="button"
												onclick="document.getElementById('message${message.id}').style.display='none'"
												class="cancelbtn">Cancel</button>

										</div>
									</div>
								</div>
							</div>



						</c:forEach>
						<div id="wrapperreadmessagebutton">
							<div id="onreadmessagebutton">
								<c:forEach var="message" items="${ONREADMESSAGE}">

									<button class="profilebutton"
										onclick="document.getElementById('message${message.id}').style.display='block';wasRead(${message.id});"
										style="">${message.name}</button>

								</c:forEach>
							</div>
							<div id="wasreadmessagebutton">
								<c:forEach var="message" items="${WASREADMESSAGE}">
									<button class="profilebutton"
										onclick="document.getElementById('message${message.id}').style.display='block'"
										style="">${message.name}</button>
								</c:forEach>
							</div>
						</div>
						<c:forEach var="message" items="${ONREADMESSAGE}">




							<div id="message${message.id}" class="modal">

								<div class="modal-content animate">
									<div class="imgcontainer">
										<span
											onclick="document.getElementById('message${message.id}').style.display='none'"
											class="close" title="Close Modal">&times;</span>
									</div>
									<div class="imgcontainer">
										<p>imgcontainer</p>
									</div>


									<div class="container" style="color: black;">

										<div>

											<p>name : [ ${message.name} ]</p>


										</div>
										<div>

											<p>email : [ ${message.email} ]</p>


										</div>
										<div>

											<p>phone : [ ${message.phone} ]</p>



										</div>
										<div>

											<p>message : [ ${message.message} ]</p>



										</div>



									</div>
									<div class="container" style="background-color: #f1f1f1">
										<button type="button"
											onclick="document.getElementById('message${message.id}').style.display='none'"
											class="cancelbtn">Cancel</button>

									</div>
								</div>

							</div>
						</c:forEach>
						<div class="container" style="background-color: #f1f1f1">
							<button type="button"
								onclick="document.getElementById('Message').style.display='none'"
								class="cancelbtn">Canceleee</button>

						</div>
					</div>



				</div>
			</div>

		</div>
	</div>





	<!-- 		kuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu    -->


	<div>
		<div>
			<button class="profilebutton"
				onclick="document.getElementById('emailsander').style.display='block'"
				style="">Email Sander</button>
			<div id="emailsander" class="modal">
				<div class="modal-content animate">
					<div class="imgcontainer">
						<span
							onclick="document.getElementById('emailsander').style.display='none'"
							class="close" title="Close Modal">&times;</span>
					</div>
					<div class="imgcontainer">
						<p>imgcontainer</p>
					</div>

					<div class="container">
						<div style="width: 50px; height: 50px; color: black;">mail :</div>
						<div>

							<select id="userSelect" multiple="multiple" style="width: 200px;">
							</select>
						</div>

						<div style="width: 50px; height: 50px; color: black;">theme-email
							:</div>
						<div>

							<textarea rows="" cols="" id="theme-email"></textarea>

							<div style="width: 50px; height: 50px; color: black;">message
								:</div>
							<div>

								<textarea rows="" cols="" id="messageForEmail"></textarea>

								<button onclick="emailObject()">SEND EMAILS</button>
							</div>

						</div>
						<div class="container" style="background-color: #f1f1f1">
							<button type="button"
								onclick="document.getElementById('emailsander').style.display='none'"
								class="cancelbtn">Cancel</button>
							<!-- ------mailbodydownload start -->
							<div>
								<button class="profilebutton"
									onclick="document.getElementById('emailbody').style.display='block'"
									style="">emailbody</button>
								<div id="emailbody" class="modal">
									<div class="modal-content animate">
										<div class="imgcontainer">
											<span
												onclick="document.getElementById('emailbody').style.display='none'"
												class="close" title="Close Modal">&times;</span>
										</div>
										<div class="imgcontainer">
											<p>imgcontainer</p>
										</div>

										<div class="container">
											<div style="width: 50px; height: 50px; color: black;">email-body
												:</div>
											<div>

												<textarea rows="" cols="" id="emailbodyinput"
													id="emailbodyinput"><div>~~~</div></textarea>


											</div>
											<div class="container" style="background-color: #f1f1f1">
												<button type="button"
													onclick="document.getElementById('emailbody').style.display='none'"
													class="cancelbtn">Cancel</button>

											</div>
										</div>
									</div>
								</div>
								<!-- ------mailbodydownload end -->
								<div class="container" style="background-color: #f1f1f1">




								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div>
		<button class="profilebutton"
			onclick="document.getElementById('File').style.display='block'"
			style="">add File</button>

		<div id="File" class="modal">

			<div class="modal-content animate">
				<div class="imgcontainer">
					<span
						onclick="document.getElementById('File').style.display='none'"
						class="close" title="Close Modal">&times;</span>
				</div>
				<div class="imgcontainer">
					<p>imgcontainer</p>
				</div>

				<div class="container">
					<form:form
						action="./saveFile?${_csrf.parameterName}=${_csrf.token}"
						method="post" enctype="multipart/form-data">
						<input type="file" name="file">
						<input type="text" name="name" placeholder="Name">
						<button>save file</button>
					</form:form>
				</div>
				<div class="container" style="background-color: #f1f1f1">
					<button type="button"
						onclick="document.getElementById('File').style.display='none'"
						class="cancelbtn">Cancel</button>

				</div>
			</div>
		</div>
	</div>




	<!-- 		kuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu    -->


	<!-- console start -->

	<div>
		<button class="profilebutton"
			onclick="document.getElementById('console').style.display='block'"
			style="">console</button>

		<div id="console" class="modal">

			<div class="modal-content animate">
				<div class="imgcontainer">
					<span
						onclick="document.getElementById('console').style.display='none'"
						class="close" title="Close Modal">&times;</span>
				</div>
				<div class="imgcontainer">
					<p>imgcontainer</p>
				</div>


				<div class="container">

					<div id="admin-console-div"
						style="overflow: scroll; margin: auto; width: 80%; height: 500px; max-width: 80%; max-height: 500px; background: black; color: white;"></div>
				</div>
				<div class="container" style="background-color: #f1f1f1">
					<button type="button"
						onclick="document.getElementById('console').style.display='none'"
						class="cancelbtn">Cancel</button>

				</div>
			</div>
		</div>
	</div>

	<div>
		<button class="profilebutton"
			onclick="document.getElementById('PATH').style.display='block'"
			style="">File</button>

		<div id="PATH" class="modal">

			<div class="modal-content animate">
				<div class="imgcontainer">
					<span
						onclick="document.getElementById('PATH').style.display='none'"
						class="close" title="Close Modal">&times;</span>
				</div>
				<div class="imgcontainer">
					<p>imgcontainer</p>
				</div>

				<div class="container">


					<c:forEach var="file" items="${files}">

						<div style="color: black;">
							<div>
								<div style="width: 30%; height: 50px; display: inline-block;">
									<p>${file.name}</p>
								</div>
								<div style="width: 30%; height: 50px; display: inline-block;">
									<p>download${file.id}</p>
								</div>
								<a style="width: 30%; height: 50px; display: inline-block;"
									href="deleteFile/${file.id}">&times;</a>
							</div>

						</div>

					</c:forEach>

				</div>
				<div class="container" style="background-color: #f1f1f1">
					<button type="button"
						onclick="document.getElementById('PATH').style.display='none'"
						class="cancelbtn">Cancel</button>

				</div>
			</div>
		</div>
	</div>

	<!-- console end -->
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
					
				</script>

	<script type="text/javascript" src="js/js.js"></script>
	<!--<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/babel-core/6.1.19/browser.min.js"></script>-->
	<script type="text/javascript" src="js/js1.js"></script>
	<script type="text/javascript" src="js/galleria.classic.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script type="text/javascript" src="js/galleria-1.2.2.js"></script>
	<script type="text/javascript" src="js/js.js"></script>
	<script type="text/javascript" src="js/multiple-select.js"></script>
</body>