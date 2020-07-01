<%@include file="common/header.jspf"%>

<div class="container">
	<h2>Benvenuto su JustMeet
		${pageContext.request.userPrincipal.name}</h2>
	<hr>
	<div class="row">
		<div class="col-md-6">
			<a href="newEvent" class="btn btn-info" role="button"><i
				class="fas fa-plus"></i> Crea</a>
		</div>
		<hr>
		<div class="col-md-6">
			<a href="eventsList" class="btn btn-info" role="button"><i
				class="fas fa-sign-in-alt"></i> Partecipa</a>
		</div>
	</div>
</div>
<%@include file="common/footer.jspf"%>