package de.waksh.crm.controller;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.Random;
import java.util.TimeZone;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import de.waksh.crm.dao.KampagnenDAO;
import de.waksh.crm.model.WerbekampagnenEntity;

@Controller
public class WerbekampagnenController {

	private static final Logger logger = LoggerFactory.getLogger(WerbekampagnenController.class);
	private ApplicationContext context;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	
	@RequestMapping(value = "/werbekampagnen", method = RequestMethod.GET)
	public String privatkunden(HttpServletRequest request, Model model) {
		logger.info("werbekampagnen!");

		return HomeController.isLoggedIn("/werbekampagnen/werbekampagnen", request);
	}
	
	@RequestMapping(value = "/werbekampagnen/kampagnenUebersicht", method = RequestMethod.GET)
	public String wUebersicht(HttpServletRequest request, Model model) {
		logger.info("kampagnenUebersicht-Page!");
		
		context = new ClassPathXmlApplicationContext("Spring-Module.xml");
		KampagnenDAO kampagnenDAO = (KampagnenDAO) context.getBean("kampagnenService");
		
		model.addAttribute("kampagnenList", kampagnenDAO.getAllKampagnen());
		
		return HomeController.isLoggedIn("/werbekampagnen/kampagnenUebersicht", request);
	}
	
	@RequestMapping(value = "/werbekampagnen/kampagnenErstellen", method = RequestMethod.GET)
	public String wErstellen(HttpServletRequest request, Model model) {
		logger.info("kampagnenErstellen-Page!");
		
		return HomeController.isLoggedIn("/werbekampagnen/kampagneErstellenNeu", request);
	}

	@RequestMapping(value = "/werbekampagnen/{id}", method = RequestMethod.GET)
	public String specificKampagne( HttpServletRequest request, @PathVariable Integer id,
	         HttpServletResponse response, ModelMap model) {
		
		context = new ClassPathXmlApplicationContext("Spring-Module.xml");
		KampagnenDAO kampagnenDAO = (KampagnenDAO) context.getBean("kampagnenService");
		
		model.addAttribute("kampagne", kampagnenDAO.getKampagneById(id));
		

		return HomeController.isLoggedIn("/werbekampagnen/kampagneBearbeiten", request);
	}
	
	@RequestMapping(value = "/werbekampagnen/auswerten/{id}", method = RequestMethod.GET)
	public String kampagneAuswerten( HttpServletRequest request, @PathVariable Integer id,
	         HttpServletResponse response, ModelMap model) {
		
		context = new ClassPathXmlApplicationContext("Spring-Module.xml");
		KampagnenDAO kampagnenDAO = (KampagnenDAO) context.getBean("kampagnenService");
		WerbekampagnenEntity k = kampagnenDAO.getKampagneById(id);
		
		model.addAttribute("kampagne", k);

		return HomeController.isLoggedIn("/werbekampagnen/kampagneAuswerten", request);

	}
	
	@RequestMapping(value = "/werbekampagnen/auswerten/submit/{id}", method = RequestMethod.POST)
	public String kampagneAuswertenSubmit( HttpServletRequest request, @PathVariable Integer id,
	         HttpServletResponse response, ModelMap model) {
		
		context = new ClassPathXmlApplicationContext("Spring-Module.xml");
		KampagnenDAO kampagnenDAO = (KampagnenDAO) context.getBean("kampagnenService");
		WerbekampagnenEntity k = kampagnenDAO.getKampagneById(id);


		if (k.getKosten() == 0.0){
			
			Random r = new Random();
			int Low = (int)(k.getPlankosten() *0.7);
			int High = (int) (k.getPlankosten() * 1.3);
			int R = r.nextInt(High-Low) + Low;
			k.setKosten(R);
		}
		
		if (k.getAnzahlVerkaufteExemplare() == 0){
			
			Random r = new Random();
			int Low = (int)(k.getAnzahlExemplare() *0.5);
			int High = (int) (k.getAnzahlExemplare());
			int R = r.nextInt(High-Low) + Low;
			k.setAnzahlVerkaufteExemplare(R);
			
		}
	
		
		if (k.getUmsatz() == 0.0){
			
			Random r = new Random();
			int Low = (int)(k.getKosten() *0.7);
			int High = (int) (k.getKosten() * 2.0);
			int R = r.nextInt(High-Low) + Low;
			k.setUmsatz(R);
			
		}

		if (k.getResonanz() == 0){
			
			Random r = new Random();
			int Low = 1;
			int High = 5;
			int R = r.nextInt(High-Low) + Low;
			k.setResonanz(R);
			
		}
		
		int gesamt = 0;
		double gewinn = 0;

		if (k.getArtId() != 3) {
			gewinn = k.getUmsatz() - k.getKosten();

			if (gewinn > (k.getKosten() * 1.1) && gewinn > 0) {
				// $(".gewinn #green").addClass("active");
				gesamt = gesamt + 3;
			} else if (gewinn < (gewinn * 1.1) && gewinn > 0) {
				// (".gewinn #orange").addClass("active");
				gesamt = gesamt + 2;
			} else {
				// $(".gewinn #red").addClass("active");
				gesamt = gesamt + 1;
			}
		}
		
		if (k.getBudget()> (k.getKosten() * 1.1) && k.getBudget() > 0 ){
			//$(".budget #green").addClass("active");
			gesamt = gesamt +3;
		}else if(k.getBudget() < (k.getBudget() * 1.1) && k.getBudget() > 0){
			//$(".budget #orange").addClass("active");
			gesamt = gesamt +2;

		}else{
			//$(".budget #red").addClass("active");
			gesamt = gesamt +1;
		}
		
		if (k.getResonanz() > 3 ){
			//$(".resonanz #green").addClass("active");
			gesamt = gesamt +3;
		}else if(k.getResonanz() > 1){
//			$(".resonanz #orange").addClass("active");
			gesamt = gesamt +2;
		}else{
			//$(".resonanz #red").addClass("active");
			gesamt = gesamt +1;
		}
		
		int status= 0;
		if (k.getArtId() != 3){
			if (gesamt > 7  ){
				status = 3;
			}else if(gesamt > 4){
				status = 2;
			}else{
				status = 1;
			}
		}else{
			if (gesamt > 4  ){
				status = 3;
			}else if(gesamt > 2){
				status = 2;
			}else{
				status = 1;
			}
		}

		k.setStatus(status);

		kampagnenDAO.updateKampagneById(k);
		kampagnenDAO.updateKampagnenStatusById(k);
		model.addAttribute("kampagne", k);
		
		return HomeController.isLoggedIn("/werbekampagnen/kampagneAuswerten", request);
		//return "/werbekampagnen/pie";

	}
	
	@RequestMapping(value = "/werbekampagnen/submitKampagneErstellen", method = RequestMethod.POST)
	public String submitKampagne(HttpServletRequest request, ModelMap model) throws ParseException  {
		//model.addAttribute("name", activity.getAktivitaetenId());d
		
		String dateBeginn = request.getParameter("dateBeginn");
		String dateUntil = request.getParameter("dateUntil");
		
		DateFormat format = new SimpleDateFormat("dd.MM.yyyy", Locale.GERMANY);
		format.setTimeZone(TimeZone.getTimeZone("Europe/Berlin"));

		java.util.Date tmpDate = format.parse(dateBeginn);
		java.sql.Date sqlDateBeginn = new java.sql.Date(tmpDate.getTime());
		
		java.util.Date tmpDate2 = format.parse(dateUntil);
		java.sql.Date sqlDateUntil = new java.sql.Date(tmpDate2.getTime());
		
		
		// ToDo: Euro Komma Cast
		//NumberFormat format = NumberFormat.getInstance(Locale.FRANCE);
	    //Number number = format.parse("1,234");
	    //double d = number.doubleValue();
		int werbemittelId = 0;
		if (request.getParameter("werbemittelId") != null && request.getParameter("werbemittelId").toString() != ""){
			
			werbemittelId = Integer.parseInt(request.getParameter("werbemittelId").toString());
		}
		WerbekampagnenEntity kampagne = new WerbekampagnenEntity(
				0,
				request.getParameter("kampagnenBez"),
				sqlDateBeginn,
				sqlDateUntil,
				Integer.parseInt(request.getParameter("kampagnenart")),
				"",
				Integer.parseInt(request.getParameter("grundId")),
				"",
				Integer.parseInt(request.getParameter("beilageBei")),
				"",
				Integer.parseInt(request.getParameter("zielgruppeId")),
				"",
				request.getParameter("zielgruppen_notizen"),
				"",
				Integer.parseInt(request.getParameter("anzahlExemplare")),
				0,
				0,
				request.getParameter("geschenk"),
				0, 
				0,
				0,
				Double.parseDouble(request.getParameter("plankosten").toString().replace(",", ".")),
				Double.parseDouble(request.getParameter("budget").toString().replace(",", ".")),
				werbemittelId,
				request.getParameter("notiz"),
				0);
		
		System.out.println("beilage" + kampagne.toString());
		context = new ClassPathXmlApplicationContext("Spring-Module.xml");
		KampagnenDAO kampagnenDAO = (KampagnenDAO) context.getBean("kampagnenService");
		kampagnenDAO.insertKampagne(kampagne);
		
		return HomeController.isLoggedIn("redirect:/werbekampagnen/kampagnenUebersicht", request);
	}
	
	@RequestMapping(value = "/werbekampagnen/submitKampagneUpdaten", method = RequestMethod.POST)
	public String submitUpdateKampage(HttpServletRequest request, ModelMap model) throws ParseException  {
		//model.addAttribute("name", activity.getAktivitaetenId());d
		
		String dateBeginn = request.getParameter("dateBeginn");
		String dateUntil = request.getParameter("dateUntil");
		
		DateFormat format = new SimpleDateFormat("dd.MM.yyyy", Locale.GERMANY);
		format.setTimeZone(TimeZone.getTimeZone("Europe/Berlin"));

		java.util.Date tmpDate = format.parse(dateBeginn);
		java.sql.Date sqlDateBeginn = new java.sql.Date(tmpDate.getTime());
		
		java.util.Date tmpDate2 = format.parse(dateUntil);
		java.sql.Date sqlDateUntil = new java.sql.Date(tmpDate2.getTime());
		
		
		// ToDo: Euro Komma Cast
		//NumberFormat format = NumberFormat.getInstance(Locale.FRANCE);
	    //Number number = format.parse("1,234");
	    //double d = number.doubleValue();
		int werbemittelId = 0;
		if (request.getParameter("werbemittelId") != null && request.getParameter("werbemittelId") != ""){
			werbemittelId = Integer.parseInt(request.getParameter("werbemittelId"));
		}
		
		
		
		WerbekampagnenEntity kampagne = new WerbekampagnenEntity(
				Integer.parseInt(request.getParameter("id")),
				request.getParameter("kampagnenBez"),
				sqlDateBeginn,
				sqlDateUntil,
				Integer.parseInt(request.getParameter("kampagnenart")),
				"",
				Integer.parseInt(request.getParameter("grundId")),
				"",
				Integer.parseInt(request.getParameter("beilageBei")),
				"",
				Integer.parseInt(request.getParameter("zielgruppeId")),
				"",
				request.getParameter("zielgruppen_notizen"),
				"",
				Integer.parseInt(request.getParameter("anzahlExemplare")),
				0,
				0,
				request.getParameter("geschenk"),
				0, 
				0,
				0,
				Double.parseDouble(request.getParameter("plankosten").toString().replace(",", ".")),
				Double.parseDouble(request.getParameter("budget").toString().replace(",", ".")),
				werbemittelId,
				request.getParameter("notiz"),
				0);
		
		
		System.out.println("beilage" + kampagne.toString());
		context = new ClassPathXmlApplicationContext("Spring-Module.xml");
		KampagnenDAO kampagnenDAO = (KampagnenDAO) context.getBean("kampagnenService");
		kampagnenDAO.updateKampagneById(kampagne);

		return HomeController.isLoggedIn("redirect:/werbekampagnen/kampagnenUebersicht", request);
	}
	
}
