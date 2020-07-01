<%@include file="common/header.jspf"%>
<div class="container">
	<form:form method="POST" modelAttribute="user">
		<hr>
		<h1 class="form-heading">Modifica dati</h1>
		<hr>
		<div class="row">
			<spring:bind path="email">
				<div class="form-group ${status.error ? 'has-error' : ''} col-sm-3">
					<h5>
						<i class="far fa-envelope"></i> Email
					</h5>
					<form:input type="email" path="email" class="form-control"
						autofocus="true" value="${user.email}"></form:input>
					<form:errors path="email"></form:errors>
				</div>
			</spring:bind>
		</div>
		<hr>
		<div class="row">
			<spring:bind path="name">
				<div class="form-group ${status.error ? 'has-error' : ''} col-sm-3">
					<h5>
						<i class="fas fa-signature"></i> Nome
					</h5>
					<form:input type="text" path="name" class="form-control"
						value="${user.name}"></form:input>
					<form:errors path="name"></form:errors>
				</div>
			</spring:bind>
			<spring:bind path="surname">
				<div class="form-group ${status.error ? 'has-error' : ''} col-sm-3">
					<h5>
						<i class="fas fa-signature"></i> Cognome
					</h5>
					<form:input type="text" path="surname" class="form-control"
						value="${user.surname}"></form:input>
					<form:errors path="surname"></form:errors>
				</div>
			</spring:bind>
		</div>
		<hr>
			<spring:bind path="city">
				<div class="form-group ${status.error ? 'has-error' : ''} col-sm-3">
					<h5>
						<i class="fas fa-map-marked-alt"></i> Residenza
					</h5>
					<form:input type="text" path="city" class="form-control"
						value="${user.city}"></form:input>
					<form:errors path="city"></form:errors>
				</div>
			</spring:bind>
		</div>
		<spring:bind path="username">
			<div class="form-group col-sm-3 invisible">
				<form:select type="text" path="username" class="form-control">
					<form:option value="${user.username}"></form:option>
				</form:select>
			</div>
		</spring:bind>
		<hr>
		<button>Cambia password</button>
		<hr>
		<div class="row text-center col-sm-12">
			<button class="btn btn-lg btn-primary" type="submit">
				<i class="fas fa-save"></i> Salva
			</button>
			<hr>
			<a class="btn btn-lg btn-danger" role="button" href="account"> <i
				class="fas fa-window-close"></i> Annulla
			</a>
		</div>
	</form:form>
</div>
<%@include file="common/footer.jspf"%>