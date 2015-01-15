package de.waksh.crm.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.sql.DataSource;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

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
			ps.setInt(1, customer.getCustId());
			ps.setString(2, customer.getName());
			ps.setInt(3, customer.getAge());
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

		String sql = "SELECT * FROM CUSTOMER WHERE id = ?";

		Connection conn = null;

		try {
			conn = dataSource.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, custId);
			Customer customer = null;
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				customer = new Customer(rs.getString("NAME"), rs.getInt("Age"));
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
		ArrayList<Customer> cList = new ArrayList<Customer>();

		String sql = "SELECT * FROM CUSTOMER";

		Connection conn = null;

		try {
			conn = dataSource.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			Customer customer = null;
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				customer = new Customer(rs.getString("NAME"), rs.getInt("Age"));
				System.out.println("age    " + customer.getAge() + "   name:  "
						+ customer.getName());
				cList.add(customer);
			}
			rs.close();
			ps.close();
			return cList;
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
			customer = new Customer(name, age);

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