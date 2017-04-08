<%@ page language="java" contentType="text/html; charset=UTF-8"
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
	<!-- top line -->
	<div class="top-admin">
		<a href="en" class="logo-admin">M-Pluse</a>
		<form:form action="logout" method="get">
			<button class="button-admin">LogOut</button>
		</form:form>
	</div>
	<!-- end of top line -->

	<!-- table -->
	<div class="main-admin">
		<table class="table-fill">
			<thead>
				<tr>
					<th class="text-left">Name</th>
					<th class="text-left">Stat</th>
				</tr>
			</thead>
			<tbody class="table-hover">
				<tr>
					<td class="text-left">homeUA</td>
					<td class="table-statistic-td-number">${homeUA}</td>
				</tr>
				<tr>
					<td class="text-left">homeEN</td>
					<td class="table-statistic-td-number">${homeEN}</td>
				</tr>
				<tr>
					<td class="text-left">homeRU</td>
					<td class="table-statistic-td-number">${homeRU}</td>
				</tr>
				<tr>
					<td class="text-left">downloadPresentationAR</td>
					<td class="table-statistic-td-number">${downloadPresentationAR}</td>
				</tr>
				<tr>
					<td class="text-left">downloadPresentationSite</td>
					<td class="table-statistic-td-number">${downloadPresentationSite}</td>
				</tr>
				<tr>
					<td class="text-left">presentationSiteEN</td>
					<td class="table-statistic-td-number">${presentationSiteEN}</td>
				</tr>
				<tr>
					<td class="text-left">presentationSiteRU</td>
					<td class="table-statistic-td-number">${presentationSiteRU}</td>
				</tr>
				<tr>
					<td class="text-left">presentationSiteUA</td>
					<td class="table-statistic-td-number">${presentationSiteUA}</td>
				</tr>
				<tr>
					<td class="text-left">presentationVREN</td>
					<td class="table-statistic-td-number">${presentationVREN}</td>
				</tr>
				<tr>
					<td class="text-left">presentationVRRU</td>
					<td class="table-statistic-td-number">${presentationVRRU}</td>
				</tr>
				<tr>
					<td class="text-left">presentationVRUA</td>
					<td class="table-statistic-td-number">${presentationVRUA}</td>
				</tr>
				<tr>
					<td class="text-left">messageHome</td>
					<td class="table-statistic-td-number">${messageHome}</td>
				</tr>
				<tr>
					<td class="text-left">messageSite</td>
					<td class="table-statistic-td-number">${messageSite}</td>
				</tr>
				<tr>
					<td class="text-left">messageVR</td>
					<td class="table-statistic-td-number">${messageVR}</td>
				</tr>
			</tbody>
		</table>
		<!-- end of table -->
		<div>
			<div>
				<button class="profilebutton"
					onclick="document.getElementById('GalleryImage').style.display='block'"
					style="">Gallery</button>

				<div id="GalleryImage" class="modal" ${GalleryImage.string}>

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
												<input type="file" name="image" id="multipartFile">
												<input type="text" name="name" placeholder="Name"
													id="nameImgsss">
												<button id="saveImage">save image</button>
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

			<div id="Game" class="modal" ${GameFromSave.string}>

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
								<img src="${game.path}" alt="add foto" /> <a
									href="deleteGame/${game.id}">&times;</a>
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
									<div style="width: 50px; height: 50px; color: black;">mail
										:</div>
									<div>

										<select id="userSelect" multiple="multiple"
											style="width: 200px;">
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

					<div id="PATH" class="modal"${FileFromSave.string} }>

						<div class="modal-content animate">
							<div class="imgcontainer">
								<span
									onclick="document.getElementById('PATH').style.display='none'"
									class="close" title="Close Modal">&times;</span>
							</div>
							<div class="imgcontainer">
								<p>imgcontainer</p>
							</div>

							<div class="container" id="fileContainer">


								<c:forEach var="file" items="${files}">

									<div style="color: black;">
										<div>
											<div style="width: 30%; height: 50px; display: inline-block;">
												<p>${file.name}</p>
											</div>
											<div style="width: 30%; height: 50px; display: inline-block;">
												<p>${file.publicPath}${file.id}</p>
											</div>
											<a onclick="deleteFile('${file.id}')"
												style="width: 30%; height: 50px; display: inline-block;"
												href="#">&times;</a>
										</div>

									</div>

								</c:forEach>


								<div class="container" style="background-color: #f1f1f1">
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
								</div>
								<button type="button"
									onclick="document.getElementById('PATH').style.display='none'"
									class="cancelbtn">Cancel</button>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>