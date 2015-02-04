package de.waksh.crm.controller;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import de.waksh.crm.dao.CustomerDAO;
import de.waksh.crm.model.Customer;

@RestController
@RequestMapping("/service/customer/")
public class JsonServiceController {
	
	private ApplicationContext context;
	CustomerDAO customerDAO;
	
	public JsonServiceController() {
	/*	context = new ClassPathXmlApplicationContext(
				"Spring-Module.xml");
		customerDAO = (CustomerDAO) context.getBean("customerService");
		*/
	}
	@RequestMapping(value = "/{id}", method = RequestMethod.GET, headers = "Accept=application/json; charset=UTF-8")
	public Customer getUser(@PathVariable int id) {
		System.out.println("id:  " + id);

		Customer customer = customerDAO.getCustomerById(id);
		
		return customer;
	}

	@RequestMapping(method = RequestMethod.GET, headers = "Accept=application/json; charset=UTF-8")
	public List<Customer> getAllUsers() {
		List<Customer> customers = customerDAO.getAllCustomers();
		return customers;
	}

}
