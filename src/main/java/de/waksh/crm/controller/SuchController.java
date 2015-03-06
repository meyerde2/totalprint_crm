package de.waksh.crm.controller;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.json.JSONObject;
import org.json.JSONTokener;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import de.waksh.crm.dao.CustomerDAO;
import de.waksh.crm.model.Customer;
import de.waksh.crm.model.Suche;

@Controller
public class SuchController {

private static final Logger logger = LoggerFactory.getLogger(AddCustomerController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = { "/", "/home", "/crm/", "/suche" }, method = RequestMethod.GET)
	public String privatkunden(Model model, HttpSession session) {
		logger.info("Suche!");
		System.out.println(session.getAttribute("loggedIn"));
		System.out.println(session.getAttributeNames());
		model.addAttribute("allAttributes", session.getAttributeNames());
		model.addAttribute("getId", session.getId());
		return "/suche/suche";
	}
	
	@RequestMapping(value = "/suche/submitSearch", method = RequestMethod.POST)
	public String submitSearch(HttpServletRequest request, ModelMap model) {
		int cId = 0;
		if (request.getParameter("cId") != ""){
			cId = Integer.parseInt(request.getParameter("cId"));
		}
		System.out.println("searching id" + request.getParameter("cId"));
		Suche suche = new Suche(cId, 
				request.getParameter("name"), request.getParameter("vorname"), 
				request.getParameter("firma"), request.getParameter("kundenart"), request.getParameter("ort"));
		


		// Json einlesen
		// http://lvps87-230-14-183.dedicated.hosteurope.de:8080/ERPSystem/person/show/1.json
		ApplicationContext context = new ClassPathXmlApplicationContext("Spring-Module.xml");
		CustomerDAO customerDAO = (CustomerDAO) context.getBean("customerService");
		
		
		ArrayList<Customer> deleteCandidates = new ArrayList<Customer>();
		//Wenn Suche == alle
		ArrayList<Customer> customerList =  customerDAO.getAllCustomers();

		for (Customer c : customerList){
			if(suche.getcId() != 0 && c.getDebitorId() != suche.getcId()){
				deleteCandidates.add(c);
			}
			if(suche.getVorname() != "" && !c.getVorname().equals(suche.getVorname())){
				deleteCandidates.add(c);
			}
			if(suche.getName() != "" && !c.getName().equals(suche.getName())){
				deleteCandidates.add(c);
			}
			if(suche.getFirma() != "" && !c.getFirma().equals(suche.getFirma())){
				deleteCandidates.add(c);
			}
			if(suche.getOrt() != "" && !c.getOrt().equals(suche.getOrt())){
				deleteCandidates.add(c);
			}
			if((!suche.getKundenart().equals("beides")) && !c.getKundenart().equals(suche.getKundenart())){ //ToDo: wird so niemals equals sein
				deleteCandidates.add(c);
			}

		}
		
		for(Customer cDelete : deleteCandidates){
			customerList.remove(cDelete);
		}
	
		model.addAttribute("customerList",customerList);
		
		return "/suche/suchResult";
	}
	
	@RequestMapping(value = "/suche/{id}", method = RequestMethod.GET)
	public String getCustomer( HttpServletRequest request, @PathVariable Integer id, @CookieValue(value = "custId", defaultValue = "111") String name,
	         HttpServletResponse response, ModelMap model) {
		logger.info("Suche!");
		
		String kundenart ="";
		try {
			// Json einlesen
			// all:  http://lvps87-230-14-183.dedicated.hosteurope.de:8080/ERPSystem/person/show/.json
			
			
			URI uri = new URI("http://lvps87-230-14-183.dedicated.hosteurope.de:8080/ERPSystem/person/show/" + id + ".json");
			JSONObject jsonObject =new JSONObject(new JSONTokener(new InputStreamReader(uri.toURL().openStream(),"UTF-8")));

			
			// old JSONTokener tokener = new JSONTokener(uri.toURL().openStream());
			// old JSONObject jsonObject = new JSONObject(tokener);
			
			
			JSONObject objAnrede = (JSONObject) jsonObject.get("anrede");
			
			JSONArray jsonDebitor =(JSONArray) jsonObject.get("debitor");
			
			
			int debitorId = Integer.parseInt(jsonDebitor.getJSONObject(0).get("id").toString());
			
			
			/*JSONArray arr = (JSONArray) jsonDebitor.get(0); 
			arr.get(0);
			System.out.println("debitor json.....??  " + arr.get(0));
			
			*/

			
			URI uriDebitor = new URI("http://lvps87-230-14-183.dedicated.hosteurope.de:8080/ERPSystem/debitor/show/" + debitorId + ".json");
		//old	JSONTokener tokenerDebitor = new JSONTokener(uriDebitor.toURL().openStream());
			
			JSONObject jsonObjDebitor =new JSONObject(new JSONTokener(new InputStreamReader(uriDebitor.toURL().openStream(),"UTF-8")));
			
			// old JSONObject jsonObjDebitor = new JSONObject(tokenerDebitor);
			JSONObject objKundenart = (JSONObject) jsonObjDebitor.get("kennzeichen");
			JSONObject objKennzeichen = jsonObjDebitor.getJSONObject("kennzeichen");
			
			// ToDo: Auf das ERP-Update warten und überprüfen, ob die Bezeichner verändert worden.
		
			if (objKundenart.get("name").equals("Businesskunde")){
				kundenart ="Geschäftskunde";
			}else{
				kundenart = "Privatkunde";
			}
			// ToDo:  CustomerSearchEntity erstellen
			Customer customer = new Customer(
					Integer.parseInt(jsonObject.get("id").toString()),
					Integer.parseInt(jsonObjDebitor.get("id").toString()),
					objAnrede.get("name").toString(),
					jsonObject.get("nachname").toString(),
					jsonObject.get("vorname").toString(),
					jsonObject.get("adresse").toString(), 
					jsonObject.get("plz").toString(), 
					jsonObject.get("ort").toString(), 
					jsonObject.get("firma").toString(), 
					jsonObjDebitor.get("lieferadresse").toString(), 
					jsonObjDebitor.get("lieferPlz").toString(), 
					jsonObjDebitor.get("lieferOrt").toString(), 
					jsonObject.get("iBAN").toString(),
					jsonObject.get("bIC").toString(),
					jsonObject.get("kontoinhaber").toString(),
					jsonObject.get("bank").toString(),
					jsonObject.get("email").toString(),
					kundenart,	// isPrivatkunde
					(Boolean)jsonObjDebitor.get("abonnement"),
					1, // Rechnungsart
					0, 0, 0); // Mengen
			
			request.getSession().setAttribute("currentCustomer", customer);

			System.out.println("customer:    "  + customer.toString());
			model.addAttribute("customer",customer);
			
			
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (URISyntaxException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		
		//richtige View zurückwerfen, Unterscheidung, ob Privatkunde oder Businesskunde
		String strView;
		if (kundenart.equals("Privatkunde")){
			strView = "/privatkunden/stammdaten";
		}else{
			strView = "/businesskunden/stammdaten";
			
		}
		return "redirect:" + strView;
	}

	
	
	public static String convertToUTF8(String s) {
        String out = null;
        try {
            out = new String(s.getBytes("UTF-8"), "ISO-8859-1");
        } catch (java.io.UnsupportedEncodingException e) {
            return null;
        }
        return out;
    }
	
	public static String convertFromUTF8(String s) {
        String out = null;
        try {
            out = new String(s.getBytes("ISO-8859-1"), "UTF-8");
        } catch (java.io.UnsupportedEncodingException e) {
            return null;
        }
        return out;
    }
	

	
}
