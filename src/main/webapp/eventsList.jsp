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
			href="#Giochi" role="tab"><i class="fas fa-chess-pawn"></i>
				Giochi</a></li>
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
		<div class="row">
			<c:forEach var="event" items="${allList}">
				<div class="col-md-4">
					<br>
					<div class="card">
						<img class="card-img-top img-fluid"
							src="resources/img/all.jpg" alt="">
						<div class="card-body">
							<h4 class="card-title text-center">${event.title}</h4>
							<hr>
							<h5 class="card-title">${event.description}</h5>
							<p class="card-text">
								<b><i class="far fa-calendar-alt"></i> Data:</b> ${event.date}
							</p>
							<p class="card-text">
								<b><i class="fa fa-user"></i> Organizzatore:</b>
									${event.username}
							</p>
						</div>
						<div class="col text-center">
						<a href="eventDetails?id=${event.id}" class="btn btn-danger"><i
							class="fas fa-external-link-alt"></i> Apri</a>
						</div>
						<br>
					</div>
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
			<div class="row">
			<c:forEach var="event" items="${sportList}">
				<div class="col-md-4">
					<br>
					<div class="card">
						<img class="card-img-top img-fluid"
							src="resources/img/sport.jpg">
						<div class="card-body">
							<h4 class="card-title text-center">${event.title}</h4>
							<hr>
							<h5 class="card-title">${event.description}</h5>
							<p class="card-text">
								<b><i class="far fa-calendar-alt"></i> Data:</b> ${event.date}
							</p>
							<p class="card-text">
								<b><i class="fa fa-user"></i> Organizzatore:</b>
									${event.username}
							</p>
						</div>
						<div class="col text-center">
						<a href="eventDetails?id=${event.id}" class="btn btn-danger"><i
							class="fas fa-external-link-alt"></i> Apri</a>
						</div>
						<br>
					</div>
				</div>
			</c:forEach>
		</div>
		</div>
		<div class="tab-pane fade" id="Studio" role="tabpanel"
			aria-labelledby="studio-tab">
			<c:if test="${studioList.size() == 0}">
				<h4 class="text-center py-3 empty-events">
					<i class="far fa-folder-open"></i> Nessun evento
				</h4>
			</c:if>
			<div class="row">
			<c:forEach var="event" items="${studioList}">
				<div class="col-md-4">
					<br>
					<div class="card">
						<img class="card-img-top img-fluid"
							src="resources/img/study.jpg">
						<div class="card-body">
							<h4 class="card-title text-center">${event.title}</h4>
							<hr>
							<h5 class="card-title">${event.description}</h5>
							<p class="card-text">
								<b><i class="far fa-calendar-alt"></i> Data:</b> ${event.date}
							</p>
							<p class="card-text">
								<b><i class="fa fa-user"></i> Organizzatore:</b>
									${event.username}
							</p>
						</div>
						<div class="col text-center">
						<a href="eventDetails?id=${event.id}" class="btn btn-danger"><i
							class="fas fa-external-link-alt"></i> Apri</a>
						</div>
						<br>
					</div>
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
			<div class="row">
			<c:forEach var="event" items="${giochiList}">
				<div class="col-md-4">
					<br>
					<div class="card">
						<img class="card-img-top img-fluid"
							src="resources/img/games.jpg">
						<div class="card-body">
							<h4 class="card-title text-center">${event.title}</h4>
							<hr>
							<h5 class="card-title">${event.description}</h5>
							<p class="card-text">
								<b><i class="far fa-calendar-alt"></i> Data:</b> ${event.date}
							</p>
							<p class="card-text">
								<b><i class="fa fa-user"></i> Organizzatore:</b>
									${event.username}
							</p>
						</div>
						<div class="col text-center">
						<a href="eventDetails?id=${event.id}" class="btn btn-danger"><i
							class="fas fa-external-link-alt"></i> Apri</a>
						</div>
						<br>
					</div>
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
			<div class="row">
			<c:forEach var="event" items="${altroList}">
				<div class="col-md-4">
					<br>
					<div class="card">
						<img class="card-img-top img-fluid"
							src="resources/img/other.jpg">
						<div class="card-body">
							<h4 class="card-title text-center">${event.title}</h4>
							<hr>
							<h5 class="card-title">${event.description}</h5>
							<p class="card-text">
								<b><i class="far fa-calendar-alt"></i> Data:</b> ${event.date}
							</p>
							<p class="card-text">
								<b><i class="fa fa-user"></i> Organizzatore:</b>
									${event.username}
							</p>
						</div>
						<div class="col text-center">
						<a href="eventDetails?id=${event.id}" class="btn btn-danger"><i
							class="fas fa-external-link-alt"></i> Apri</a>
						</div>
						<br>
					</div>
				</div>
			</c:forEach>
		</div>
		</div>
	</div>
</div>
<%@include file="common/footer.jspf"%>