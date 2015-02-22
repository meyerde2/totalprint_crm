package de.waksh.crm.controller;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Locale;
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
		
		return "/werbekampagnen/kampagneErstellenNeu";
	}

	@RequestMapping(value = "/werbekampagnen/{id}", method = RequestMethod.GET)
	public String specificKampagne( HttpServletRequest request, @PathVariable Integer id,
	         HttpServletResponse response, ModelMap model) {
		
		context = new ClassPathXmlApplicationContext("Spring-Module.xml");
		KampagnenDAO kampagnenDAO = (KampagnenDAO) context.getBean("kampagnenService");
		
		model.addAttribute("kampagne", kampagnenDAO.getKampagneById(id));
		
		return "/werbekampagnen/kampagneBearbeiten";
	}
	
	@RequestMapping(value = "/werbekampagnen/auswerten/{id}", method = RequestMethod.GET)
	public String kampagneAuswerten( HttpServletRequest request, @PathVariable Integer id,
	         HttpServletResponse response, ModelMap model) {
		
		context = new ClassPathXmlApplicationContext("Spring-Module.xml");
		KampagnenDAO kampagnenDAO = (KampagnenDAO) context.getBean("kampagnenService");
		
		model.addAttribute("kampagne", kampagnenDAO.getKampagneById(id));
		
		return "/werbekampagnen/kampagneAuswerten";
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
		if (request.getParameter("werbemittelId") != null){
			werbemittelId = Integer.parseInt(request.getParameter("werbemittelId"));
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
				request.getParameter("notiz"));
		
		System.out.println("beilage" + kampagne.toString());
		context = new ClassPathXmlApplicationContext("Spring-Module.xml");
		KampagnenDAO kampagnenDAO = (KampagnenDAO) context.getBean("kampagnenService");
		kampagnenDAO.insertKampagne(kampagne);
		
		return "/werbekampagnen/kampagnenUebersicht";
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
		if (request.getParameter("werbemittelId") != null){
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
				request.getParameter("notiz"));
		
		
		System.out.println("beilage" + kampagne.toString());
		context = new ClassPathXmlApplicationContext("Spring-Module.xml");
		KampagnenDAO kampagnenDAO = (KampagnenDAO) context.getBean("kampagnenService");
		kampagnenDAO.updateKampagneById(kampagne);

		return "redirect:/werbekampagnen/kampagnenUebersicht";
	}
	
}
