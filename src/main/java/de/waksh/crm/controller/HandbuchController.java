package de.waksh.crm.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HandbuchController {

private static final Logger logger = LoggerFactory.getLogger(AddCustomerController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/handbuch", method = RequestMethod.GET)
	public String handbuch(Model model) {
		logger.info("Suche!");
		return "/handbuch/overview";
	}
	
	@RequestMapping(value = "/handbuch/businesskunden", method = RequestMethod.GET)
	public String businesskunden (Model model) {
		logger.info("Suche!");
		return "/handbuch/businesskunden";
	}
	
	@RequestMapping(value = "/handbuch/privatkunden", method = RequestMethod.GET)
	public String privatkunden(Model model) {
		logger.info("Suche!");
		return "/handbuch/privatkunden";
	}
	
	@RequestMapping(value = "/handbuch/kampagne", method = RequestMethod.GET)
	public String kampagne(Model model) {
		logger.info("Suche!");
		return "/handbuch/kampagne";
	}
	
	@RequestMapping(value = "/handbuch/kapitel1", method = RequestMethod.GET)
	public String kapitel1(Model model) {
		logger.info("Suche!");
		return "/handbuch/kapitel1";
	}
	
	
}
