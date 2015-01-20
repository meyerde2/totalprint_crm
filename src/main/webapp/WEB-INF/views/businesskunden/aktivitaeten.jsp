<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">

		<title>Geschäftskunden</title>

		<div class="body">
			<h1>Geschäftskunden - Aktivitäten</h1>


	<div class="container">
				<div class="row">
					<div class="col-md-8">
						<div class="well well-sm">

							<h2 class="content-title">Übersicht</h2>

							<input type="search" placeholder="Suche" class="form-control" />

							<ul class="mail-list">
								<li><a href="#"> <span class="mail-sender" id="first">10.01.2015
											| Kontaktgrund</span> <span class="mail-subject">Mitarbeitername
											| Kontaktmedium</span> <span class="mail-message-preview">Lorem
											ipsum dolor sit amet, consetetur sadipscing elitr, sed diam
											nonumy eirmod tempor invidunt ut labore et dolore magna
											aliquyam erat, sed diam voluptua. At vero eos et accusam et
											justo duo dolores et ea rebum....</span>
								</a></li>
								<li><a href="#"> <span class="mail-sender">10.01.2015
											| Kontaktgrund</span> <span class="mail-subject">Mitarbeitername
											| Kontaktmedium</span> <span class="mail-message-preview">Lorem
											ipsum dolor sit amet, consetetur sadipscing elitr, sed diam
											nonumy eirmod tempor invidunt ut labore et dolore magna
											aliquyam erat, sed diam voluptua. At vero eos et accusam et
											justo duo dolores et ea rebum...</span>
								</a></li>
								<li><a href="#"> <span class="mail-sender">10.01.2015
											| Kontaktgrund</span> <span class="mail-subject">Mitarbeitername
											| Kontaktmedium</span> <span class="mail-message-preview">Lorem
											ipsum dolor sit amet, consetetur sadipscing elitr, sed diam
											nonumy eirmod tempor invidunt ut labore et dolore magna
											aliquyam erat, sed diam voluptua. At vero eos et accusam et
											justo duo dolores et ea rebum...</span>
								</a></li>

							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>




		<div class="modal" id="myModal">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">×</button>
						<h4 class="modal-title">Aktivität</h4>
					</div>
					<div class="modal-body">
						

				<div class="col-md-6">
										<div class="form-group">
											<label for="cId"> Kundennummer</label> 12345
										</div>
										<div class="form-group">
											<label for="date"> Datum</label> 10.01.2015
										</div>

										<div class="form-group">
											<label for="ma"> Mitarbeitername</label> Vorname Nachname
										</div>
										<div class="form-group">
											<label for="ma"> Kontaktmedium</label> E-Mail
										</div>
										<div class="form-group">
											<label for="ma"> Kontaktgrund</label> Beschwerde
										</div>


									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label for="name"> Notiz</label>
											<textarea name="message" id="notiz" class="form-control"
												rows="12" cols="25" placeholder="Notiz" disabled="disabled"></textarea>
										</div>
									</div>
					</div>
					<div class="modal-footer">
					
					</div>
				</div>
			</div>
		</div>

		<script>
			$(document).ready(function() {
				$('.form-control').floatlabel({
					labelClass : 'float-label',
					labelEndTop : 5
				});

			});

			$('.mail-list a').click(function() {
				$('#myModal').modal({
					show : true
				})
			});
		</script>

		<style type="text/css">
@import
	url(http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,400,300,600,700)
	;

/*mail list*/
ul.mail-list {
	padding: 0;
	margin: 0;
	list-style: none;
	margin-top: 30px;
}

ul.mail-list li a {
	display: block;
	border-bottom: 1px dotted #CFCFCF;
	padding: 20px;
	text-decoration: none;
}

ul.mail-list li:last-child a {
	border-bottom: none;
}

ul.mail-list li a:hover {
	background-color: #585858;
}

ul.mail-list li span {
	display: block;
}

ul.mail-list li span.mail-sender {
	font-weight: 600;
	color: #8F8F8F;
}

ul.mail-list li span.mail-subject {
	color: #8C8C8C;
}

ul.mail-list li span.mail-message-preview {
	display: block;
	color: #A8A8A8;
}

.mail-search {
	border-bottom-color: #7FBCC9 !important;
}
</style>
	</tiles:putAttribute>
</tiles:insertDefinition>

