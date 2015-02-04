package de.waksh.crm.controller;

import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Locale;
import java.util.TimeZone;

import javax.servlet.http.HttpServletRequest;
import javax.sql.DataSource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import de.waksh.crm.dao.ActivityDAO;
import de.waksh.crm.dao.CustomerDAO;
import de.waksh.crm.model.Activity;
import de.waksh.crm.model.ActivityEntity;
import de.waksh.crm.model.Customer;

@Controller
public class PrivatkundenController {
	
	private static final Logger logger = LoggerFactory.getLogger(AddCustomerController.class);
	private ApplicationContext context;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/privatkunden", method = RequestMethod.GET)
	public String privatkunden(Model model) {
		
		logger.info("privatkunden-Page !");
		
		return "/privatkunden/privatkunden";
	}
	
	@RequestMapping(value = "/privatkunden/stammdaten", method = RequestMethod.GET)
	public String pStammdaten(Model model) {
		
		logger.info("pStammdaten-Page!");
		
		return "/privatkunden/pStammdaten";
	}
	
	@RequestMapping(value = "/privatkunden/aboKuendigen", method = RequestMethod.GET)
	public String pAboKuendigen(Model model) {
		
		logger.info("abonnementKuendigen-Page!");
		
		return "/privatkunden/abonnementKuendigen";
	}
	
	
	@RequestMapping(value = "/privatkunden/aboAbschliessen", method = RequestMethod.GET)
	public String pAboAbschliessen(Model model) {
		
		logger.info("aboAbschlieﬂen-Page !");
		
		return "/privatkunden/abonnementAbschliessen";
	}
	
	@RequestMapping(value = "/privatkunden/submitAddAbo", method = RequestMethod.POST)
	public String pAddAbo(Model model) {
		
		logger.info("aboAbschlieﬂen-Page !");
		
		return "/privatkunden/abonnementAbschliessen";
	}
	
	@RequestMapping(value = "/privatkunden/activity", method = RequestMethod.GET)
	public String pActivity(Model model) {
		
		logger.info("activity-Page !");
		
		ApplicationContext context = new ClassPathXmlApplicationContext(
				"Spring-Module.xml");
		ActivityDAO activityDAO = (ActivityDAO) context
				.getBean("activityService");
		
		ArrayList<Activity> aList = activityDAO.getAllActivities();
		ArrayList<ActivityEntity> activityEntity = new ArrayList<ActivityEntity>();
		
		String kundenBez = "TestVorname TestNachname"; 
		String mitarbeiterBez = "Vorname Nachname";
		
		for(Activity a: aList){
			
			activityEntity.add(new ActivityEntity(a.getAktivitaetenId(), a.getKundenId(), kundenBez, a.getDate(), a.getMitarbeiterId(),
					mitarbeiterBez, a.getMedienId(), activityDAO.getMediumById(a.getMedienId()), a.getGrundId(), activityDAO.getGrundById(a.getGrundId()), a.getNotiz()));
			
		}
				
		System.out.println("activityEntity::::   " + activityEntity.toString());
		
		model.addAttribute("aList", activityEntity);
		
		return "/privatkunden/aktivitaeten";
	}
	
	@RequestMapping(value = "/privatkunden/activityAnlegen", method = RequestMethod.GET)
	public String activityAnlegen(Model model) {
		
		logger.info("activity-Page !");

		return "/privatkunden/aktivitaetenAnlegen";
	}
	
	@RequestMapping(value = "/privatkunden/submitAddActivity", method = RequestMethod.POST)
	
	public String submitAddActivity(HttpServletRequest request, ModelMap model) throws ParseException {
		//model.addAttribute("name", activity.getAktivitaetenId());d
		
		if (request.getParameter("sonstigesTxt").equals("5")){
			
			// ToDo: neuen Grund anlegen
			// Insert aufrufen und dem activity-construct neue ID mitgeben
			// Brauche Insert, getIdByGrund
		}
		
		String date2 = request.getParameter("date");
		DateFormat format = new SimpleDateFormat("dd.MM.yyyy", Locale.GERMANY);
		format.setTimeZone(TimeZone.getTimeZone("Europe/Berlin"));

		java.util.Date date = format.parse(date2);
		java.sql.Date sqlDate = new java.sql.Date(date.getTime());
		

		context = new ClassPathXmlApplicationContext(
				"Spring-Module.xml");
		ActivityDAO activityDAO = (ActivityDAO) context.getBean("activityService");

		
		// ToDo: Kundennummer mitgeben!!!
		Activity a = new Activity(0, 0, sqlDate,
				Integer.parseInt(request.getParameter("ma")), Integer.parseInt(request.getParameter("medium")),
				Integer.parseInt(request.getParameter("grund")), request.getParameter("notiz"));
		
		activityDAO.insertActivity(a);
		System.out.println("a  " + a.toString());	
	
	
		return "/privatkunden/aktivitaeten";
	}
	
	
}
