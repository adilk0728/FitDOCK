package com.gymManagementSystem.GymCRM.DAO;

import java.util.List;

import com.gymManagementSystem.GymCRM.entity.Customer;


public interface CustomerDAO {

	
	public List<Customer> getCustomers();

	public void saveCustomer(Customer theCustomer);

	public Customer getCustomer(int theId);

	public void deleteCustomer(int theId);
	
	public Customer getCustomerDetails( String theUserName);

	public void enrollGymClass(int theId, String name);
}
