<%@include file="common/header.jspf"%>
<div class="container">
	<h2>${pageContext.request.userPrincipal.name}</h2>
	<div class="row">
		<div class="col-md-6">
			<h3>${pageContext.request.userPrincipal.name}</h3>
			<p>Descrizione</p>
			<a href="eventDetails.jsp" class="btn btn-info" role="button">Partecipa</a>
		</div>
	</div>
</div>
<%@include file="common/footer.jspf"%>