package de.waksh.crm.controller;

import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;
import org.json.JSONTokener;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import de.waksh.crm.model.Suche;
import de.waksh.crm.model.User;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory
			.getLogger(HomeController.class);

	
	public static String isLoggedIn(String view, HttpServletRequest request)  {
		String inputView = view;
		URI uri;
		try {
			uri = new URI("http://lvps87-230-14-183.dedicated.hosteurope.de/user");
			InputStreamReader is = new InputStreamReader(uri.toURL().openStream(),"UTF-8");

			JSONObject jsonObject = new JSONObject(new JSONTokener(is));

			//System.out.println("active?  " +jsonObject.getInt("active") );
			
			int active = Integer.parseInt(jsonObject.get("active").toString());
			
			if (active == 1) {
				System.out.println("active? jo " +jsonObject.getInt("active") );
				int userId = Integer.parseInt(jsonObject.get("user_id").toString());

				URI uriP = new URI("http://lvps87-230-14-183.dedicated.hosteurope.de:8080/ERP-System/mitarbeiter/show/" +userId + ".json");
				InputStreamReader isP = new InputStreamReader(uriP.toURL().openStream(), "UTF-8");
				JSONObject jsonObjectP = new JSONObject(new JSONTokener(isP));
				request.getSession().setAttribute("user",new User(userId, jsonObjectP.get("emailUnternehmen")
								.toString()));
			} else {
				view = "redirect:http://lvps87-230-14-183.dedicated.hosteurope.de/login";
			}
		} catch (URISyntaxException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return inputView;

	}
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
		Suche suche = new Suche(1, "name1", "vorname2", "firma3", "kundenart4", "");
		request.getSession().setAttribute("suche", suche);
        System.out.println("im test:  " + request.getSession().getAttribute("suche").toString());
		return "test";
	}

	
}
