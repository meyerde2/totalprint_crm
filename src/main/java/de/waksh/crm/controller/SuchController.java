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

import de.waksh.crm.model.Suche;

@Controller
public class SuchController {

private static final Logger logger = LoggerFactory.getLogger(AddCustomerController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/suche", method = RequestMethod.GET)
	public String privatkunden(Model model) {
		logger.info("Suche!");
		
		return "/suche/suche";
	}
	
	@RequestMapping(value = "/suche/submitSearch", method = RequestMethod.POST)
	public String submitSearch(@ModelAttribute("SpringWeb") Suche suche,
			ModelMap model) {
		logger.info("submitSearch!");
		model.addAttribute("name", suche.getName());
		model.addAttribute("test","tt444");
		return "/suche/suchResult";
	}
	
	@RequestMapping(value = "/suche/{id}", method = RequestMethod.GET)
	public String getCustomer(@PathVariable int id) {
		logger.info("Suche!");
		
		System.out.println("id:  " + id);
		System.out.println("Suche...Weiterleitung");

		//Service vom ERP-System aufrufen und auf jeweilige Stammdaten weiterleiten....
		
		return "/suche/suche";
	}

	
}
