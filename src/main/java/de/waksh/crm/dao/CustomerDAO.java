package de.waksh.crm.dao;

import java.util.ArrayList;

import de.waksh.crm.model.Customer;

public interface CustomerDAO 
{
	public void insert(Customer customer);
	public Customer findByCustomerId(int custId);
	public Customer updateByCustomerId(int custId, String name, int age);
	public ArrayList<Customer> showAllCustomers();
}
