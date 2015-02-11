package de.waksh.crm.controller;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import de.waksh.crm.dao.CustomerDAO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory
			.getLogger(HomeController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = { "/", "/home", "/crm/" }, method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG,
				DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);
		ArrayList<String> arr = new ArrayList<String>();
		arr.add("erster");
		arr.add("zweiter");
		arr.add("dritter");

		model.addAttribute("list", arr);

		model.addAttribute("serverTime", formattedDate);
	
		return "home";
	}

	@RequestMapping(value = "/hello")
    public String hello(
            @CookieValue(value = "hitCounter", defaultValue = "0") Long hitCounter,
            HttpServletResponse response) {
 
        // increment hit counter
        hitCounter++;
 
        // create cookie and set it in response
        Cookie cookie = new Cookie("hitCounter", hitCounter.toString());
        response.addCookie(cookie);
 
        // render hello.jsp page
        return "home";
    }
	@RequestMapping(value = "test", method = RequestMethod.GET)
	public String test(Model model) {
		String greetings = "Greetings, Spring MVC!";
		model.addAttribute("message", greetings);

		String greetings2 = "Greetings, Spring MVC2222222222222!";
		model.addAttribute("message2", greetings2);

		

		ApplicationContext context = new ClassPathXmlApplicationContext(
				"Spring-Module.xml");
		CustomerDAO customerDAO = (CustomerDAO) context
				.getBean("customerService");
		customerDAO.getAllCustomers();
		//ArrayList<Customer> customerList = customerDAO.getAllCustomers();
		//model.addAttribute("cList", customerList);
		///System.out.println(customerList.toString());

		//Customer customer = new Customer("Dennis", 21);
		//customerDAO.insertCustomer(customer);

		// Customer customer1 = customerDAO.findByCustomerId(2);
		// System.out.println(customer1);

		// Customer customer2 = customerDAO.updateByCustomerId(4,"name", 100);
		// System.out.println(customer2);
		return "test";
	}

	
}
