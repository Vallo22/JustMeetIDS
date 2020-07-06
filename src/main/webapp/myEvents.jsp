<%@include file="common/header.jspf"%>
<br>
<div class="container">
	<div class="row">
		<h1>I tuoi eventi</h1>
		<hr>
		<div>
			<a href="newEvent" class="btn btn-lg btn-light btn-block"><i
				class="fas fa-plus"></i> Nuovo evento </a>
		</div>
	</div>
	<hr>
	<c:if test="${list.size() == 0}">
		<h4 class="text-center py-3 empty-events">Nessun evento</h4>
	</c:if>
	<div class="row">
		<c:forEach var="event" items="${list}">
			<div class="col-sm-4">
				<br>
				<form:form method="POST" modelAttribute="id">
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
								<i class="far fa-calendar-alt"></i> ${event.date}
							</h5>
						</div>
						<div class="row text-center col-sm-13">
							<div class="col">
								<a href="eventDetails?id=${event.id}" 
									type="button"
									class="btn btn-danger">
									<i class="fas fa-external-link-alt"></i> Apri
								</a>
							</div>
							<div class="col">
								<a href="editEvent?id=${event.id}" 
									type="button"
									class="btn btn-danger"
									data-target="#participantsView">
									<i class="fa fa-pencil-square-o"></i> Mod
								</a>
							</div>
							<div class="col">
								<button type="submit" 
									class="btn btn-danger"
									onclick="return confirm('Eliminare definitivamente evento?')">
									<i class="fas fa-trash-alt"></i> Elim
								</button>
							</div>
						</div>
						<br>
					</div>
					<spring:bind path="id">
						<div class="form-group col-sm-3 invisible">
							<form:select type="text" path="id" class="form-control">
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