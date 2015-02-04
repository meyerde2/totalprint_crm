package de.waksh.crm.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tiles.request.Request;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import de.waksh.crm.model.Customer;
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
	public String getCustomer( HttpServletRequest request, @PathVariable Integer id, @CookieValue(value = "custId", defaultValue = "111") String name,
	         HttpServletResponse response) {
		logger.info("Suche!");
		
		System.out.println("id:  " + id);
		System.out.println("Suche...Weiterleitung");

		//Cookie
		name = "Firstname Lastname";
        Cookie cookie = new Cookie("custId", id.toString());
        Cookie cNameCookie = new Cookie("custName", name.toString());
        response.addCookie(cookie);
        response.addCookie(cNameCookie);
        
       
        Cookie[] cookie1 = request.getCookies();

        if (cookie1!=null){
        	for (Cookie c : cookie1){
        		System.out.println(c.toString());
        	}
        }
            
		
		//Service vom ERP-System aufrufen und auf jeweilige Stammdaten weiterleiten....
		//Customer customer = getCustomerById(id);
		
		 
		
		Customer customer = null; 
		
		
		//als Cookie speichern???
		
		//richtige View zurückwerfen, Unterscheidung, ob Privatkunde oder Businesskunde
		String strView;
		if (true){
			
			strView = "/privatkunden/pStammdaten";
		}else{
			strView = "/businesskunden/bStammdaten";
			
		}
		return strView;
	}

	
}
