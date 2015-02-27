package de.waksh.crm.service;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.nio.charset.Charset;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.sql.DataSource;

import org.json.*;

import de.waksh.crm.dao.CustomerDAO;
import de.waksh.crm.model.Customer;

public class CustomerService implements CustomerDAO {
	private DataSource dataSource;
	

	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}

	public void insertCustomer(Customer customer) {

		String sql = "INSERT INTO CUSTOMER "
				+ "(id, name, age) VALUES (?, ?, ?)";
		Connection conn = null;

		try {
			conn = dataSource.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, customer.getId());
			ps.setString(2, customer.getName());

			ps.executeUpdate();
			ps.close();

		} catch (SQLException e) {
			throw new RuntimeException(e);

		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
				}
			}
		}
	}

	public Customer getCustomerById(int custId) {

		//String sql = "SELECT * FROM CUSTOMER WHERE id = ?";
		String sql = "SELECT * FROM `bascrmdb`.`Aktivitaeten_Tabelle`;";

		Connection conn = null;

		try {
			conn = dataSource.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, custId);
			Customer customer = null;
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {

				System.out.println("id......    " +rs.getString("AktivitaetenID") );
				//customer = new Customer(rs.getString("NAME"), rs.getInt("Age"));
			}
			rs.close();
			ps.close();
			return customer;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
				}
			}
		}
		
		
	}

	public ArrayList<Customer> getAllCustomers() {
		
		ArrayList<Customer> customerList = new ArrayList<Customer>();


	
		try {
			// Json einlesen
			// all:  http://lvps87-230-14-183.dedicated.hosteurope.de:8080/ERPSystem/person/show/.json
			URI uri = new URI("http://lvps87-230-14-183.dedicated.hosteurope.de:8080/ERPSystem/person/.json");
			JSONTokener tokener = new JSONTokener(uri.toURL().openStream());
		
			JSONArray jsonArray = new JSONArray(tokener);
			
			for (int i = 0; i < jsonArray.length(); i++) {
				
				JSONArray jsonDebitor =(JSONArray) jsonArray.getJSONObject(i).get("debitor");
				System.out.println("debitor-: " + jsonDebitor);
				if(jsonDebitor.length() == 0){
					System.out.println("gleich 0");
				}else if( 
					Integer.parseInt(jsonDebitor.getJSONObject(0).get("id").toString()) >= 1)  
					{
					
					JSONObject jsonObject =  (JSONObject)jsonArray.getJSONObject(i);
					JSONObject objAnrede = (JSONObject) jsonObject.get("anrede");
					
					int idPerson = Integer.parseInt(jsonObject.get("id").toString());
					int id= Integer.parseInt(jsonDebitor.getJSONObject(0).get("id").toString());
					
					System.out.println("inside");
					//http://lvps87-230-14-183.dedicated.hosteurope.de:8080/ERPSystem/debitor/show/1.json
					
					URI uriDebitor = new URI("http://lvps87-230-14-183.dedicated.hosteurope.de:8080/ERPSystem/debitor/show/" + id + ".json");
					JSONTokener tokenerDebitor = new JSONTokener(uriDebitor.toURL().openStream());
					JSONObject jsonObjDebitor = new JSONObject(tokenerDebitor);
					JSONObject objKennzeichen = jsonObjDebitor.getJSONObject("kennzeichen");
					//JSONArray jsonArrayRechnung =(JSONArray) jsonObject.get("rechnung");
					//System.out.println("rechnung   " + jsonArrayRechnung.toString());
					
					// ToDo:  CustomerSearchEntity erstellen
					
					// Logik: nur person interpretieren, wenn diese Debitor 1 oder 2 hat, ansonsten überspringen
					Customer customer = new Customer(
							Integer.parseInt(jsonObject.get("id").toString()),
							Integer.parseInt(jsonObjDebitor.get("id").toString()),
							objAnrede.get("name").toString(),
							convertFromUTF8(jsonObject.get("nachname").toString()),
							convertFromUTF8(jsonObject.get("vorname").toString()),
							convertFromUTF8(jsonObject.get("adresse").toString()), 
							convertFromUTF8(jsonObject.get("plz").toString()), 
							convertFromUTF8(jsonObject.get("ort").toString()), 
							convertFromUTF8(jsonObject.get("firma").toString()), 
							"abwStrasse", 
							"abwPlz", 
							"abwOrt",
							convertFromUTF8(jsonObject.get("iBAN").toString()),
							convertFromUTF8(jsonObject.get("bIC").toString()),
							convertFromUTF8(jsonObject.get("kontoinhaber").toString()),
							convertFromUTF8(jsonObject.get("bank").toString()),
							convertFromUTF8(jsonObject.get("email").toString()),
							convertFromUTF8(objKennzeichen.get("name").toString()),	// isPrivatkunde
							(Boolean)jsonObjDebitor.get("abonnement"), // isAbonnent
							1, // Rechnungsart
							0, 0, 0); // Mengen
					
					customerList.add(customer);
					System.out.println("customer:    "  + customer.toString());
				
				}
				
			}
	
			
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (URISyntaxException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 

		return customerList;

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
	

	@Override
	public Customer updateCustomerById(int custId, String name, int age) {
		String sql = "UPDATE customer SET name = " + name + " , age = " + age
				+ " WHERE id = " + custId;

		Connection conn = null;

		try {
			conn = dataSource.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.executeUpdate(sql);

			Customer customer = null;

			ps.close();
			return customer;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
				}
			}
		}
	}
	

}