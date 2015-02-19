<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<tiles:insertDefinition name="defaultTemplate">
<tiles:putAttribute name="body">
<title>Werbekampagne erstellen</title>
<h1>Werbekampagne erstellen</h1>
<div id="kampagneErstellen">
   <dl class="accordion">
      <a href="" class="accTitle">
         <dt>Sonderausgabe <span class="glyphicon glyphicon-pencil"></span> </dt>
      </a>
      <dd>
         <div class="row">
            <div class="col-md-8">
               <div class="well well-sm">
                  <form class="erstellung" name="erstellung" id="erstellung" method="POST"
                     action="/crm/werbekampagnen/submitSonderausgabeErstellen">
                     <div class="row">
                        <div class="col-md-6">
                           <div class="form-group">
                              <label for="kName">Kampagnenbezeichnung</label> <input type="text" 
                                 class="form-control" name="kampagnenBez" id="kampagnenBez" placeholder="Kampagnenbezeichnung" />
                           </div>
                           <div class="form-group">
                              <label for="dateBeginn">Startzeitpunkt</label> 
                              <input type="text" class="form-control datePicker" name="dateBeginn" id="dateBeginn" placeholder="Startzeitpunkt" />
                           </div>
                           <div class="form-group">
                              <label for="dateUntil">Endzeitpunkt</label> 
                              <input type="text" class="form-control datePicker" name="dateUntil" id="dateUntil" placeholder="Endzeitpunkt" />
                           </div>
                           <div class="form-group">
                              <label for="grund">Grund</label> 
                              <select class="form-control" name="grundId" size="1" >
                                 <option value="">---bitte wählen---</option>
                                 <option value="1">Neukundengewinnung</option>
                                 <option value="2">Event</option>
                                 <option value="3">Kundenbindung</option>
                                 <option value="4">Sonstiges</option>
                              </select>
                           </div>
                           <div class="form-group">
                              <label for="zielgruppe">Zielgruppe</label> 
                              <select class="form-control" name="zielgruppeId" size="1" >
                                 <option value="">---bitte wählen---</option>
                                 <option value="1">Kunden, die die Zeitschrift A kaufen</option>
                                 <option value="2">Kunden, die die Zeitschrift B kaufen</option>
                                 <option value="3">Kunden, die die Tageszeitung abonnieren</option>
                                 <option value="4">Kunden in einem bestimmten Gebiet</option>
                                 <option value="5">Kunden in einem bestimmten Alter</option>
                              </select>
                           </div>
                           <div class="form-group">
                              <label for="thema">Thema</label> 
                              <select class="form-control" name="themenId" size="1" >
                                 <option value="">---bitte wählen---</option>
                                 <option value="1">Angeln</option>
                                 <option value="2">Sport</option>
                                 <option value="3">Kunst</option>
                              </select>
                           </div>
                           <div class="form-group">
                              <label for="aExemplare">Anzahl der Exemplare</label> <input type="text"
                                 class="form-control" name="anzahlExemplare" id="anzahlExemplare" placeholder="Anzahl der Exemplare" />
                           </div>
                           <div class="form-group">
                              <label for="vExemplare">Anzahl der verkauften Exemplare</label> <input type="text"
                                 class="form-control" name="anzahlVerkaufteExemplare" id="anzahlVerkaufteExemplare" placeholder="Verkaufte Exemplare" />
                           </div>
                           <div class="form-group">
                              <label for="inserate">Anzahl der Inserate</label> <input type="text"
                                 class="form-control" name="anzahlInserate" id="anzahlInserate" placeholder="Anzahl der Inserate" />
                           </div>
                        </div>
                        <div class="col-md-6">
                           <div class="form-group">
                              <label for="kosten">Kosten</label> <input type="text"
                                 class="form-control" name="kosten" id="kosten" placeholder="Kosten" />
                           </div>
                           <div class="form-group">
                              <label for="umsatz">Umsatz</label> <input type="text"
                                 class="form-control" name="umsatz" id="umsatz" placeholder="Umsatz" />
                           </div>
                           <div class="form-group">
                              <label for="resonanz">Resonanz</label>
                                 <input class="rating-input" type="number" name="rating" id="rating"/>
                           </div>
                           <div class="form-group">
                              <label for="name">Notiz</label>
                              <textarea name="notiz" id="notiz" class="form-control"
                                 rows="12" cols="25"  placeholder="Notiz"></textarea>
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
      </dd>
      <a href="" class="accTitle">
         <dt>Beilage  <span class="glyphicon glyphicon-pencil"></span></dt>
      </a>
      <dd>
         <div class="row">
            <div class="col-md-8">
               <div class="well well-sm">
                  <form class="erstellung2" name="erstellung2" id="erstellung2" method="POST"
                     action="/crm/werbekampagnen/submitBeilageErstellen">
                    <div class="row">
                        <div class="col-md-6">
                           <div class="form-group">
                              <label for="kName">Kampagnenbezeichnung</label> <input type="text" 
                                 class="form-control" name="kampagnenBez" id="kampagnenBez" placeholder="Kampagnenbezeichnung" />
                           </div>
                           <div class="form-group">
                              <label for="dateBeginn">Startzeitpunkt</label> 
                              <input type="text" class="form-control date" name="dateBeginn" id="dateBeginn" placeholder="Startzeitpunkt" />
                           </div>
                           <div class="form-group">
                              <label for="dateUntil">Endzeitpunkt</label> 
                              <input type="text" class="form-control date" name="dateUntil" id="dateUntil" placeholder="Endzeitpunkt" />
                           </div>
                           <div class="form-group">
                              <label for="grund">Grund</label> 
                              <select class="form-control" name="grundId" size="1" >
                                 <option value="">---bitte wählen---</option>
                                 <option value="1">Neukundengewinnung</option>
                                 <option value="2">Event</option>
                                 <option value="3">Kundenbindung</option>
                                 <option value="4">Sonstiges</option>
                              </select>
                           </div>
                           <div class="form-group">
                              <label for="zielgruppe">Zielgruppe</label> 
                              <select class="form-control" name="zielgruppeId" size="1" >
                                 <option value="">---bitte wählen---</option>
                                 <option value="1">Kunden, die die Zeitschrift A kaufen</option>
                                 <option value="2">Kunden, die die Zeitschrift B kaufen</option>
                                 <option value="3">Kunden, die die Tageszeitung abonnieren</option>
                                 <option value="4">Kunden in einem bestimmten Gebiet</option>
                                 <option value="5">Kunden in einem bestimmten Alter</option>
                              </select>
                           </div>
                           <div class="form-group">
                              <label for="thema">Thema</label> 
                              <select class="form-control" name="themenId" size="1" >
                                 <option value="">---bitte wählen---</option>
                                 <option value="1">Angeln</option>
                                 <option value="2">Sport</option>
                                 <option value="3">Kunst</option>
                              </select>
                           </div>
                           <div class="form-group">
                              <label for="aExemplare">Anzahl der Exemplare</label> <input type="text"
                                 class="form-control" name="anzahlExemplare" id="anzahlExemplare" placeholder="Anzahl der Exemplare" />
                           </div>
                           <div class="form-group">
                              <label for="vExemplare">Anzahl der verkauften Exemplare</label> <input type="text"
                                 class="form-control" name="anzahlVerkaufteExemplare" id="anzahlVerkaufteExemplare" placeholder="Verkaufte Exemplare" />
                           </div>
                           <div class="form-group">
                              <label for="inserate">Anzahl der Inserate</label> <input type="text"
                                 class="form-control" name="anzahlInserate" id="anzahlInserate" placeholder="Anzahl der Inserate" />
                           </div>
                        </div>
                        <div class="col-md-6">
                           <div class="form-group">
                              <label for="kosten">Kosten</label> <input type="text"
                                 class="form-control" name="kosten" id="kosten" placeholder="Kosten" />
                           </div>
                           <div class="form-group">
                              <label for="umsatz">Umsatz</label> <input type="text"
                                 class="form-control" name="umsatz" id="umsatz" placeholder="Umsatz" />
                           </div>
                           <div class="form-group">
                              <label for="resonanz">Resonanz</label>
                                 <input class="rating-input" type="number" name="rating" id="rating"/>
                           </div>
                           <div class="form-group">
                              <label for="name"> Notiz</label>
                              <textarea name="notiz" id="notiz" class="form-control"
                                 rows="12" cols="25"  placeholder="Notiz"></textarea>
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
      </dd>
      <a href="" class="accTitle">
         <dt>Geburtstage  <span class="glyphicon glyphicon-pencil"></span></dt>
      </a>
      <dd>
         <div class="row">
            <div class="col-md-8">
               <div class="well well-sm">
                  <form class="erstellung3" name="erstellung3" id="erstellung3" method="POST"
                     action="/crm/werbekampagnen/submitGeburtstageErstellen">
                     <div class="row">
                        <div class="col-md-6">
                           <div class="form-group">
                              <label for="kName">Kampagnenbezeichnung</label> <input type="text" 
                                 class="form-control" name="kampagnenBez" id="kampagnenBez" placeholder="Kampagnenbezeichnung" />
                           </div>
                           <div class="form-group">
                              <label for="dateBeginn">Startzeitpunkt</label> 
                              <input type="text" class="form-control datePicker" name="dateBeginn" id="dateBeginn" placeholder="Startzeitpunkt" />
                           </div>
                           <div class="form-group">
                              <label for="dateUntil">Endzeitpunkt</label> 
                              <input type="text" class="form-control datePicker" name="dateUntil" id="dateUntil" placeholder="Endzeitpunkt" />
                           </div>
                           <div class="form-group">
                              <label for="grund">Grund</label> 
                              <select class="form-control" name="grundId" size="1" >
                                 <option value="">---bitte wählen---</option>
                                 <option value="1">Neukundengewinnung</option>
                                 <option value="2">Event</option>
                                 <option value="3">Kundenbindung</option>
                                 <option value="4">Sonstiges</option>
                              </select>
                           </div>
                           <div class="form-group">
                              <label for="kosten">Kosten</label> <input type="text"
                                 class="form-control" name="kosten" id="kosten" placeholder="Kosten in Euro" />
                           </div>
                           <div class="form-group">
                              <label for="grund">Geschenkart</label> 
                              <select class="form-control" name="geschenkartId" id="geschenkartId" size="1" >
                                 <option value="">---bitte wählen---</option>
                                 <option value="1">XYZ</option>
                                 <option value="2">ABC</option>
                              </select>
                           </div>
                           <div class="form-group">
                              <label for="resonanz">Resonanz</label>
                                 <input class="rating-input" type="number" name="rating" id="rating"/>
                           </div>
                        </div>
                        <div class="col-md-6">
                           <div class="form-group">
                              <label for="name"> Notiz</label>
                              <textarea name="notiz" id="notiz" class="form-control"
                                 rows="12" cols="25"  placeholder="Notiz"></textarea>
                           </div>
                           <input type="submit" class="btn btn-primary pull-right" value="Kampagne erstellen" />
                        </div>
                     </div>
                  </form>
               </div>
            </div>
         </div>
      </dd>
   </dl>
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

	$( ".erstellung2" ).validate({
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
				required: true
			},
			anzahlInserate: {
				required: true
			},
			anzahlVerkaufteExemplare: {
				required: true
			},
			kosten: {
				required: true,
			},
			umsatz: {
				required: true,
			},
			rating: {
				required: true,
			}
		  }	 
		});
	
	$( ".erstellung3" ).validate({
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
			kosten: {
				required: true,
			},
			geschenkart: {
				required: true,
			},
			rating: {
				required: true,
			}
		  }	 
		});

(function($) {

   var allPanels = $('.accordion > dd').hide();

   $('a > dt').click(function() {
      allPanels.slideUp();
      $(this).parent().next().toggle();
      return false;
   }
   );

}
)(jQuery);

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