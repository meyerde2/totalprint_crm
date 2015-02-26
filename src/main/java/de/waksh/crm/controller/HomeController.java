package de.waksh.crm.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import de.waksh.crm.model.Suche;

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
	/*
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

	 */
	/*
	 * Sessiontest
	 */
	
	@RequestMapping(value = "/hello")
    public String hello(
            @CookieValue(value = "hitCounter", defaultValue = "0") Long hitCounter,
             HttpServletRequest request, HttpServletResponse response) {
 
        // increment hit counter
        hitCounter++;
        System.out.println("im Hello:  "  + request.getSession().getAttribute("suche").toString());
        
        // create cookie and set it in response
        Cookie cookie = new Cookie("hitCounter", hitCounter.toString());
        response.addCookie(cookie);
 
        // render hello.jsp page
        return "home";
    }
	@RequestMapping(value = "test", method = RequestMethod.GET)
	public String test(Model model, HttpServletRequest request) {
		Suche suche = new Suche(1, "name1", "vorname2", "firma3", "kundenart4");
		request.getSession().setAttribute("suche", suche);
        System.out.println("im test:  " + request.getSession().getAttribute("suche").toString());
		return "test";
	}

	
}
