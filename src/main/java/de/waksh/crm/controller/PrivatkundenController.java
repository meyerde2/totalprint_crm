package de.waksh.crm.controller;

import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
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

import de.waksh.crm.dao.ActivityDAO;
import de.waksh.crm.dao.JsonDAO;
import de.waksh.crm.model.Activity;
import de.waksh.crm.model.ActivityEntity;
import de.waksh.crm.model.Customer;

@Controller
public class PrivatkundenController {
	
	private static final Logger logger = LoggerFactory.getLogger(AddCustomerController.class);
	private ApplicationContext context;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 * Ist eigentlich nicht eingesetzt...
	 */
	@RequestMapping(value = "/privatkunden", method = RequestMethod.GET)
	public String privatkunden(Model model) {
		
		logger.info("privatkunden-Page !");
		
		return "/privatkunden/privatkunden";
	}
	
	/**
	 *  Stammdaten
	 */
	@RequestMapping(value = "/privatkunden/stammdaten", method = RequestMethod.GET)
	public String pStammdaten(Model model) {
		
		logger.info("pStammdaten-Page!");
		
		return "/privatkunden/pStammdaten";
	}
	
	/**
	 * Abonnement kündigen - View
	 */
	
	@RequestMapping(value = "/privatkunden/aboKuendigen", method = RequestMethod.GET)
	public String pAboKuendigen(Model model) {
		
		logger.info("abonnementKuendigen-Page!");
		
		return "/privatkunden/abonnementKuendigen";
	}
	
	
	/**
	 * Abonnement kündigen - Submit Action
	 */

	@RequestMapping(value = "/privatkunden/submitCancelAbo", method = RequestMethod.POST)
	public String pSubmitCancelAbo(HttpServletRequest request, Model model) {
		
		logger.info("abonnementKuendigen-Page!");
		
		System.out.println("cancel abo");
		
		// ToDo: Datum an ERP übermitteln
		
		
		
		return "/privatkunden/abonnementKuendigen";
	}
	
	
	
	/**
	 * Abonnement abschließen View
	 */
	
	@RequestMapping(value = "/privatkunden/aboAbschliessen", method = RequestMethod.GET)
	public String pAboAbschliessen(Model model) {
		
		logger.info("aboAbschließen-Page !");

		
		return "/privatkunden/abonnementAbschliessen";
	}
	
	/**
	 * Abonnement abschließen - Submit-Action
	 * @throws IOException 
	 */
	
	@RequestMapping(value = "/privatkunden/submitAddAbo", method = RequestMethod.POST)
	public String pAddAbo(HttpServletRequest request, Model model) {
		
		logger.info("aboAbschließen-Page !");
		
		// Abo-Object
		String strZahlungsart = request.getParameter("zahlungsart").toString();
		
		if (request.getSession().getAttribute("currentCustomer") != null){
			
			Customer c = (Customer) request.getSession().getAttribute("currentCustomer");
			System.out.println("currentCustomer....  " +c.toString());

		}
		
			//ToDo!!
		
		
		//AboEntity abo = new AboEntity(customerId, isLastschrift, iban, bic, bank, kontoinhaber, isAbweichendeLieferanschrift, lieferStrasse, lieferPlz, lieferOrt, mengeZeitschriftA, mengeZeitschriftB, mengeTageszeitung)
		System.out.println("zahlungsart: " + strZahlungsart);
		
		context = new ClassPathXmlApplicationContext("Spring-Module.xml");
		JsonDAO jsonDAO = (JsonDAO) context.getBean("jsonServiceBean");
		jsonDAO.generateJsonAbo(null);
		
		return "/privatkunden/pStammdaten";
		// return "redirect:/privatkunden/submitAddAboJSON" ;
	}
	
	
	
	/**
	 * Aktivitäten-Übersicht
	 */
	
	@RequestMapping(value = "/privatkunden/activity", method = RequestMethod.GET)
	public String pActivity(HttpServletRequest request, Model model) {
		
		logger.info("activity-Page !");
		
		ApplicationContext context = new ClassPathXmlApplicationContext("Spring-Module.xml");
		ActivityDAO activityDAO = (ActivityDAO) context.getBean("activityService");
		int id = 0;
		if (request.getSession().getAttribute("currentCustomer") != null){
			
			Customer c = (Customer) request.getSession().getAttribute("currentCustomer");
			id = c.getId();
			
		}

		ArrayList<ActivityEntity> activityEntity = activityDAO.getAllActivities(id);
		model.addAttribute("aList", activityEntity);
		
		System.out.println("activityEntity:   " + activityEntity.toString());
		
		return "/privatkunden/aktivitaeten";
	}
	
	/**
	 * Aktivität anlegen - View
	 */
	
	@RequestMapping(value = "/privatkunden/activityAnlegen", method = RequestMethod.GET)
	public String activityAnlegen(Model model) {
		
		logger.info("activity-Page !");

		return "/privatkunden/aktivitaetenAnlegen";
	}
	
	
	/**
	 *  Aktivität anlegen  -  Submit-Action
	 */
	
	@RequestMapping(value = "/privatkunden/submitAddActivity", method = RequestMethod.POST)
	public String submitAddActivity(HttpServletRequest request, ModelMap model) throws ParseException {
		//model.addAttribute("name", activity.getAktivitaetenId());d
		
		
		
		String date2 = request.getParameter("date");
		DateFormat format = new SimpleDateFormat("dd.MM.yyyy", Locale.GERMANY);
		format.setTimeZone(TimeZone.getTimeZone("Europe/Berlin"));

		java.util.Date date = format.parse(date2);
		java.sql.Date sqlDate = new java.sql.Date(date.getTime());
		

		context = new ClassPathXmlApplicationContext("Spring-Module.xml");
		ActivityDAO activityDAO = (ActivityDAO) context.getBean("activityService");
		int grundId = Integer.parseInt(request.getParameter("grund"));
		if (request.getParameter("grund").equals("5")){
			
			// ToDo: neuen Grund anlegen
			
			 grundId = activityDAO.insertNewGrund(request.getParameter("sonstigesTxt"));
		
			
			// Insert aufrufen und dem activity-construct neue ID mitgeben
			// Brauche Insert, getIdByGrund
		}

		// ToDo: Kundennummer mitgeben!= PersonID aus dem JSON,  MA ID - aus der Session auslesen!
		Activity a = new Activity(0, 11, sqlDate,
				Integer.parseInt(request.getParameter("maId")), Integer.parseInt(request.getParameter("medium")),
				grundId, request.getParameter("notiz"));
		
		activityDAO.insertActivity(a);
		System.out.println("a  " + a.toString());	
	
		return "redirect:/privatkunden/activity";
	}
	
	
}
