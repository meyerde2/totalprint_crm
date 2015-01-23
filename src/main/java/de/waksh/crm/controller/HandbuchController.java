package de.waksh.crm.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import de.waksh.crm.model.Customer;
import de.waksh.crm.model.Suche;

@Controller
public class HandbuchController {

private static final Logger logger = LoggerFactory.getLogger(AddCustomerController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/handbuch", method = RequestMethod.GET)
	public String handbuch(Model model) {
		logger.info("Suche!");
		return "/handbuch/miniMenu";
	}
	
	@RequestMapping(value = "/handbuch/kapitel1", method = RequestMethod.GET)
	public String kapitel1(Model model) {
		logger.info("Suche!");
		return "/handbuch/kapitel1";
	}


	
}
