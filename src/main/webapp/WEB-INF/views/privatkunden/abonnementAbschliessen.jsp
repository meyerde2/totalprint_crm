<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<tiles:insertDefinition name="defaultTemplate">
	<tiles:putAttribute name="body">

		<title>Privatkunden</title>

		<div class="aboAbschliessen">
			<div>
			<h1>Privatkunden - Abonnement abschlieﬂen</h1>

			</div>

			<!--  <form name="abschliessen" id="abschliessen" method="POST"
				action="/crm/privatkunden/submitAddAbo">
-->
				<form name="abschliessen" id="abschliessen" method="POST"
				action="/crm/privatkunden/submitAddAbo">
					<div class="row form-group">
					<div class="infoPanel">
							<a href="/crm/privatkunden/stammdaten"> <span class="glyphicon glyphicon-user"></span>${sessionScope.currentCustomer.vorname} ${sessionScope.currentCustomer.name}</a>
							<a href="/crm/handbuch/privatkunden"><span class="glyphicon glyphicon-info-sign"></span>Hilfe</a>
					</div>
						
						<div class="col-xs-12">
							<ul class="nav nav-pills nav-justified thumbnail setup-panel">
								<li class="active"><a href="#step-1">
										<h4 class="list-group-item-heading">Step 1</h4>
										<p class="list-group-item-text">Kundendaten</p>
								</a></li>
								<li class="disabled"><a href="#step-2">
										<h4 class="list-group-item-heading">Step 2</h4>
										<p class="list-group-item-text">Zahlungsart</p>
								</a></li>
								<li class="disabled"><a href="#step-3">
										<h4 class="list-group-item-heading">Step 3</h4>
										<p class="list-group-item-text">Lieferadresse</p>
								</a></li>
								<li class="disabled"><a href="#step-4" id="showStep4">
										<h4 class="list-group-item-heading">Step 4</h4>
										<p class="list-group-item-text">Best‰tigung</p>
								</a></li>
							</ul>
						</div>
						
						
					</div>
					<div class="row setup-content" id="step-1">
						<div class="col-xs-12">
							<div class="col-md-12 well text-center">
								<h2>Kundendaten</h2>
								<table>
									<tr>
										<td><label>Kundennummer</label></td>
										<td>${sessionScope.currentCustomer.id}</td>
									</tr>
									<tr>
										<td><label>Name</label></td>
										<td>${sessionScope.currentCustomer.name}</td>

									</tr>
									<tr>
										<td><label>Vorname</label></td>
										<td>${sessionScope.currentCustomer.vorname}</td>
									</tr>
								</table>

								<button id="activate-step-2" class="btn btn-primary btn-md">Weiter<span class="glyphicon glyphicon-chevron-right"></span></button>


							</div>
						</div>
					</div>
					<div class="row setup-content" id="step-2">
						<div class="col-xs-12">
							<div class="col-md-12 well text-center">
								<h2>Zahlungsart</h2>
								<table>
									<tr>
										<td><label>Zahlungsart</label></td>
										<td><input type="radio" class="radio-inline"
											name="zahlungsart" id="zahlungsart" value="rechnung"
											checked="true">Rechnung <input type="radio"
											class="radio-inline" name="zahlungsart" id="zahlungsart"
											value="lastschrift">Lastschrift</td>
									</tr>

									<tr class="rechnung">
										<td><label>Name</label></td>
										<td>${sessionScope.currentCustomer.vorname} ${sessionScope.currentCustomer.name}</td>
									</tr>

									<tr class="rechnung">
										<td><label>Straﬂe</label></td>
										<td>${sessionScope.currentCustomer.strasse}</td>
									</tr>

									<tr class="rechnung">
										<td><label>PLZ/Ort</label></td>
										<td>${sessionScope.currentCustomer.plz} ${sessionScope.currentCustomer.ort}</td>
									</tr>
									<tr class="payment">
										<td><label>IBAN</label></td>
										<td><input type="text" class="form-control" name="iban" id="iban" placeholder="IBAN" value="${sessionScope.currentCustomer.iban}"></td>
									</tr>
									<tr class="payment">
										<td><label>BIC</label></td>
										<td><input type="text" class="form-control" name="bic" id="bic" placeholder="BIC" value="${sessionScope.currentCustomer.bic}"></td>
									</tr>
									<tr class="payment">
										<td><label>Bank</label></td>
										<td><input type="text" class="form-control" name="bank" id="bank" placeholder="Bank" value="${sessionScope.currentCustomer.bank}"></td>
									</tr>
									<tr class="payment">
										<td><label>Kontoinhaber</label></td>
										<td><input type="text" class="form-control" name="kontoinhaber" id="kontoinhaber" placeholder="Kontoinhaber" value="${sessionScope.currentCustomer.kontoinhaber}"></td>
									</tr>

								</table>
								<button id="activate-step-3" class="btn btn-primary btn-md">Weiter <span class="glyphicon glyphicon-chevron-right"></span></button>
							</div>
						</div>
					</div>
					<div class="row setup-content" id="step-3">
						<div class="col-xs-12">
							<div class="col-md-12 well text-center">
								<h2>Lieferadresse</h2>

								<table>
									<tr>
										<td><label>Straﬂe</label></td>
										<td>${sessionScope.currentCustomer.strasse}</td>
									</tr>
									<tr>
										<td><label>PLZ</label></td>
										<td>${sessionScope.currentCustomer.plz}</td>
									</tr>
									<tr>
										<td><label>Ort</label></td>
										<td>${sessionScope.currentCustomer.ort}</td>
									</tr>


									<tr>
										<td><label>Abweichende Lieferadresse</label></td>
										<td><input type="checkbox" class="checkbox-inline"
											name="abwLieferadresse" id="abwLieferadresse" value="ja">
										</td>
									</tr>

									<tr class="abwLieferadresse">
										<td><label>Straﬂe</label></td>
										<td><input type="text" class="form-control"
											name="abwstrasse" id="abwstrasse" placeholder="Straﬂe Nr." value="${sessionScope.currentCustomer.abwStrasse}"></td>
									</tr>
									<tr class="abwLieferadresse">
										<td><label>PLZ</label></td>
										<td><input type="text" class="form-control" name="abwplz"
											id="abwplz" placeholder="Postleitzahl" value ="${sessionScope.currentCustomer.abwPlz}"></td>
									</tr>
									<tr class="abwLieferadresse">
										<td><label>Ort</label></td>
										<td><input type="text" class="form-control" name="abwort"
											id="abwort" placeholder="Ort" value="${sessionScope.currentCustomer.abwOrt}"></td>
									</tr>
								</table>
								<button id="activate-step-4" class="btn btn-primary btn-md">Weiter <span class="glyphicon glyphicon-chevron-right"></span></button>
							</div>
						</div>
					</div>

					<div class="row setup-content" id="step-4">
						<div class="col-xs-12">
							<div class="col-md-12 well text-center">
								<h2>Best‰tigung</h2>
								<div>
								<p class="abschnitt">Anschrift</p>
								<table class="overview">
									<tr>
										<td><label>Name</label></td>
										<td id="name">${sessionScope.currentCustomer.vorname} ${sessionScope.currentCustomer.name}</td>
									</tr>
									<tr>
										<td><label>Straﬂe</label></td>
										<td id="strasse">${sessionScope.currentCustomer.strasse}</td>
									</tr>
									<tr>
										<td><label>PLZ</label></td>
										<td id="plz">${sessionScope.currentCustomer.plz}</td>
									</tr>
									<tr>
										<td><label>Ort</label></td>
										<td id="ort">${sessionScope.currentCustomer.ort}</td>
									</tr>
								</table>
								</div>
								<div id="overviewZahlungsart">
								<p class="abschnitt">Zahlungsart</p>
								<table>
								<tr>
										<td><label>Zahlungsart</label></td>
										<td id="tdZahlungsart">Lastschrift</td>
								</tr>
								</table>
								</div>
								<div id="overviewLastschrift">
								<p class="abschnitt"></p>
								<table class="overview">
									<tr class="lastschrift">
										<td><label>IBAN</label></td>
										<td id="tdIban">IBAN</td>
									</tr>
									<tr class="lastschrift">
										<td><label>BIC</label></td>
										<td id="tdBic">BIC</td>
									</tr>
									<tr class="lastschrift">
										<td><label>Bank</label></td>
										<td id="tdBank">Bank</td>
									</tr>
									<tr class="lastschrift">
										<td><label>Kontoinhaber</label></td>
										<td id="tdKontoinhaber">Max Mustermann</td>
									</tr>
								</table>
								</div>
								<div id="overviewAbwLieferanschrift">
								<p class="abschnitt">Abweichende Lieferanschrift</p>
								<table class="overview">
									<tr class="abwLieferanschrift">
										<td><label>Abweichende Str.</label></td>
										<td id="tdAbwStr">${sessionScope.currentCustomer.abwStrasse}</td>
									</tr>
									<tr class="abwLieferanschrift">
										<td><label>Abweichende PLZ</label></td>
										<td id="tdAbwPlz">${sessionScope.currentCustomer.abwPlz}</td>
									</tr>
									<tr class="abwLieferanschrift">
										<td><label>Abweichender Ort</label></td>
										<td id="tdAbwOrt">${sessionScope.currentCustomer.abwOrt}</td>
									</tr>
								</table>
								</div>
								<p></p>
								<!-- <button id="submit" class="btn btn-primary btn-md"><span class="glyphicon glyphicon-ok"></span>  Abonnement
									abschlieﬂen</button> -->
									<a href="#" id="abbrechen" class="btn btn-primary btn-md"><span class="glyphicon glyphicon-remove"></span>  Vorgang abbrechen</a>
									<button id="submit" class="btn btn-primary btn-md"><span class='glyphicon glyphicon-ok'></span>  Abo verbindlich abschlieﬂen</button>
									
							</div>
						</div>
					</div>
		
			</form>
		</div>
		

		<script>
		
				
		jQuery.validator.setDefaults({
  		  debug: false,
  		  success: "valid",
  		  focusCleanup: false
  		});
  		$( "#abschliessen" ).validate({
 			
  		  rules: {
  			iban: {
    		      required: {
  					depends: function(element) {
  					      return $("input[value='lastschrift']").is(":checked");
  					  }
  		      },
    		      iban:  {
  			        depends: function(element) {
  			          return $("input[value='lastschrift']").is(":checked");
  			        }
    		      }
    		    },
    			bic: {
    				required: {
    					depends: function(element) {
    			          return $("input[value='lastschrift']").is(":checked");
    			        }
    				},
    				bic: {
    					depends: function(element) {
    			          return $("input[value='lastschrift']").is(":checked");
    			        }
    				}
    			},
    		    bank: {
    		    	required: {
    		    		depends: function(element) {
    			          return $("input[value='lastschrift']").is(":checked");
    			        }
    		    	}
    		    },
    		  	kontoinhaber: {
    		    	required: {
    		    		depends: function(element) {
    			          return $("input[value='lastschrift']").is(":checked");
    			        }
    		    	}
    		    }, 
	  		  	abwstrasse: {
			    	required: {
			    		depends: function(element) {
	    			          return $("#abwLieferadresse").is(":checked");
	    			    }
			    	}
			   	},
			   	abwplz: {
			   		required: {
			    		depends: function(element) {
	    			          return $("#abwLieferadresse").is(":checked");
	    			    }
			    	},
				   	digits: {
			    		depends: function(element) {
	    			          return $("#abwLieferadresse").is(":checked");
	    			    }
			    	}
			   	},
			   	abwort: {
			   		required: {
			    		depends: function(element) {
	    			          return $("#abwLieferadresse").is(":checked");
	    			    }
			    	}
			   	}
  		  },
  		  messages:{
  			  iban: {
  				  iban: "Bitte eine g¸ltige IBAN eingeben."
  				  
  			  },
  			  bic:{
  				 bic: "Bitte eine g¸ltige BIC eingeben." 
  			  }
  		  }
  		});
		$(document)
	    .ready(
	        function() {
	        	
	            var isVisiblePayment = false;

	            $(".abwLieferadresse").hide();
	            $(".payment").hide();

	            $("#activate-step-4, #showStep4").click(function(){
	            	
	            	if($("input[value='lastschrift']:checked").val()=="lastschrift"){
						
	            		$("#overviewLastschrift").show();
	            		
	            		$("#tdZahlungsart").html("Lastschrift");
	            		//getValuesFromInputTextFields
	            		$("#tdIban").html($('#iban').val());
	            		$("#tdBic").html($('#bic').val());
	            		$("#tdBank").html($('#bank').val());
	            		$("#tdKontoinhaber").html($('#kontoinhaber').val());
		            	
	            	}else{
	            		$("#tdZahlungsart").html("Rechnung");
	            		$("#overviewLastschrift").hide();
	            	}
	            	
	            	if( $("#abwLieferadresse").is(":checked") == true){	

	            		$("#overviewAbwLieferanschrift").show();
	            	}else{
	            		
	            		$("#overviewAbwLieferanschrift").hide();
	            	}
	            	
	            });
		
	            
	            $("input:radio[value=lastschrift]").click(
	                function() {
	                    if (!isVisiblePayment) {
	                        $(".rechnung").hide("fast");
	                        $(".payment").show("fast");

	                        isVisiblePayment = true;
	                    }

	                });
	            $("input:radio[value=rechnung]").click(
	                function() {
	                    if (isVisiblePayment) {
	                        $(".payment").hide("fast");
	                        $(".rechnung").show("fast");
	                        isVisiblePayment = false;
	                    }

	                });
	            $(".checkbox-inline").click(function() {
	                $(".abwLieferadresse").toggle("slow");
	            });

	            var navListItems = $('ul.setup-panel li a'),
	                allWells = $('.setup-content');

	            allWells.hide();

	            navListItems
	                .click(function(e) {
	                    e.preventDefault();
	                    var $target = $($(this)
	                            .attr('href')),
	                        $item = $(
	                            this).closest('li');

	                    if (!$item.hasClass('disabled')) {
	                        navListItems.closest('li')
	                            .removeClass('active');
	                        $item.addClass('active');
	                        allWells.hide();
	                        $target.show();
	                    }
	                });

	            $('ul.setup-panel li.active a')
	                .trigger('click');

	            // DEMO ONLY //
	            $('#activate-step-2')
	                .on(
	                    'click',
	                    function(e) {
	                        $('ul.setup-panel li:eq(1)')
	                            .removeClass(
	                                'disabled');
	                        $(
	                                'ul.setup-panel li a[href="#step-2"]')
	                            .trigger('click');
	                        $(this).remove();
	                    })

	            $('#activate-step-3')
	                .on('click', function(e) {
	                    
	                        // Wenn die Elemente in dem Div keine error Label danach haben, next, ansonsten nicht!
	                        $("#abschliessen").validate({ });
	                        if ($("input:radio[value=lastschrift]").is(":checked") && 
	                        		$("#iban-error").hasClass("valid") && 
	                        		$("#bic-error").hasClass("valid")&& 
	                        		$("#bank-error").hasClass("valid")&& 
	                        		$("#kontoinhaber-error").hasClass("valid")
	                        ){
	                        	$('ul.setup-panel li:eq(2)').removeClass('disabled');
		                        $('ul.setup-panel li a[href="#step-3"]').trigger('click');
		                        $(this).remove();
	                        }else{
	                        }
	                        
	                        if ($("input:radio[value=rechnung]").is(":checked")){
	                        	$('ul.setup-panel li:eq(2)').removeClass('disabled');
		                        $('ul.setup-panel li a[href="#step-3"]').trigger('click');
		                        $(this).remove();
	                        }
	                      
	                    })
	            $('#activate-step-4').on('click', function(e) {
	                	
	                	$("#abschliessen").validate({ });
	                	
	                    	if ($("#abwLieferadresse").is(":checked") &&
	                    			$("#abwstrasse-error").hasClass("valid") && 
	                        		$("#abwplz-error").hasClass("valid")&& 
	                        		$("#abwort-error").hasClass("valid")
	                  			){
	                    		$('ul.setup-panel li:eq(3)').removeClass( 'disabled');
		                        $('ul.setup-panel li a[href="#step-4"]').trigger('click');
		                        $(this).remove();
	                    	}

	                    	if (!$("#abwLieferadresse").is(":checked")){
	                    		$('ul.setup-panel li:eq(3)').removeClass( 'disabled');
		                        $('ul.setup-panel li a[href="#step-4"]').trigger('click');
		                        $(this).remove();
	                    	}
                });
	            $('#abbrechen').on('click', function(e) {
                	
	            	 location.reload();
                	
           		});
	            $('#submit').on('click', function(e) {
                	
	            	alert("Abonnement abgeschlossen.");
               	
          		});
	        });
		
		
		</script>
	</tiles:putAttribute>
</tiles:insertDefinition>