package de.waksh.crm.controller;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.json.JSONException;
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
import de.waksh.crm.dao.JsonDAO;
import de.waksh.crm.model.Customer;
import de.waksh.crm.model.Suche;
import de.waksh.crm.model.User;

@Controller
public class SuchController {

private static final Logger logger = LoggerFactory.getLogger(AddCustomerController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 * @throws URISyntaxException 
	 * @throws IOException 
	 * @throws MalformedURLException 
	 * @throws UnsupportedEncodingException 
	 * @throws JSONException 
	 */
	@RequestMapping(value = { "/", "/home", "/crm/", "/suche" }, method = RequestMethod.GET)
	public String privatkunden(HttpServletRequest request, Model model, HttpSession session) throws URISyntaxException, JSONException, UnsupportedEncodingException, MalformedURLException, IOException {
		logger.info("Suche!");
	
		request.getSession().setAttribute("currentCustomer", "");
		
		model.addAttribute("allAttributes", session.getAttributeNames());
		model.addAttribute("getId", session.getId());
		

		return HomeController.isLoggedIn("/suche/suche", request);
	}
	
	@RequestMapping(value = "/suche/submitSearch", method = RequestMethod.POST)
	public String submitSearch(HttpServletRequest request, ModelMap model) {
		int cId = 0;
		if (request.getParameter("cId") != ""){
			cId = Integer.parseInt(request.getParameter("cId"));
		}

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
		
		String kundenart ="";
		try {
			// Json einlesen
			
			URI uri = new URI("http://lvps87-230-14-183.dedicated.hosteurope.de:8080/ERP-System/person/show/" + id + ".json");
			JSONObject jsonObject =new JSONObject(new JSONTokener(new InputStreamReader(uri.toURL().openStream(),"UTF-8")));
			
			
			ApplicationContext context = new ClassPathXmlApplicationContext("Spring-Module.xml");
			JsonDAO jsonDAO = (JsonDAO) context.getBean("jsonServiceBean");	
			
			JSONObject objAnrede = (JSONObject) jsonObject.get("anrede");
			JSONArray jsonDebitor =(JSONArray) jsonObject.get("debitor");
			
			JSONArray jsonBestellungen =(JSONArray) jsonObject.get("bestellungen");

			
			int debitorId = Integer.parseInt(jsonDebitor.getJSONObject(0).get("id").toString());

			URI uriDebitor = new URI(
					"http://lvps87-230-14-183.dedicated.hosteurope.de:8080/ERP-System/debitor/show/"
							+ debitorId + ".json");

			JSONObject jsonObjDebitor = new JSONObject(new JSONTokener(
					new InputStreamReader(uriDebitor.toURL().openStream(),
							"UTF-8")));
			JSONObject objKundenart = (JSONObject) jsonObjDebitor
					.get("kennzeichen");
			JSONObject objKennzeichen = jsonObjDebitor
					.getJSONObject("kennzeichen");

			// ToDo: Auf das Update warten und überprüfen, ob die Bezeichner
			// verändert worden.

			if (objKundenart.get("name").equals("Businesskunde")) {
				kundenart = "Geschäftskunde";
			} else {
				kundenart = "Privatkunde";
			}
			int mengeA = -1;
			int mengeB = -1;
			int mengeTz = -1;
			if ("Geschäftskunde".equals(kundenart)) {

				ArrayList<Integer> mengen = new ArrayList<Integer>();

		

				for (int i = 0; i < jsonBestellungen.length(); i++) {

					int bestId = Integer.parseInt(jsonBestellungen
							.getJSONObject(i).get("id").toString());
					URI uriBest = new URI(
							"http://lvps87-230-14-183.dedicated.hosteurope.de:8080/ERP-System/bestellungen/show/"
									+ bestId + ".json");
					JSONObject jsonBest = new JSONObject(new JSONTokener(
							new InputStreamReader(uriBest.toURL().openStream(),
									"UTF-8")));
					JSONObject jArtikelVersion = (JSONObject) jsonBest
							.get("artikelVersionen");

					System.out.println("artikelVersionen:  "
							+ jArtikelVersion.get("id"));

					jArtikelVersion.get("id");

					if (Integer.parseInt(jArtikelVersion.get("id").toString()) == 1) {
						mengeA = Integer.parseInt(jsonBest.get("menge")
								.toString());
					} else if (Integer.parseInt(jArtikelVersion.get("id")
							.toString()) == 2) {
						mengeB = Integer.parseInt(jsonBest.get("menge")
								.toString());
					} else if (Integer.parseInt(jArtikelVersion.get("id")
							.toString()) == 3) {
						mengeTz = Integer.parseInt(jsonBest.get("menge")
								.toString());
					}

					mengen.add(Integer.parseInt(jsonBest.get("menge")
							.toString()));

				}

				if (mengeA == -1) {
					// Post
					JSONObject objBestSave = new JSONObject();

					objBestSave.put("artikelVersionen", 1);
					objBestSave.put("person", id);
					objBestSave.put("menge", 0);
					mengeA = 0;
					jsonDAO.saveJsonInErp(
							"http://lvps87-230-14-183.dedicated.hosteurope.de:8080/ERP-System/bestellungen/save.json",
							objBestSave);

				}
				if (mengeB == -1) {
					// Post
					JSONObject objBestSave = new JSONObject();

					objBestSave.put("artikelVersionen", 2);
					objBestSave.put("person", id);
					objBestSave.put("menge", 0);
					mengeB = 0;
					jsonDAO.saveJsonInErp(
							"http://lvps87-230-14-183.dedicated.hosteurope.de:8080/ERP-System/bestellungen/save.json",
							objBestSave);

				}

				if (mengeTz == -1) {
					// Post
					JSONObject objBestSave = new JSONObject();

					objBestSave.put("artikelVersionen", 3);
					objBestSave.put("person", id);
					objBestSave.put("menge", 0);
					mengeTz = 0;
					jsonDAO.saveJsonInErp(
							"http://lvps87-230-14-183.dedicated.hosteurope.de:8080/ERP-System/bestellungen/save.json",
							objBestSave);

				}

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
					mengeA, mengeB, mengeTz); // Mengen
			
			if("-".equals(jsonObjDebitor.get("lieferadresse").toString())){
				customer.setAbwPlz("");
				customer.setAbwOrt("");
				customer.setAbwStrasse("");	
			}

			
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
		String view= "redirect:" + strView;
		return HomeController.isLoggedIn(view, request);

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
