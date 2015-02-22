<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

	<script src="/crm/resources/jquery/Chart.js"></script>


<tiles:insertDefinition name="defaultTemplate">
<tiles:putAttribute name="body">
<title>Werbekampagne auswerten</title>
<h1>Werbekampagne auswerten</h1>

<div class="bs-example">
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
		                     action="/crm/werbekampagnen/submitUpdateSonderausgabe">
		                                          
		                     <div class="row">
		                        <div class="col-md-6">
									<div class="form-group">
									<c:set var="kosten2"/>
		                              <label for="kosten">Tatsächliche Kosten</label> <input type="text"  
		                                 class="form-control" name="kosten" id="kosten" placeholder="Kosten" value="${kosten2}"/>                           
		                           </div>
		                            <c:set var="umsatz2" value="${fn:replace(kampagne.umsatz, '.', ',')}" />
		                           <div class="form-group">
		                              <label for="umsatz">Umsatz</label> <input type="text"
		                                 class="form-control" name="umsatz" id="umsatz" placeholder="Umsatz" value="${umsatz2}"/>
		                                 
		                           </div>
		
		                        </div>
		                        
		                        <div class="col-md-6">
		                          
		                           
		                           <div class="form-group">
		                              <label for="vExemplare">Anzahl der verkauften Exemplare</label> <input type="text"
		                                 class="form-control" name="anzahlVerkaufteExemplare" id="anzahlVerkaufteExemplare" placeholder="Verkaufte Exemplare" />
		                           </div>
		                           <div class="form-group">
		                              <label for="resonanz">Resonanz</label>
		                                 <input class="rating-input" type="number" name="rating" id="rating" value="${kampagne.resonanz}"/>
		                           </div>
		
		                           <button type="submit" class="btn btn-primary pull-right">
		                           <span class="glyphicon glyphicon-ok"></span> Kampagnendaten importieren 
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
			
        <div id="sectionB" class="tab-pane fade">
        			<div>
        			
        			1. div
        			
        			    
    		<div id="canvas-holder">
				<canvas id="chart-area" width="300" height="300"></canvas>
			</div>  
			
			
        			</div>
            <h3>Section B</h3>
         	dlaskdlaskdlaksldkasl

		</div>

    </div>

</div>


		
<style type="text/css">
   #kampagneErstellen {
   		width: 800px;
   }

</style>
			
<script>

var pieData = [
				{
					value: 300,
					color:"#F7464A",
					highlight: "#FF5A5E",
					label: "Red"
				},
				{
					value: 50,
					color: "#46BFBD",
					highlight: "#5AD3D1",
					label: "Green"
				},
				{
					value: 100,
					color: "#FDB45C",
					highlight: "#FFC870",
					label: "Yellow"
				},
				{
					value: 40,
					color: "#949FB1",
					highlight: "#A8B3C5",
					label: "Grey"
				},
				{
					value: 120,
					color: "#4D5360",
					highlight: "#616774",
					label: "Dark Grey"
				}

			];

			window.onload = function(){
				var ctx = document.getElementById("chart-area").getContext("2d");
				window.myPie = new Chart(ctx).Pie(pieData);
			};



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