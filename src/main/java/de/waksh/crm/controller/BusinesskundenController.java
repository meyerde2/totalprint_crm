package de.waksh.crm.controller;

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
import de.waksh.crm.model.Activity;
import de.waksh.crm.model.ActivityEntity;
import de.waksh.crm.model.Customer;

@Controller
public class BusinesskundenController {

	private static final Logger logger = LoggerFactory.getLogger(AddCustomerController.class);
	private ApplicationContext context;

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/businesskunden", method = RequestMethod.GET)
	public String privatkunden(Model model) {
		logger.info("Gesch‰ftskunden!");
		
		return "/businesskunden/businesskunden";
	}
	
	@RequestMapping(value = "/businesskunden/stammdaten", method = RequestMethod.GET)
	public String pStammdaten(Model model) {
		logger.info("pStammdaten-Page!");
		
		return "/businesskunden/bStammdaten";
	}
		
	
	@RequestMapping(value = "/businesskunden/bestellungBearbeiten", method = RequestMethod.GET)
	public String pAboAbschliessen(Model model) {
		logger.info("aboAbschlieﬂen-Page !");
		
		return "/businesskunden/bestellungBearbeiten";
	}
	
	@RequestMapping(value = "/businesskunden/submitBestellung", method = RequestMethod.POST)
	public String pAddAbo(Model model) {
		logger.info("bestellungAbschlieﬂen-Page !");
		
		return "/businesskunden/bestellungBearbeiten";
	}
	
	@RequestMapping(value = "/businesskunden/activity", method = RequestMethod.GET)
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
		
		return "/businesskunden/aktivitaeten";
	}
	
	@RequestMapping(value = "/businesskunden/activityAnlegen", method = RequestMethod.GET)
	public String pActivityAnlegen(Model model) {
		logger.info("activityAnlegen-Page !");
		
		return "/businesskunden/aktivitaetenAnlegen";
	}
	
	@RequestMapping(value = "/businesskunden/submitAddActivity", method = RequestMethod.POST)
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
		
			 grundId = activityDAO.insertNewGrund(request.getParameter("sonstigesTxt"));
		
		}

		// ToDo: Kundennummer mitgeben!
		Activity a = new Activity(0, 11, sqlDate,
				Integer.parseInt(request.getParameter("maId")), Integer.parseInt(request.getParameter("medium")),
				grundId, request.getParameter("notiz"));
		
		activityDAO.insertActivity(a);
		System.out.println("a  " + a.toString());	
	
		return "redirect:/privatkunden/activity";
	}
}
