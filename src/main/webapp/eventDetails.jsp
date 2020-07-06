<%@include file="common/header.jspf"%>
<hr>
<div class="container">
	<div class="row">
		<div class="shadow-sm p-3 mb-5 bg-white rounded col-sm-6">
			<img class="card-img-top" id="image">
		</div>
		<div class="col-md-6">
			<h4>
				<i class="fas fa-heading"></i> Titolo
			</h4>
			<div class="shadow-sm p-3 mb-5 bg-white rounded">
				<h2>${event.title}</h2>
			</div>
			<h4>
				<i class="far fa-comment-alt"></i> Descrizione
			</h4>
			<div class="shadow-sm p-3 mb-5 bg-white rounded">
				<h5>${event.description}</h5>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-6">
			<h4>
				<i class="far fa-address-book"></i> Contatti
			</h4>
			<div class="shadow-sm p-3 mb-5 bg-white rounded">
				<h5>
					<i class="fa fa-user"></i> Organizzatore: ${event.username}
				</h5>
				<hr>
				<div class="container row">
					<h5>
					<i class="fa fa-envelope"></i> Email: ${user.email}
					</h5>
					<hr>
					<button type="button" class="btn btn-danger" data-toggle="modal"
							data-target="#emailView">
							<i class="fa fa-paper-plane"></i>
					</button>
				</div>
			</div>
			<div class="modal fade" id="emailView" tabindex="-1" role="dialog"
				aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
				<div class="modal-dialog modal-dialog-scrollable" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalScrollableTitle">Invia
								un email a ${event.username}</h5>
						</div>
						<form method="POST" action="mailto:${user.email}"
							enctype="text/plain">
							<div class="modal-body">
								<h5>Oggetto del messaggio</h5>
								<input type="text" name="subject" class="form-control">
								<hr>
								<h5>Testo</h5>
								<textarea name="body" class="form-control"></textarea>
							</div>
							<div class="row">
								<div class="col text-center">
								<button class="btn btn-danger" type="submit">
									<i class="fa fa-paper-plane-o"></i> Invia
								</button>
								</div>
								<div class="col text-center">
								<button type="button" class="text-center btn btn-danger"
									data-dismiss="modal">
								<i class="fas fa-window-close"></i> Chiudi
								</button>
							</div>
						</div>
						<br>
						</form>
					</div>
				</div>
			</div>

			<h4>
				<i class="fas fa-globe"></i> Dove
			</h4>
			<div class="shadow-sm p-3 mb-5 bg-white rounded">
				<h5>
					<i class="fas fa-map-marked-alt"></i> Citta': ${event.city}
				</h5>
				<hr>
				<h5>
					<i class="fas fa-map-pin"></i> Luogo / Via: ${event.place}
				</h5>
			</div>
		</div>
		<div class="col-md-6">
			<h4>
				<i class="fas fa-info-circle"></i> Info
			</h4>
			<div class="shadow-sm p-3 mb-5 bg-white rounded">
				<div class="container row">
					<h5>
						<i class="fas fa-user-friends"></i> Partecipanti:
						${event.users.size()} / ${event.max_member}
					</h5>
					<hr>
					<button type="button" class="btn btn-danger" data-toggle="modal"
						data-target="#participantsView">
						<i class="fas fa-user-check"></i>
					</button>
				</div>
				<div class="modal fade" id="participantsView" tabindex="-1"
					role="dialog" aria-labelledby="exampleModalScrollableTitle"
					aria-hidden="true">
					<div class="modal-dialog modal-dialog-scrollable" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="exampleModalScrollableTitle">Partecipanti</h5>
							</div>
							<div class="modal-body">
								<c:if test="${event.users.size() == 0}">
									<h4 class="text-center py-3 empty-events">
										<i class="fas fa-user-alt-slash"></i> Nessun utente
									</h4>
								</c:if>
								<c:forEach var="user" items="${event.users}">
							${user.username}
							<br>
								</c:forEach>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-danger"
									data-dismiss="modal">Chiudi</button>
							</div>
						</div>
					</div>
				</div>
				<hr>
				<h5>
					<i class="fas fa-money-bill-wave"></i> Costo: &euro; ${event.cost}
				</h5>
			</div>
			<h4>
				<i class="far fa-calendar-alt"></i> Quando
			</h4>
			<div class="shadow-sm p-3 mb-5 bg-white rounded">
				<h5>
					<i class="far fa-calendar-check"></i> Data: ${event.date}
				</h5>
				<hr>
				<h5>
					<i class="far fa-clock"></i> Orario: ${event.time}
				</h5>
			</div>
		</div>
	</div>
	<div class="text-center col-lg-12">
		<form:form method="POST" modelAttribute="addParticipation">
			<spring:bind path="id">
				<button id="addParticipation" type="submit"
					class="btn btn-danger col-sm-6">
					<i class="fas fa-check-circle"></i> Partecipa
				</button>
				<div class="form-group invisible">
					<form:select type="text" path="id" class="form-control">
						<form:option value="${event.id}"></form:option>
					</form:select>
				</div>
			</spring:bind>
		</form:form>
		<div class="alert alert-danger col-sm-12" id="alert" role="alert">
			<i class="fas fa-user-check"></i> Partecipi gia' a questo evento!
		</div>
	</div>
</div>
<%@include file="common/footer.jspf"%>