package de.waksh.crm.controller;

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

import de.waksh.crm.dao.CustomerDAO;
import de.waksh.crm.model.Customer;

/**
 * Handles requests for the application about page.
 */
@Controller
public class AddCustomerController {
	
	private static final Logger logger = LoggerFactory.getLogger(AddCustomerController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/addCustomer", method = RequestMethod.GET)
	public String addCustomer(Model model) {
		logger.info("addCustomer-Page !");
		
		return "addCustomer";
	}
	
	@RequestMapping(value = "/submitAddCustomer", method = RequestMethod.POST)
	public String addStudent(@ModelAttribute("SpringWeb") Customer customer,
			ModelMap model) {
		model.addAttribute("name", customer.getName());
		model.addAttribute("age", customer.getAge());

		ApplicationContext context = new ClassPathXmlApplicationContext(
				"Spring-Module.xml");
		CustomerDAO customerDAO = (CustomerDAO) context.getBean("customerDAO");
		Customer c = new Customer(customer.getName(), customer.getAge());
		customerDAO.insert(c);
		return "result";
	}
	
	
	
}
