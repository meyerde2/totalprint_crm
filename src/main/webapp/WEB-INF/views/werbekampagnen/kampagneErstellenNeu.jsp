<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<tiles:insertDefinition name="defaultTemplate">
<tiles:putAttribute name="body">
<title>Werbekampagne erstellen</title>
<h1>Werbekampagne erstellen</h1>

<div id="kampagneErstellen">

         <div class="row">
            <div class="col-md-8">
               <div class="well well-sm">
                  <form class="erstellung" name="erstellung" id="erstellung" method="POST"
                     action="/crm/werbekampagnen/submitKampagneErstellen">
                                          
                     <div class="row">
                        <div class="col-md-6">
                           <div class="form-group">
                              <label for="kName">Kampagnenbezeichnung</label> <input type="text" 
                                 class="form-control" name="kampagnenBez" id="kampagnenBez" placeholder="Kampagnenbezeichnung"/>
                           </div>
                           
                           <div class="form-group">
                              <label for="dateBeginn">Startzeitpunkt</label>
                              <input type="text" class="form-control datePicker" name="dateBeginn" id="dateBeginn" placeholder="Startzeitpunkt" />
                           </div>
                           
                           <div class="form-group">
                              <label for="dateUntil">Endzeitpunkt</label> 
                              <input type="text" class="form-control datePicker_end" name="dateUntil" id="dateUntil" placeholder="Endzeitpunkt"/>
                           </div>
                           
                           <div class="form-group">
                              <label for="grund">Kampagnenart</label> 
                              <select class="form-control" name="kampagnenart" id="kampagnenart" size="1" >
                                 <option value="">---bitte wählen---</option>
                                 <option value="1" >Sonderausgabe</option>
                                 <option value="2" >Aussendungen</option>
                                 <option value="3" >Geburtstage</option>
                              </select>
                           </div>
                           
                           <div class="form-group geschenk">
                              <label for="geschenk">Geschenk</label> <input type="text" 
                                 class="form-control" name="geschenk" id="geschenk" placeholder="Geschenk"/>
                           </div>
                           
                          <div class="form-group werbemittelId">
                              <label for="werbemittelId">Werbemittel</label> 
                              <select class="form-control" name="werbemittelId" size="1" >
                                 <option value="">---bitte wählen---</option>
                                 <option value="1" >Postkarte</option>
                                 <option value="2" >Flyer</option>
                                 <option value="3" >Beilagen</option>
                                 <option value="4" >E-Mails</option>
                              </select>
                          </div>
                           
                           <div class="form-group">
                              <label for="grund">Grund</label> 
                              <select class="form-control" name="grundId" size="1" >
                                 <option value="">---bitte wählen---</option>
                                 <option value="1" >Neukundengewinnung</option>
                                 <option value="2" >Event</option>
                                 <option value="3" >Kundenbindung</option>
                                 <option value="4" >Ostern</option>
                                 <option value="5" >Weihnachten</option>
                                 <option value="6" >Sonstiges</option>
                              </select>
                           </div>
                           
                           <div class="form-group">
                              <label for="zielgruppe">Zielgruppe</label> 
                              <select class="form-control" name="zielgruppeId" id="zielgruppeId" size="1" >
                                 <option value="">---bitte wählen---</option>
                                 <option value="1" >Kunden, die die Zeitschrift A kaufen</option>
                                 <option value="2" >Kunden, die die Zeitschrift B kaufen</option>
                                 <option value="3" >Kunden, die die Tageszeitung abonnieren</option>
                                 <option value="4" >Kunden in einem bestimmten Gebiet</option>
                                 <option value="5" >Kunden in einem bestimmten Alter</option>
                              </select>
                           </div>
                           
						   <div class="form-group zielgruppen_notizen">
                              <label for="geschenk">Zielgruppen-Notiz</label> <input type="text" 
                                 class="form-control" name="zielgruppen_notizen" id="zielgruppen_notizen" placeholder="Zielgruppen-Notiz"/>
                           </div>

                           <div class="form-group">
                              <label for="beilageBei">Veröffentlichung in</label> 
                              <select class="form-control" name="beilageBei" id="beilageBei" size="1" >
                                 <option value="">---bitte wählen---</option>
                                 <option value="1" >Zeitschrift A </option>
                                 <option value="2" >Zeitschrift B </option>
                                 <option value="3" >Tageszeitung </option>

                              </select>
                           </div>
                        </div>
                        
                        <div class="col-md-6">

					                           
                           <div class="form-group">
                              <label for="budget">Budget</label>
                           		<input type="hidden" class="slider-input" id="budget" name="budget" value="5000"/>
                             </div>

                           <div class="form-group">
                              <label for="plankosten">Plankosten</label> <input type="text" 
                                 class="form-control" name="plankosten" id="plankosten" placeholder="Plankosten in Euro" />
                           </div>
                           
                           <div class="form-group">
                              <label for="aExemplare">Anzahl der Exemplare</label> <input type="text"
                                 class="form-control" name="anzahlExemplare" id="anzahlExemplare" placeholder="Anzahl der Exemplare" />
                           </div> 
                           
                           <div class="form-group">
                              <label for="name">Notiz</label>
                              <textarea name="notiz" id="notiz" class="form-control"
                                 rows="12" cols="25"  placeholder="Notiz" >${kampagne.notiz}</textarea>
                           </div>
                           <button type="submit" class="btn btn-primary pull-right">
                           <span class="glyphicon glyphicon-ok"></span> Kampagne erstellen 
                           </button>
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
$(".geschenk").hide();
$(".werbemittelId").hide();
$(".zielgruppen_notizen").hide();


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
	  focusCleanup: false
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
		anzahlExemplare: {
			required: true,
			integer: true
		},
		budget: {
			required: true,
		},
		plankosten: {
			required: true,
			euroCurrency: true
		},
		beilageBei: {
			required: true
		},
		kampagnenart: {
			required: true
		}
	  }	 
	});

	
 
	 
	 
jQuery('#dateBeginn').datetimepicker({

	onShow:function( ct ){
	   this.setOptions({
	   // maxDate:jQuery('#dateUntil').val()?jQuery('#dateUntil').val():false
			   maxDate: false
	   })
	  },
	   lang : 'de',
	   i18n : {
	      de : {
	         months : [ 'Januar', 'Februar', 'März',
	         'April', 'Mai', 'Juni', 'Juli',
	         'August', 'September', 'Oktober',
	         'November', 'Dezember' ],
	         dayOfWeek : ["So", "Mo", "Di", "Mi", "Do", "Fr", "Sa"]
	      }
	   },
	   timepicker : false,
	   format : 'd.m.Y'
	 });
	 
	 jQuery('#dateUntil').datetimepicker({


	  i18n : {
	      de : {
	         months : [ 'Januar', 'Februar', 'März',
	         'April', 'Mai', 'Juni', 'Juli',
	         'August', 'September', 'Oktober',
	         'November', 'Dezember' ],
	         dayOfWeek : ["So", "Mo", "Di", "Mi", "Do", "Fr", "Sa"]
	      }
	   }
	   ,
	   timepicker : false,
	   format : 'd.m.Y',

		  onShow:function( ct ){
			  
		   this.setOptions({
			   // minDate:jQuery('#dateBeginn').val()?jQuery('#dateBeginn').val():false
		    minDate:false
		   })
		  }
	 });
	 
	 
	 
jQuery(document).ready(function () {

	
	$('#kampagnenart').change(function() {

		if ($('#kampagnenart').val() == 3){
			$(".geschenk").show();
		}else{
			$(".geschenk").hide();
			$("#geschenk").val("");
		}
		
		if ($('#kampagnenart').val() == 2){
			$(".werbemittelId").show();
		}else{
			$(".werbemittelId").hide();
			$("#werbemittelId").val("");
		}

	});
	
	$('#zielgruppeId').change(function() {

		if ($('#zielgruppeId').val() == 4 || $('#zielgruppeId').val() == 5 ){
			$(".zielgruppen_notizen").show();
		}else{
			$(".zielgruppen_notizen").hide();
			$("#zielgruppen_notizen").val("");
		}

	});
	
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