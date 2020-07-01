<%@include file="common/header.jspf"%>
<div class="container">
	<br>
	<h1>Eventi</h1>
	<hr>
	<ul class="nav nav-tabs" id="myTab" role="tablist">
		<li class="nav-item"><a class="nav-link active" data-toggle="tab"
			href="#Tutto" role="tab"><i class="fas fa-list"></i> Tutto</a></li>
		<li class="nav-item"><a class="nav-link" data-toggle="tab"
			href="#Sport" role="tab"><i class="fas fa-futbol"></i> Sport</a></li>
		<li class="nav-item"><a class="nav-link" data-toggle="tab"
			href="#Studio" role="tab"><i class="fas fa-book"></i>
				Studio</a></li>
		<li class="nav-item"><a class="nav-link" data-toggle="tab"
			href="#Giochi" role="tab"><i class="fas fa-chess-pawn"></i>Giochi</a></li>
		<li class="nav-item"><a class="nav-link" data-toggle="tab"
			href="#Altro" role="tab"><i class="far fa-lightbulb"></i>
				Altro...</a></li>
	</ul>
	<div class="tab-content" id="myTabContent">
		<div class="tab-pane fade show active" id="Tutto" role="tabpanel"
			aria-labelledby="home-tab">
			<c:if test="${allList.size() == 0}" var="event" scope="session">
				<h4 class="text-center py-3 empty-events">
					<i class="far fa-folder-open"></i> Nessun evento
				</h4>
			</c:if>
			<div class="col-md-6">
				<c:forEach var="event" items="${allList}">
					<br>
					<div class="card">
						<img class="card-img-top img-fluid" src="${event.image}" alt="">
						<div class="card-body">
							<h4 class="card-title">${event.title}</h4>
							<hr>
							<h5 class="card-title">${event.description}</h5>
							<p class="card-text">
								<b><i class="far fa-calendar-alt"></i> Data: ${event.date}</b>
							</p>
							<p class="card-text">
								<b><i class="fas fa-male"></i> Organizzatore:
									${event.username}</b>
							</p>
						</div>
						<a href="eventDetails?id=${event.id}" class="btn btn-primary"><i
							class="fas fa-external-link-alt"></i> Apri</a>
					</div>
				</c:forEach>
			</div>
		</div>
		<div class="tab-pane fade" id="Sport" role="tabpanel"
			aria-labelledby="sport-tab">
			<c:if test="${sportList.size() == 0}">
				<h4 class="text-center py-3 empty-events">
					<i class="far fa-folder-open"></i> Nessun evento
				</h4>
			</c:if>
			<div class=" col-md-4">
				<c:forEach var="event" items="${sportList}">
					<br>
					<div class="card">
						<img class="card-img-top img-fluid" src="${event.image}" alt="">
						<div class="card-body">
							<h4 class="card-title">${event.title}</h4>
							<hr>
							${event.description}
							<p class="card-text">
								<b><i class="far fa-calendar-alt"></i> Data: ${event.date}</b>
							</p>
							<p class="card-text">
								<b><i class="fas fa-male"></i> Organizzatore:
									${event.username}</b>
							</p>
						</div>
						<a href="eventDetails?id=${event.id}" class="btn btn-primary"><i
							class="fas fa-external-link-alt"></i> Apri</a>
					</div>
				</c:forEach>
			</div>
		</div>
		<div class="tab-pane fade" id="Scuola" role="tabpanel"
			aria-labelledby="scuola-tab">
			<c:if test="${istrList.size() == 0}">
				<h4 class="text-center py-3 empty-events">
					<i class="far fa-folder-open"></i> Nessun evento
				</h4>
			</c:if>
			<div class=" col-md-4">
				<c:forEach var="event" items="${scuolaList}">
					<br>
					<div class="card">
						<img class="card-img-top img-fluid" src="${event.image}" alt="">
						<div class="card-body">
							<h4 class="card-title">${event.title}</h4>
							<hr>
							<h5 class="card-title">${event.description}</h5>
							<p class="card-text">
								<b><i class="far fa-calendar-alt"></i> Data: ${event.date}</b>
							</p>
							<p class="card-text">
								<b><i class="fas fa-male"></i> Organizzatore:
									${event.username}</b>
							</p>
						</div>
						<a href="eventDetails?id=${event.id}" class="btn btn-primary"><i
							class="fas fa-external-link-alt"></i> Apri</a>
					</div>
				</c:forEach>
			</div>
		</div>
		<div class="tab-pane fade" id="Giochi" role="tabpanel"
			aria-labelledby="giochi-tab">
			<c:if test="${giochiList.size() == 0}">
				<h4 class="text-center py-3 empty-events">
					<i class="far fa-folder-open"></i> Nessun evento
				</h4>
			</c:if>
			<div class=" col-md-4">
				<c:forEach var="event" items="${giochiList}">
					<br>
					<div class="card">
						<img class="card-img-top img-fluid" src="${event.image}" alt="">
						<div class="card-body">
							<h4 class="card-title">${event.title}</h4>
							<hr>
							<h5 class="card-title">${event.description}</h5>
							<p class="card-text">
								<b><i class="far fa-calendar-alt"></i> Data: ${event.date}</b>
							</p>
							<p class="card-text">
								<b><i class="fas fa-male"></i> Organizzatore:
									${event.username}</b>
							</p>
						</div>
						<a href="eventDetails?id=${event.id}" class="btn btn-primary"><i
							class="fas fa-external-link-alt"></i> Apri</a>
					</div>
				</c:forEach>
			</div>
		</div>
		<div class="tab-pane fade" id="Altro" role="tabpanel"
			aria-labelledby="Altro...-tab">
			<c:if test="${altroList.size() == 0}">
				<h4 class="text-center py-3 empty-events">
					<i class="far fa-folder-open"></i> Nessun evento
				</h4>
			</c:if>
			<div class=" col-md-4">
				<c:forEach var="event" items="${altroList}">
					<br>
					<div class="card">
						<img class="card-img-top img-fluid" src="${event.image}" alt="">
						<div class="card-body">
							<h4 class="card-title">${event.title}</h4>
							<hr>
							<h5 class="card-title">${event.description}</h5>
							<p class="card-text">
								<b><i class="far fa-calendar-alt"></i> Data: ${event.date}</b>
							</p>
							<p class="card-text">
								<b><i class="fas fa-male"></i> Organizzatore:
									${event.username}</b>
							</p>
						</div>
						<a href="eventDetails?id=${event.id}" class="btn btn-primary"><i
							class="fas fa-external-link-alt"></i> Apri</a>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
</div>
<%@include file="common/footer.jspf"%>