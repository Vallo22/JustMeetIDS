<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>JustMeet</title>
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/style.css">

</head>
<body>

	<nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark">
		<div class="container-xl">
			<a class="navbar-brand" href="#" style="padding-top: 7px"> <img
				src="resources/img/logo.png" width="50" height="45"
				class="d-inline-block align-top" alt=""
				style="padding-top: 5px; padding-right: 10px;">JustMeet
			</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarsExample07XL" aria-controls="navbarsExample07XL"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarsExample07XL">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item active"><a class="nav-link" href="#">Home
							<span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item"><a class="nav-link" href="profilo.jsp">Profilo</a></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="dropdown07XL"
						data-toggle="dropdown" aria-expanded="false">Eventi</a>
						<div class="dropdown-menu" aria-labelledby="dropdown07XL">
					<li class="nav-item"><a class="nav-link"
						onclick="document.forms['logoutForm'].submit()">Logout</a></li>
				</ul>
				<form class="form-inline my-2 my-md-0">
					<input class="form-control" type="text" placeholder="Cerca evento"
						aria-label="Search">
				</form>
			</div>
		</div>
	</nav>

	<div class="container">
		<c:if test="${pageContext.request.userPrincipal.name != null}">
			<form id="logoutForm" method="POST" action="${contextPath}/logout">
				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" />
			</form>
		</c:if>
	</div>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
</body>
</html>