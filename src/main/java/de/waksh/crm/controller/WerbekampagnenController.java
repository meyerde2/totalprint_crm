package de.waksh.crm.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class WerbekampagnenController {

private static final Logger logger = LoggerFactory.getLogger(AddCustomerController.class);
	
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
		
		return "/werbekampagnen/kampagnenUebersicht";
	}
	
	@RequestMapping(value = "/werbekampagnen/kampagnenErstellen", method = RequestMethod.GET)
	public String wErstellen(Model model) {
		logger.info("kampagnenErstellen-Page!");
		
		return "/werbekampagnen/kampagnenErstellen";
	}
	
}
