package de.waksh.crm.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class PrivatkundenController {

private static final Logger logger = LoggerFactory.getLogger(AddCustomerController.class);
	
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
		
		return "/privatkunden/aktivitaeten";
	}
	
	@RequestMapping(value = "/privatkunden/activityAnlegen", method = RequestMethod.GET)
	public String pActivityAnlegen(Model model) {
		logger.info("activityAnlegen-Page !");
		
		return "/privatkunden/aktivitaetenAnlegen";
	}
	
	
	
}
