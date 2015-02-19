package de.waksh.crm.controller;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.TimeZone;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import de.waksh.crm.dao.KampagnenDAO;
import de.waksh.crm.model.GeburtstageEntity;
import de.waksh.crm.model.SonderausgabeEntity;

@Controller
public class WerbekampagnenController {

	private static final Logger logger = LoggerFactory.getLogger(WerbekampagnenController.class);
	private ApplicationContext context;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	
	@RequestMapping(value = "/werbekampagnen", method = RequestMethod.GET)
	public String privatkunden(Model model) {
		logger.info("werbekampagnen!");
		
		return "/werbekampagnen/werbekampagnen";
	}
	
	@RequestMapping(value = "/werbekampagnen/kampagnenUebersicht", method = RequestMethod.GET)
	public String wUebersicht(Model model) {
		logger.info("kampagnenUebersicht-Page!");
		
		context = new ClassPathXmlApplicationContext("Spring-Module.xml");
		KampagnenDAO kampagnenDAO = (KampagnenDAO) context.getBean("kampagnenService");
		
		model.addAttribute("kampagnenList", kampagnenDAO.getAllKampagnen());
		
		return "/werbekampagnen/kampagnenUebersicht";
	}
	
	@RequestMapping(value = "/werbekampagnen/kampagnenErstellen", method = RequestMethod.GET)
	public String wErstellen(Model model) {
		logger.info("kampagnenErstellen-Page!");
		
		return "/werbekampagnen/kampagnenErstellen";
	}
	
	@RequestMapping(value = "/werbekampagnen/submitSonderausgabeErstellen", method = RequestMethod.POST)
	public String submitSonderausgabeErstellen(HttpServletRequest request, ModelMap model) throws ParseException {
		//model.addAttribute("name", activity.getAktivitaetenId());d
				
		String dateBeginn = request.getParameter("dateBeginn");
		String dateUntil = request.getParameter("dateUntil");
		
		DateFormat format = new SimpleDateFormat("dd.MM.yyyy", Locale.GERMANY);
		format.setTimeZone(TimeZone.getTimeZone("Europe/Berlin"));

		java.util.Date tmpDate = format.parse(dateBeginn);
		java.sql.Date sqlDateBeginn = new java.sql.Date(tmpDate.getTime());
		
		java.util.Date tmpDate2 = format.parse(dateUntil);
		java.sql.Date sqlDateUntil = new java.sql.Date(tmpDate2.getTime());
		
		SonderausgabeEntity sonderausgabe = new SonderausgabeEntity(
				request.getParameter("kampagnenBez"),
				sqlDateBeginn,
				sqlDateUntil,
				Integer.parseInt(request.getParameter("grundId")),
				Integer.parseInt(request.getParameter("zielgruppeId")),
				Integer.parseInt(request.getParameter("themenId")),
				Integer.parseInt(request.getParameter("anzahlExemplare")),
				Integer.parseInt(request.getParameter("anzahlVerkaufteExemplare")),
				Integer.parseInt(request.getParameter("anzahlInserate")),
				1,
				Double.parseDouble(request.getParameter("kosten")), 
				Double.parseDouble(request.getParameter("umsatz")),
				Integer.parseInt(request.getParameter("rating")),
				request.getParameter("notiz"));
		
		
		context = new ClassPathXmlApplicationContext("Spring-Module.xml");
		KampagnenDAO kampagnenDAO = (KampagnenDAO) context.getBean("kampagnenService");
		kampagnenDAO.insertSonderausgabe(sonderausgabe, 1);
		
		System.out.println("" + sonderausgabe.toString());
		return "/werbekampagnen/kampagnenErstellen";
	}
	
	@RequestMapping(value = "/werbekampagnen/submitBeilageErstellen", method = RequestMethod.POST)
	public String submitBeilageErstellen(HttpServletRequest request, ModelMap model) throws ParseException  {
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
	    
	    
		SonderausgabeEntity sonderausgabe = new SonderausgabeEntity(
				request.getParameter("kampagnenBez"),
				sqlDateBeginn,
				sqlDateUntil,
				Integer.parseInt(request.getParameter("grundId")),
				Integer.parseInt(request.getParameter("zielgruppeId")),
				Integer.parseInt(request.getParameter("themenId")),
				Integer.parseInt(request.getParameter("anzahlExemplare")),
				Integer.parseInt(request.getParameter("anzahlVerkaufteExemplare")),
				Integer.parseInt(request.getParameter("anzahlInserate")),
				1,
				Integer.parseInt(request.getParameter("kosten")), 
				Integer.parseInt(request.getParameter("umsatz")),
				Integer.parseInt(request.getParameter("rating")),
				request.getParameter("notiz"));
		
		context = new ClassPathXmlApplicationContext("Spring-Module.xml");
		KampagnenDAO kampagnenDAO = (KampagnenDAO) context.getBean("kampagnenService");
		kampagnenDAO.insertSonderausgabe(sonderausgabe, 2);
		
		
		System.out.println("beilage" + sonderausgabe.toString());

		return "/werbekampagnen/kampagnenErstellen";
	}
	
	@RequestMapping(value = "/werbekampagnen/submitGeburtstageErstellen", method = RequestMethod.POST)
	public String submitGeburtstageErstellen(HttpServletRequest request, ModelMap model) throws ParseException  {
		//model.addAttribute("name", activity.getAktivitaetenId());d
		
		String dateBeginn = request.getParameter("dateBeginn");
		String dateUntil = request.getParameter("dateUntil");
		
		DateFormat format = new SimpleDateFormat("dd.MM.yyyy", Locale.GERMANY);
		format.setTimeZone(TimeZone.getTimeZone("Europe/Berlin"));

		java.util.Date tmpDate = format.parse(dateBeginn);
		java.sql.Date sqlDateBeginn = new java.sql.Date(tmpDate.getTime());
		
		java.util.Date tmpDate2 = format.parse(dateUntil);
		java.sql.Date sqlDateUntil = new java.sql.Date(tmpDate2.getTime());
		
		GeburtstageEntity geburtstagsausgabe = new GeburtstageEntity(
				request.getParameter("kampagnenBez"),
				sqlDateBeginn,
				sqlDateUntil,
				Integer.parseInt(request.getParameter("grundId")),
				Double.parseDouble(request.getParameter("kosten")), 
				Integer.parseInt(request.getParameter("geschenkartId")), 
				Integer.parseInt(request.getParameter("rating")),
				request.getParameter("notiz"));
		
		context = new ClassPathXmlApplicationContext("Spring-Module.xml");
		KampagnenDAO kampagnenDAO = (KampagnenDAO) context.getBean("kampagnenService");
		kampagnenDAO.insertGeburtstagsentity(geburtstagsausgabe);
		
		System.out.println("geburtstag:   " + geburtstagsausgabe.toString());
		
		return "/werbekampagnen/kampagnenErstellen";
	}
	
}
