package de.waksh.crm.controller;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.nio.charset.Charset;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import de.waksh.crm.dao.CustomerDAO;
import de.waksh.crm.model.Customer;

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

	@RequestMapping(value = "test", method = RequestMethod.GET)
	public String test(Model model) {
		String greetings = "Greetings, Spring MVC!";
		model.addAttribute("message", greetings);

		String greetings2 = "Greetings, Spring MVC2222222222222!";
		model.addAttribute("message2", greetings2);

		// Json einlesen
		readJsonFromUrl("http://localhost:8080/crm/service/customer/2");

		ApplicationContext context = new ClassPathXmlApplicationContext(
				"Spring-Module.xml");
		CustomerDAO customerDAO = (CustomerDAO) context
				.getBean("customerService");

		ArrayList<Customer> customerList = customerDAO.getAllCustomers();
		model.addAttribute("cList", customerList);
		System.out.println(customerList.toString());

		Customer customer = new Customer("Dennis", 21);
		customerDAO.insertCustomer(customer);

		// Customer customer1 = customerDAO.findByCustomerId(2);
		// System.out.println(customer1);

		// Customer customer2 = customerDAO.updateByCustomerId(4,"name", 100);
		// System.out.println(customer2);

		return "test";
	}

	private static void readJsonFromUrl(String url){

		JSONParser parser = new JSONParser();

		try {
			InputStream is = new URL(url).openStream();

			BufferedReader rd = new BufferedReader(new InputStreamReader(is,
					Charset.forName("UTF-8")));

			Object obj = parser.parse(rd);

			JSONObject jsonObject = (JSONObject) obj;

			String name = (String) jsonObject.get("name");
			System.out.println("json Parse" + name);

			long age = (Long) jsonObject.get("age");
			System.out.println(age);

		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (ParseException e) {
			e.printStackTrace();
		}
	}
}
