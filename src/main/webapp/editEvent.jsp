<%@include file="common/header.jspf"%>
<div class="container">
	<form:form method="POST" modelAttribute="event">
		<hr>
		<h1 class="form-heading text-center">Modifica evento</h1>
		<hr>
		<div class="row">
			<spring:bind path="title">
				<div class="form-group ${status.error ? 'has-error' : ''} col-md-6 offset-md-3">
					<h5><i class="fas fa-heading"></i> Titolo</h5>
					<form:input type="text" path="title" class="form-control"
						autofocus="true" value="${event.title}"></form:input>
					<form:errors path="title"></form:errors>
				</div>
			</spring:bind>
			<spring:bind path="description">
				<div class="form-group ${status.error ? 'has-error' : ''} col-md-6 offset-md-3">
					<h5><i class="far fa-comment"></i> Descrizione</h5>
					<form:textarea type="text" path="description" class="form-control"
						value="${event.description}"></form:textarea>
					<form:errors path="description"></form:errors>
				</div>
			</spring:bind>
		</div>
		<hr>
		<div class="row">
			<spring:bind path="category">
				<div class="form-group ${status.error ? 'has-error' : ''} col-md-6 offset-md-3">
					<h5><i class="fas fa-puzzle-piece"></i> Categoria</h5>
					<form:select type="text" path="category" class="form-control"
						value="${event.category}">
						<form:option value="Sport"></form:option>
						<form:option value="Studio"></form:option>
						<form:option value="Giochi"></form:option>
						<form:option value="Altro"></form:option>
					</form:select>
					<form:errors path="category"></form:errors>
				</div>
			</spring:bind>
			<spring:bind path="max_member">
				<div class="form-group ${status.error ? 'has-error' : ''} col-md-6 offset-md-3">
					<h5><i class="fas fa-user-friends"></i> Numero di partecipanti</h5>
					<form:input type="number" path="max_member" class="form-control"
						value="${event.max_member}"></form:input>
					<form:errors path="max_member"></form:errors>
				</div>
			</spring:bind>
		</div>
		<hr>
		<div class="row">
			<spring:bind path="city">
				<div class="form-group ${status.error ? 'has-error' : ''} col-md-6 offset-md-3">
					<h5><i class="fas fa-map-marked-alt"></i> Citta'</h5>
					<form:input type="text" path="city" class="form-control"
						value="${event.city}"></form:input>
					<form:errors path="city"></form:errors>
				</div>
			</spring:bind>
			<spring:bind path="place">
				<div class="form-group ${status.error ? 'has-error' : ''} col-md-6 offset-md-3">
					<h5><i class="fas fa-map-pin"></i> Luogo / Via</h5>
					<form:input type="text" path="place" class="form-control"
						value="${event.place}"></form:input>
					<form:errors path="place"></form:errors>
				</div>
			</spring:bind>
		</div>
		<hr>
		<div class="row">
			<spring:bind path="date">
				<div class="form-group ${status.error ? 'has-error' : ''} col-md-6 offset-md-3">
					<h5><i class="far fa-calendar-alt"></i> Data</h5>
					<form:input type="date" path="date" class="form-control"
						value="${event.date}"></form:input>
					<form:errors path="date"></form:errors>
				</div>
			</spring:bind>
			<spring:bind path="time">
				<div class="form-group col-md-6 offset-md-3">
					<h5><i class="far fa-clock"></i> Orario</h5>
					<form:input type="time" path="time" class="form-control"
						value="${event.time}"></form:input>
				</div>
			</spring:bind>
		</div>
		<hr>
		<div class="row">
			<spring:bind path="cost">
				<div class="form-group ${status.error ? 'has-error' : ''} col-md-6 offset-md-3">
					<h5><i class="fas fa-money-bill-wave"></i> Costo</h5>
					<div class="input-group-prepend">
						<div class="input-group-text">&euro;</div>
						<form:input type="number" path="cost" class="form-control"
							value="${event.cost}"></form:input>
					</div>
					<form:errors path="cost"></form:errors>
				</div>
			</spring:bind>
		</div>
		<div class="row">
			<spring:bind path="username">
				<div class="form-group col-sm-3 invisible">
					<form:select type="text" path="username" class="form-control">
						<form:option value="${event.username}"></form:option>
					</form:select>
				</div>
			</spring:bind>
		</div>
		<div class="row text-center col-sm-12">
			<button class="btn btn-lg btn-danger" type="submit">
				<i class="fa fa-floppy-o"></i> Salva
			</button>
			<hr>
			<a class="btn btn-lg btn-danger" role="button" href="myEvents"> <i
				class="fas fa-window-close"></i> Annulla
			</a>
		</div>
	</form:form>
</div>
<%@include file="common/footer.jspf"%>