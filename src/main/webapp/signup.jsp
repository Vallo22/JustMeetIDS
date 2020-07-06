<%@include file="common/logOutHeader.jspf"%>
<div class="container">
	<form:form method="POST" modelAttribute="userForm">
		<hr>
		<h2 class="form-signin-heading" align="center">Crea un account</h2>
		<hr>
		<spring:bind path="username">
			<div class="form-group ${status.error ? 'has-error' : ''} col-md-6 offset-md-3">
				<h5>
					<i class="fas fa-user-circle"></i> Username
				</h5>
				<form:input type="text" path="username" class="form-control"
					placeholder="Username" autofocus="true"></form:input>
				<form:errors path="username"></form:errors>
			</div>
		</spring:bind>
		<hr>
		<spring:bind path="name">
				<div class="form-group ${status.error ? 'has-error' : ''} col-md-6 offset-md-3">
					<h5>
						<i class="fa fa-id-card-o"></i> Nome
					</h5>
					<form:input type="text" path="name" class="form-control"
						placeholder="Nome"></form:input>
					<form:errors path="name"></form:errors>
				</div>
			</spring:bind>

			<spring:bind path="surname">
				<div class="form-group ${status.error ? 'has-error' : ''} col-md-6 offset-md-3">
					<h5>
						<i class="fa fa-id-card-o"></i> Cognome
					</h5>
					<form:input type="text" path="surname" class="form-control"
						placeholder="Cognome"></form:input>
					<form:errors path="surname"></form:errors>
				</div>
			</spring:bind>
			<hr>
			<spring:bind path="email">
				<div class="form-group ${status.error ? 'has-error' : ''} col-md-6 offset-md-3">
					<h5>
						<i class="fa fa-envelope"></i> Email
					</h5>
					<form:input type="email" path="email" class="form-control"
						placeholder="E-mail"></form:input>
					<form:errors path="email"></form:errors>
				</div>
			</spring:bind>

			<spring:bind path="password">
				<div class="form-group ${status.error ? 'has-error' : ''} col-md-6 offset-md-3">
					<h5>
						<i class="fa fa-lock"></i> Password
					</h5>
					<form:input type="password" path="password" class="form-control"
						placeholder="Password" id="myInput"></form:input>
					<input type="checkbox" onclick="myFunction()"> Mostra
					Password<br>
					<form:errors path="password"></form:errors>
				</div>
			</spring:bind>

			<spring:bind path="passwordConfirm">
				<div class="form-group ${status.error ? 'has-error' : ''} col-md-6 offset-md-3">
					<h5>
						<i class="fa fa-lock"></i> Conferma Password
					</h5>
					<form:input type="password" path="passwordConfirm"
						class="form-control" placeholder="Conferma Password"></form:input>
					<form:errors path="passwordConfirm"></form:errors>
				</div>
			</spring:bind>
			<hr>
			<spring:bind path="city">
				<div class="form-group ${status.error ? 'has-error' : ''} col-md-6 offset-md-3">
					<h5>
						<i class="fa fa-map-marker"></i> Citta'
					</h5>
					<form:input type="text" path="city" class="form-control"
						placeholder="Citta'"></form:input>
					<form:errors path="city"></form:errors>
				</div>
			</spring:bind>	
		<hr>
		<br>
		<div class="text-center">
			<button class="btn btn-lg btn-danger col-md-3" type="submit">
				<i class="fas fa-location-arrow"></i> Registrati
			</button>
			<hr>
			<a href="/signin" class="btn btn-lg btn-danger" role="button"><i
				class="fas fa-user"></i> Hai gia' un account?</a>
		</div>
	</form:form>
</div>
<%@include file="common/footer.jspf"%>