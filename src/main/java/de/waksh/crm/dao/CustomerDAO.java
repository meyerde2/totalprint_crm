package de.waksh.crm.dao;

import java.util.ArrayList;

import de.waksh.crm.model.Customer;

public interface CustomerDAO 
{
	public void insertCustomer(Customer customer);
	public Customer getCustomerById(int custId);
	public Customer updateCustomerById(int custId, String name, int age);
	public ArrayList<Customer> getAllCustomers();
}
