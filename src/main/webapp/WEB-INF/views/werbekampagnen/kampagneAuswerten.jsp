<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<tiles:insertDefinition name="defaultTemplate">
<tiles:putAttribute name="body">
<title>Werbekampagne auswerten</title>
<h1>Werbekampagne auswerten</h1>

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
                           <span class="glyphicon glyphicon-ok"></span> Kampagne auswerten 
                           </button>
                           
                           <input type="hidden" id="id" name="id" value="${kampagne.kampagnenId}" />
                        </div>
                        
                     </div>
                  </form>
               </div>
            </div>
         </div>

</div>
<style type="text/css">
   #kampagneErstellen {
   		width: 800px;
   }
   #kampagneErstellen dt {
	   width: 800px;
	   border-bottom: 1px solid black;
	   font-size: 16px;
   }
   #kampagneErstellen a {
	   display: block;
	   color: black;
   }
   #kampagneErstellen a:hover {
	   text-decoration: none;
   }
</style>
			
<script>

$('.slider-input').jRange({
    from: 0,
    to: 25000,
    step: 100,
    scale: [0, 5000,10000,15000,20000,25000],
    format: '%s',
    width: 375,
    showLabels: true
});

jQuery.validator.setDefaults({
	  debug: false,
	  success: "valid",
	  focusCleanup: true
	});
	
	$( ".erstellung" ).validate({
	  rules: {
		kampagnenBez: {
			required: true
		},  
		dateBeginn: {
			required: true
		},
		dateUntil: {
			required: true
		},
		grundId: {
			required: true
		},
		zielgruppeId: {
			required: true
		},
		themenId: {
			required: true
		},
		anzahlExemplare: {
			required: true,
			integer: true
		},
		anzahlInserate: {
			required: true,
			integer: true
		},
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

	

$('.datePicker').datetimepicker(
{
   lang : 'de',
   i18n : {
      de : {
         months : [ 'Januar', 'Februar', 'März',
         'April', 'Mai', 'Juni', 'Juli',
         'August', 'September', 'Oktober',
         'November', 'Dezember', ],
         dayOfWeek : [ "Mo", "Di", "Mi", "Do", "Fr" ]
      }
   }
   ,
   timepicker : false,
   format : 'd.m.Y'
}
);

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