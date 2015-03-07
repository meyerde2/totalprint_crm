package de.waksh.crm.controller;

import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Locale;
import java.util.TimeZone;

import javax.servlet.http.HttpServletRequest;

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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import de.waksh.crm.dao.ActivityDAO;
import de.waksh.crm.dao.JsonDAO;
import de.waksh.crm.model.Activity;
import de.waksh.crm.model.ActivityEntity;
import de.waksh.crm.model.Customer;

@Controller
public class BusinesskundenController {

	private static final Logger logger = LoggerFactory.getLogger(AddCustomerController.class);
	private ApplicationContext context;

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/businesskunden", method = RequestMethod.GET)
	public String privatkunden(Model model) {
		logger.info("Geschäftskunden!");
		
		return "/businesskunden/businesskunden";
	}
	
	@RequestMapping(value = "/businesskunden/stammdaten", method = RequestMethod.GET)
	public String pStammdaten(Model model) {
		logger.info("pStammdaten-Page!");
		
		return "/businesskunden/bStammdaten";
	}
		
	
	@RequestMapping(value = "/businesskunden/bestellungBearbeiten", method = RequestMethod.GET)
	public String pAboAbschliessen(Model model) {
		logger.info("aboAbschließen-Page !");
		
		return "/businesskunden/bestellungBearbeiten";
	}
	
	@RequestMapping(value = "/businesskunden/submitBestellung", method = RequestMethod.POST)
	public String pAddAbo(HttpServletRequest request, Model model) throws URISyntaxException, JSONException, UnsupportedEncodingException, MalformedURLException, IOException {
		
		logger.info("bestellung-Page !");
		
		context = new ClassPathXmlApplicationContext("Spring-Module.xml");
		JsonDAO jsonDAO = (JsonDAO) context.getBean("jsonServiceBean");		
		
		// Abo-Object
		Customer c = null;
		if (request.getSession().getAttribute("currentCustomer") != null){
			
			c = (Customer) request.getSession().getAttribute("currentCustomer");

		}

		JSONObject json = new JSONObject();
		JSONObject jsonDebi = new JSONObject();
		JSONObject jsonBestellung = new JSONObject();
	
		//person
		if (c != null){
			if ("lastschrift".equals(request.getParameter("zahlungsart").toString())){
				c.setKontoinhaber(request.getParameter("kontoinhaber"));
				c.setIban(request.getParameter("iban"));
				c.setBic(request.getParameter("bic"));
				c.setBank(request.getParameter("bank"));
				
				json.put("bank", request.getParameter("bank").toString());
				json.put("iban", request.getParameter("iban").toString());
				json.put("bIC", request.getParameter("bic").toString());
				json.put("iBAN", request.getParameter("kontoinhaber").toString());
				
				json.put("id", c.getId());

				jsonDAO.putJsonToErp("http://lvps87-230-14-183.dedicated.hosteurope.de:8080/ERP-System/person/update.json",  json);
					
			}			
			
			//abwLieferadresse
			System.out.println("abwLieferad  " + request.getParameter("abwLieferadresse"));
			if ("ja".equals(request.getParameter("abwLieferadresse"))){
				
				c.setStrasse(request.getParameter("abwstrasse"));
				c.setOrt(request.getParameter("abwort"));
				c.setPlz(request.getParameter("abwplz"));
				
				jsonDebi.put("lieferOrt", request.getParameter("abwort").toString());
				jsonDebi.put("lieferPlz", request.getParameter("abwplz").toString());
				jsonDebi.put("lieferadresse", request.getParameter("abwstrasse").toString());
				
				jsonDebi.put("id", c.getDebitorId());

				jsonDebi.put("abonnement", true);

				jsonDAO.putJsonToErp("http://lvps87-230-14-183.dedicated.hosteurope.de:8080/ERP-System/debitor/update.json",  jsonDebi);
				
			}else{
				jsonDebi.put("id", c.getDebitorId());


				jsonDAO.putJsonToErp("http://lvps87-230-14-183.dedicated.hosteurope.de:8080/ERP-System/debitor/update.json",  jsonDebi);
			}
			
			//
			/*
			
			ArtikelVersion befüllen (artikel_id, erscheinungsdatum)
			Bestellungen befüllen (artikel_versionen_id, person_id, menge)
			*/
			int id2 = c.getId();
			
			System.out.println("getCID:  " + c.getId());
			String url2 = "http://lvps87-230-14-183.dedicated.hosteurope.de:8080/ERP-System/person/show/" + id2 + ".json";
			System.out.println("url2:  " + url2);
			// ToDo: Get alle IDs aus Bestellungen, wenn keine drin sind, dann Post, sonst die einzlnen auslesen und putten
			URI uri2 = new URI(url2);
			JSONObject jsonObject =new JSONObject(new JSONTokener(new InputStreamReader(uri2.toURL().openStream(),"UTF-8")));

			JSONArray jsonBestellungen =(JSONArray) jsonObject.get("bestellungen");
			
			for(int i = 0; i< jsonBestellungen.length(); i++){

				int bestId = Integer.parseInt(jsonBestellungen.getJSONObject(i).get("id").toString());
				URI uriBest = new URI("http://lvps87-230-14-183.dedicated.hosteurope.de:8080/ERP-System/bestellungen/show/" + bestId + ".json");
				JSONObject jsonBest =new JSONObject(new JSONTokener(new InputStreamReader(uriBest.toURL().openStream(),"UTF-8")));
				JSONObject jArtikelVersion = (JSONObject) jsonBest.get("artikelVersionen");
				
				System.out.println("artikelVersionen:  " + jArtikelVersion.get("id"));

				jArtikelVersion.get("id");
				
				JSONObject jsonBestUpdate = new JSONObject();
				if (Integer.parseInt(jArtikelVersion.get("id").toString()) == 1){

					jsonBestUpdate.put("id", bestId);
					jsonBestUpdate.put("person", c.getId());
					jsonBestUpdate.put("menge", Integer.parseInt(request.getParameter("numberZeitschriftA")));
					
					jsonDAO.putJsonToErp("http://lvps87-230-14-183.dedicated.hosteurope.de:8080/ERP-System/bestellungen/update.json",  jsonBestUpdate);
					
				}else if (Integer.parseInt(jArtikelVersion.get("id").toString()) == 2){

					jsonBestUpdate.put("id", bestId);
					jsonBestUpdate.put("person", c.getId());
					jsonBestUpdate.put("menge", Integer.parseInt(request.getParameter("numberZeitschriftB")));
					
					jsonDAO.putJsonToErp("http://lvps87-230-14-183.dedicated.hosteurope.de:8080/ERP-System/bestellungen/update.json",  jsonBestUpdate);

					
				}else if (Integer.parseInt(jArtikelVersion.get("id").toString()) == 3){

					jsonBestUpdate.put("id", bestId);
					jsonBestUpdate.put("person", c.getId());
					jsonBestUpdate.put("menge", Integer.parseInt(request.getParameter("numberTZ")));
					
					jsonDAO.putJsonToErp("http://lvps87-230-14-183.dedicated.hosteurope.de:8080/ERP-System/bestellungen/update.json",  jsonBestUpdate);

				}
												
			}
			
			// ToDo: Unterscheidung, ob schon vorhanden, dann put oder nciht vorhanden dann: post

			//Post
			
//			jsonDAO.putJsonToErp("http://lvps87-230-14-183.dedicated.hosteurope.de:8080/ERP-System/person/save.json",  jsonBestellung);

			//http://lvps87-230-14-183.dedicated.hosteurope.de:8080/ERP-System/person/save.json
			
			c.setMengeA(Integer.parseInt(request.getParameter("numberZeitschriftA")));
			c.setMengeB(Integer.parseInt(request.getParameter("numberZeitschriftB")));
			c.setMengeT(Integer.parseInt(request.getParameter("numberTZ")));
			
			// Session neu setzen
			request.getSession().setAttribute("currentCustomer", c);

			ActivityDAO activityDAO = (ActivityDAO) context.getBean("activityService");

			java.util.Calendar cal = java.util.Calendar.getInstance();
			java.util.Date utilDate = cal.getTime();
			java.sql.Date sqlDate = new Date(utilDate.getTime());

			Activity a = new Activity(0, c.getId(), sqlDate, 1, 3, 7,
					"automatisiert generiert...");
			activityDAO.insertActivity(a);
		}
		
		return "/businesskunden/bestellungBearbeiten";
	}
	
	@RequestMapping(value = "/businesskunden/activity", method = RequestMethod.GET)
	public String pActivity(HttpServletRequest request, Model model) {
		logger.info("activity-Page !");
		
		context = new ClassPathXmlApplicationContext("Spring-Module.xml");
		ActivityDAO activityDAO = (ActivityDAO) context.getBean("activityService");
		int id = 0;
		if (request.getSession().getAttribute("currentCustomer") != null){
			
			Customer c = (Customer) request.getSession().getAttribute("currentCustomer");
			id = c.getId();
			
		}

		ArrayList<ActivityEntity> activityEntity = activityDAO.getAllActivities(id);
		model.addAttribute("aList", activityEntity);
		
		System.out.println("activityEntity:   " + activityEntity.toString());
		
		return "/businesskunden/aktivitaeten";
	}
	
	@RequestMapping(value = "/businesskunden/activityAnlegen", method = RequestMethod.GET)
	public String pActivityAnlegen(Model model) {
		logger.info("activityAnlegen-Page !");
		
		return "/businesskunden/aktivitaetenAnlegen";
	}
	
	@RequestMapping(value = "/businesskunden/submitAddActivity", method = RequestMethod.POST)
	public String submitAddActivity(HttpServletRequest request, ModelMap model) throws ParseException {
		//model.addAttribute("name", activity.getAktivitaetenId());d
		
		
		
		String date2 = request.getParameter("date");
		DateFormat format = new SimpleDateFormat("dd.MM.yyyy", Locale.GERMANY);
		format.setTimeZone(TimeZone.getTimeZone("Europe/Berlin"));

		java.util.Date date = format.parse(date2);
		java.sql.Date sqlDate = new java.sql.Date(date.getTime());
		

		context = new ClassPathXmlApplicationContext("Spring-Module.xml");
		ActivityDAO activityDAO = (ActivityDAO) context.getBean("activityService");
		int grundId = Integer.parseInt(request.getParameter("grund"));
		if (request.getParameter("grund").equals("5")){
		
			 grundId = activityDAO.insertNewGrund(request.getParameter("sonstigesTxt"));
		
		}

		// ToDo: Kundennummer mitgeben!
		Activity a = new Activity(0, 11, sqlDate,
				Integer.parseInt(request.getParameter("maId")), Integer.parseInt(request.getParameter("medium")),
				grundId, request.getParameter("notiz"));
		
		activityDAO.insertActivity(a);
		System.out.println("a  " + a.toString());	
	
		return "redirect:/privatkunden/activity";
	}
}
