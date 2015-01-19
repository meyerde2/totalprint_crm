package de.waksh.crm.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BusinesskundenController {

private static final Logger logger = LoggerFactory.getLogger(AddCustomerController.class);
	
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
	
	@RequestMapping(value = "/businesskunden/submitAddAbo", method = RequestMethod.POST)
	public String pAddAbo(Model model) {
		logger.info("aboAbschlieﬂen-Page !");
		
		return "/businesskunden/bestellungBearbeiten";
	}
	
	@RequestMapping(value = "/businesskunden/activity", method = RequestMethod.GET)
	public String pActivity(Model model) {
		logger.info("activity-Page !");
		
		return "/businesskunden/aktivitaeten";
	}
	
	@RequestMapping(value = "/businesskunden/activityAnlegen", method = RequestMethod.GET)
	public String pActivityAnlegen(Model model) {
		logger.info("activityAnlegen-Page !");
		
		return "/businesskunden/aktivitaetenAnlegen";
	}
	
	
}
