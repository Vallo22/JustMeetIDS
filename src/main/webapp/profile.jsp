<%@include file="common/header.jspf"%>
<hr>
<div class="container">
	<form:form method="POST" modelAttribute="username">
		<h1 class="form-heading" align="center">Utente: ${user.username}</h1>
		<hr>
		<h4 align="center">Info e dati</h4>
		<hr>
		<ul class="list-group">
			<li class="list-group-item col-md-6 offset-md-3 text-center">
				<h5><i class="fa fa-id-card-o"></i> Nome: ${user.name}</h5>
			</li>
			<li class="list-group-item col-md-6 offset-md-3 text-center">
				<h5><i class="fa fa-id-card-o"></i> Cognome: ${user.surname}</h5>
			</li>
			<br>
			<li class="list-group-item col-md-6 offset-md-3 text-center">
				<h5><i class="fa fa-envelope"></i> Email: ${user.email}</h5>
			</li>
			<br>
			<li class="list-group-item col-md-6 offset-md-3 text-center">
				<h5><i class="fa fa-map-marker"></i> Citta': ${user.city}</h5>
			</li>
		</ul>
		<hr>
		<div class="text-center">
			<a class="btn btn-lg btn-danger" href="editUser" role="button">
				<i class="fa fa-pencil-square-o"></i> Modifica
			</a>
			<hr>
			<button class="btn btn-lg btn-danger" type="submit"
				onclick="return confirm('Il tuo account sarà eliminato definitivamente. Vuoi procedere?')">
				<i class="fas fa-trash-alt"></i> Elimina account
			</button>
		</div>
		<spring:bind path="username">
			<div class="form-group col-sm-3 invisible">
				<form:select type="text" path="username" class="form-control">
					<form:option value="${user.username}"></form:option>
				</form:select>
			</div>
		</spring:bind>
	</form:form>
</div>
<%@include file="common/footer.jspf"%>