<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*" %>
	<script src="/crm/resources/jquery/Chart.js"></script>
 


<tiles:insertDefinition name="defaultTemplate">
<tiles:putAttribute name="body">
<title>Werbekampagne auswerten</title>
<h1>Werbekampagne auswerten</h1>

    <ul class="nav nav-tabs">
        <li class="active"><a data-toggle="tab" href="#sectionA">BI-Schnittstelle</a></li>
        <li><a data-toggle="tab" href="#sectionB">Grafische Auswertung</a></li>
    </ul>


							
    <div class="tab-content">
        <div id="sectionA" class="tab-pane fade in active">
            <h3>BI-Schnittstelle</h3>
			<div id="kampagneErstellen">
		         <div class="row">
		            <div class="col-md-8">
		               <div class="well well-sm">
		               
		                  <form class="erstellung" name="erstellung" id="erstellung" method="POST"
		                     action="/crm/werbekampagnen/auswerten/submit/${kampagne.kampagnenId}">
		                                        
		                     <div class="row">
		                        <div class="col-md-6">
									<div class="form-group">
									<c:set var="kosten2" value="${fn:replace(kampagne.kosten, '.', ',')}"/>
		                              <label for="kosten">Tatsächliche Kosten</label> <input type="text"  
		                                 class="form-control" name="kosten" id="kosten" placeholder="Kosten" value="${kosten2}" disabled/>                           
		                           </div>
		                            <c:set var="umsatz2" value="${fn:replace(kampagne.umsatz, '.', ',')}" />
		                            
		                            <c:if test="${kampagne.artId != 3}">
										<div class="form-group">
				                        	<label for="umsatz">Umsatz</label> 
				                        	<input type="text" class="form-control" name="umsatz" id="umsatz" placeholder="Umsatz" value="${umsatz2}" disabled/>
				                        </div>
								
									</c:if>	
		               
		                        </div>
		                        
		                        <div class="col-md-6">
		                          
		                           <div class="form-group">
		                              <label for="vExemplare">Anzahl der verkauften Exemplare</label> <input type="text"
		                                 class="form-control" name="anzahlVerkaufteExemplare" id="anzahlVerkaufteExemplare" placeholder="Verkaufte Exemplare" value="${kampagne.anzahlVerkaufteExemplare}" disabled/>
		                           </div>
		                           <div class="form-group">
		                              <label for="resonanz">Resonanz</label>
		                                 <input class="rating-input" type="number" name="rating" id="rating" value="${kampagne.resonanz}" disabled/>
		                           </div>
		
		                           <button type="submit" class="btn btn-primary pull-right" ${kampagne.resonanz > 0 ? 'disabled' : ''} >
		                           <span class="glyphicon glyphicon-import"></span> Kampagnendaten importieren 
		                           </button>
		                           
		                           <input type="hidden" id="id" name="id" value="${kampagne.kampagnenId}" />
		                        </div>
		                        
		                     </div>
		                  </form>
		               </div>
		            </div>
		         </div>
				</div>  
							    
		</div>
			
			
			
        <div id="sectionB" class="tab-pane fade" ${kampagne.resonanz > 0 ? '' : 'style="display: none;"'}>
        <table id="overview">
        
        <tr>
			<td ${kampagne.artId == 3 ? 'style="display: none;"' : ''} >
	        <fieldset>
	        	<legend>Gewinnampel</legend>
	        
		        <table border="1">
			        <tr>
				        <th>Umsatz</th>
				        <td id="umsatz" class="value">${kampagne.umsatz}</td>
				        <td rowspan="3">
							<div id="light" class="gewinn">
							    <span id="red"></span>
							    <span id="orange"></span>
							    <span id="green"></span>
							</div>
				        </td>
			        </tr>
			        <tr>
				        <th>Kosten</th>
				        <td id="kosten">${kampagne.kosten}</td>
			        </tr>
			        <tr>
				        <th>Gewinn</th>
				        <td id="gewinn">${kampagne.umsatz- kampagne.kosten}</td>
			        </tr>
		        </table>
	        </fieldset>
			</td>
			<td>
			 <fieldset>
	        	<legend>Budgetampel</legend>
	        
		        <table border="1">
			        <tr>
				        <th>Budget</th>
				        <td class="value">${kampagne.budget}</td>
				        <td rowspan="3">
							<div id="light" class="budget">
							    <span id="red"></span>
							    <span id="orange"></span>
							    <span id="green"></span>
							</div>
				        </td>
			        </tr>
			        <tr>
				        <th>Kosten</th>
				        <td>${kampagne.kosten}</td>
			        </tr>
			        <tr>
				        <th>Ergebnis +/-</th>
				        <td id="ergebnis">${kampagne.budget- kampagne.kosten}</td>
			        </tr>
		        </table>
	        </fieldset>
	        </td>

	     <td>  
	         <fieldset>
	        	<legend>Kundenzufriedenheitsampel</legend>
	        
		        <table border="1">
			        <tr>
				        <th>Resonanz</th>
				        <td id="resonanz" class="value">${kampagne.resonanz}</td>
				        <td rowspan="1">
							<div id="light" class="resonanz">
							    <span id="red"></span>
							    <span id="orange"></span>
							    <span id="green"></span>
							</div>
				        </td>
			        </tr>
		        </table>
	        </fieldset>
	        </td>
	        <td>
	         <fieldset>
	        	<legend>Gesamtampel</legend>
	        
		        <table border="1">
			        <tr>
				        <th>Gesamt-ergebnis</th>
				        <td id="gesamt" class="value">${kampagne.status}</td>
				        <td rowspan="1">
							<div id="light" class="gesamt">
							    <span id="red"></span>
							    <span id="orange"></span>
							    <span id="green"></span>
							</div>
				        </td>
			        </tr>
		        </table>
	        </fieldset>
	        </td>
	        </tr>
        </table>
        
		<input type="hidden" id="anzahlExemplare" value="${kampagne.anzahlExemplare}">
		<input type="hidden" id="anzahlVerkaufteExemplare" value="${kampagne.anzahlVerkaufteExemplare}">
        	        		
      	<hr>
        	        		
        	        		<div id="chartContainerBar"  style="height: 300px; width: 100%; "></div>
        	        <hr>
        	<!--  <div id="chartContainer" style="height: 150px; width: 200px;"></div>
        	<hr>
        	        	<div id="chartContainer2" style="height: 300px; width: 100%;"></div>
        	        	
        	  -->
        	        		<div id="chartContainer2"  style="height: 300px; width: 100%; ${kampagne.artId == 3 ? 'display: none;' : ''} "></div>
		</div>

    </div>

		
<style type="text/css">
	table{
		margin: auto;
	}
	#overview{
		margin-top: 10px;
	}
	th, td{
		padding-left: 5px;
		padding-right: 5px;
	}
	.value{
		width: 50px;
	}
	fieldset{
		width: 250px;
	}
	legend{
		font-size: 16px;
	}
   #kampagneErstellen {
   		width: 800px;
   }
   #sectionB{
   		width: 800px;
   		min-height: 500px;
   }
   #chartContainer{
   	margin: auto;
   }
   .canvasjs-chart-canvas{
   	width: 800px;
   	height: 300px;
   }

/*! Light */
#light {
    background-color: #000;
    box-shadow: 0 0 5px rgba(0,0,0, .8);
    overflow: hidden;
    padding: 0 0 4px;
    width: 40px;
}

#light span {
    border-radius: 50px;
    display: block;
    height: 30px;
    margin: 4px auto 0;
    opacity: .5;
    width: 30px;
}

/*! Light colours */
#red    { background-color: red; }
#orange { background-color: orange; }
#green  { background-color: green; }

/*! Active states */
#light span.active    { opacity: 1; }
#light #red.active    { box-shadow: 0 0 10px red; }
#light #orange.active { box-shadow: 0 0 10px orange; }
#light #green.active  { box-shadow: 0 0 10px #01DF01; }
</style>
			
<script>

  
    	    
    	    
	window.onload = function () {
			
		var anzahlVerkaufteExemplare =  parseInt($("#anzahlVerkaufteExemplare").val());
		var anzahlExemplare =  parseInt($("#anzahlExemplare").val());

		var chartBar = new CanvasJS.Chart("chartContainerBar",
			    {
			 title:{
			        text: "Vergleich produzierte/verkaufte Exemplare"
			      },
			      data: [
			      {
			        type: "bar",
			        dataPoints: [
			        { y: anzahlExemplare, label: "produzierte Exemplare"},
			        { y: anzahlVerkaufteExemplare, label: "verkaufte Exemplare"}
			        ]
			      }
			      ]
			    });

			chartBar.render();
			
			var umsatz =  parseInt($("#umsatz").val());
			var kosten =  parseInt($("#kosten").val());
			
			var chartBar2 = new CanvasJS.Chart("chartContainer2",
				    {
				 title:{
				        text: "Umsatz-Kosten-Übersicht"
				      },
				      data: [
				      {
				        type: "bar", 
				        dataPoints: [
				        { y: umsatz, label: "Umsatz"},
				        { y: kosten, label: "Kosten"}
				        ]
				      }
				      ]
				    });

				chartBar2.render();
	}


jQuery.validator.setDefaults({
	  debug: false,
	  success: "valid",
	  focusCleanup: false
	});
	
	$( ".erstellung" ).validate({
	  rules: {
		anzahlVerkaufteExemplare: {
			required: true,
			integer: true
		},
		kosten: {
			required: true,
			euroCurrency: true
		},
		umsatz: {
			required: true,
			euroCurrency: true
		},
		rating: {
			required: true,
		}
	  }	 
	});

	
jQuery(document).ready(function () {
	
	var gewinn = $("#gewinn").text();
	var kosten = $("#kosten").text();
	var umsatz = $("#umsatz").text();
	
	if (gewinn > (kosten * 1.1) && gewinn > 0 ){
		$(".gewinn #green").addClass("active");
	}else if(gewinn < (gewinn * 1.1) && gewinn > 0){
		$(".gewinn #orange").addClass("active");
	}else{
		$(".gewinn #red").addClass("active");
	}
	
	var budget = $("#ergebnis").text();

	if (budget > (kosten * 1.1) && budget > 0 ){
		$(".budget #green").addClass("active");
	}else if(budget < (budget * 1.1) && budget > 0){
		$(".budget #orange").addClass("active");
	}else{
		$(".budget #red").addClass("active");
	}
	
	var resonanz = $("#resonanz").text();

	if (resonanz > 3 ){
		$(".resonanz #green").addClass("active");
	}else if(resonanz > 1){
		$(".resonanz #orange").addClass("active");
	}else{
		$(".resonanz #red").addClass("active");
	}
	
	var gesamt = $("#gesamt").text();

	if (gesamt > 2 ){
		$(".gesamt #green").addClass("active");
	}else if(gesamt > 1){
		$(".gesamt #orange").addClass("active");
	}else{
		$(".gesamt #red").addClass("active");
	}
	
	
	
	
    $('.rating-input').rating({
          min: 0,
          max: 5,
          step: 1,
          size: 'sm'
    });
       
    $('#btn-rating-input').on('click', function() {
        var $a = self.$element.closest('.star-rating');
        var chk = !$a.hasClass('rating-disabled');
        $('#rating-input').rating('refresh', {showClear:!chk, disabled:chk});
    });
    
    
    $('.btn-danger').on('click', function() {
        $("#kartik").rating('destroy');
    });
    
    $('.btn-success').on('click', function() {
        $("#kartik").rating('create');
    });
    
    $('.rating-input').on('rating.change', function() {
        //alert($(this).val());
    });
    
    
    $('.rb-rating').rating({'showCaption':true, 'stars':'3', 'min':'0', 'max':'3', 'step':'1', 'size':'xs', 'starCaptions': {0:'status:nix', 1:'status:wackelt', 2:'status:geht', 3:'status:laeuft'}});
});
</script>

	</tiles:putAttribute>
</tiles:insertDefinition>