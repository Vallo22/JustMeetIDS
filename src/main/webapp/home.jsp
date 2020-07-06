<%@include file="common/header.jspf"%>
<br>
<div class="text-center">
	<h1>Benvenuto su JustMeet,
		${pageContext.request.userPrincipal.name}!</h1>
	<hr>
	<h5>Organizzare eventi non e' mai stato cosi' semplice!</h5>
	<hr>
</div>
<img src="resources/img/home.png" class="d-block w-100" alt="">
<br>
<div class="container">
	<div class="row">
		<div class="col-md-4" align="center">
			<h3>Crea</h3>
			<p>Hai organizzato un calcetto ma ti manca il decimo? Crea subito un Evento per 
				far sapere di cos'hai bisogno a tutta la community.
			</p>
			<a href="newEvent" class="btn btn-danger" role="button"><i
				class="fa fa-plus-square-o"></i> Crea</a>
		</div>
		<hr>
		<div class="col-md-4" align="center">
			<h3>Controlla</h3>
			<p>Se hai piu impegni da tenere sott'occhio, verifica all'istante
				se qualcuno ha deciso di partecipare al tuo Evento.
			</p>
			<a href="myEvents" class="btn btn-danger" role="button"><i
				class="fa fa-calendar-check-o"></i> Controlla</a>
		</div>
		<hr>
		<div class="col-md-4" align="center">
			<h3>Partecipa</h3>
			<p>Hai un pomeriggio libero e vuoi fare qualcosa di diverso?
				Cerca tra i vari Eventi quello che fa piu' al tuo caso.
			</p>
			<a href="eventsList" class="btn btn-danger" role="button"><i
				class="fa fa-users"></i> Partecipa</a>
		</div>
	</div>
</div>
<%@include file="common/footer.jspf"%>