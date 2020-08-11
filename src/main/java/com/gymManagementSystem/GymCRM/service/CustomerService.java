package com.gymManagementSystem.GymCRM.service;

import java.util.List;

import com.gymManagementSystem.GymCRM.entity.Customer;
import com.gymManagementSystem.GymCRM.entity.GymClass;

public interface CustomerService {

	
	public List<Customer> getCustomers();

	public void saveCustomer(Customer theCustomer);
	

	public Customer getCustomer(int theId);

	public void deleteCustomer(int theId);
	
	public Customer getCustomerdetails(String theUserName);

	public void enrollGymClass(int theId, String name);
	

}
