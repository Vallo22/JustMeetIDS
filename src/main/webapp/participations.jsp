<%@include file="common/header.jspf"%>
<hr>
<div class="container">
	<div class="row">
		<h1>Eventi a cui partecipi</h1>
		<hr>
	</div>
	<hr>
	<div class="alert alert-danger col-md-12" role="alert" align="center">
		Gli eventi creati da te non appaiono in questa schermata. <a
			href="/myEvents">Clicca qui</a> per visualizzarli
	</div>
	<c:if test="${participations.size() == 0}">
		<h4 class="text-center py-3 empty-events">Nessun evento</h4>
	</c:if>
	<div class="row">
		<c:forEach var="event" items="${participations}">
			<div class="col-md-4">
				<form:form method="POST" modelAttribute="removeParticipation">
					<spring:bind path="id">
						<div class="card">
							<div class="card-body">
								<c:if test="${event.category == 'Sport'}">
									<img class="card-img-top"
										src="resources/img/sport.jpg">
								</c:if>
								<c:if test="${event.category == 'Studio'}">
									<img class="card-img-top"
										src="resources/img/study.jpg">
								</c:if>
								<c:if test="${event.category == 'Giochi'}">
									<img class="card-img-top"
										src="resources/img/games.jpg">
								</c:if>
								<c:if test="${event.category == 'Altro'}">
									<img class="card-img-top"
										src="resources/img/other.jpg">
								</c:if>
								<hr>
								<h4 class="card-title text-center">${event.title}</h4>
								<hr>
								<h5 class="card-text">${event.description}</h5>
								<br>
								<h5 class="card-text">
								<i class="far fa-calendar-alt"></i> Data: ${event.date}
								</h5>
								<h5 class="card-text">
								<i class="fa fa-user"></i> Organizzatore: ${event.username}
								</h5>
							</div>
							<div class="row">
								<div class="col text-center">
									<a href="eventDetails?id=${event.id}" class="btn btn-danger"><i
									class="fas fa-sign-in-alt"></i> Apri</a>
								</div>
								<div class="col text-center">
									<button id="removePartecipation" type="submit"
									class="btn btn-danger">
									<i class="fas fa-times-circle"></i> Abbandona
									</button>
								</div>
							</div>
							<br>
						</div>
						<div class="form-group invisible">
							<form:select type="text" path="id" class="form-control ">
								<form:option value="${event.id}"></form:option>
							</form:select>
						</div>
					</spring:bind>
				</form:form>
			</div>
		</c:forEach>
	</div>
</div>
<%@include file="common/footer.jspf"%>