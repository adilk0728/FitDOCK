package com.gymManagementSystem.GymCRM.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gymManagementSystem.GymCRM.DAO.CustomerDAO;
import com.gymManagementSystem.GymCRM.entity.Customer;

@Service
public class CustomerServiceImpl implements CustomerService {

	//Obtaining the required DAO and injecting
	@Autowired
	private CustomerDAO customerDAO;
	
	
	//Use the injected DAO in the required method
	@Override
	@Transactional
	public List<Customer> getCustomers() {
		
		return customerDAO.getCustomers();
	}

	@Override
	@Transactional
	public void saveCustomer(Customer theCustomer) {
		
		customerDAO.saveCustomer(theCustomer);
		
	}

	@Override
	@Transactional
	public Customer getCustomer(int theId) {
		
		return customerDAO.getCustomer(theId);
	}

	@Override
	@Transactional
	public void deleteCustomer(int theId) {
		
		customerDAO.deleteCustomer(theId);
		
	}

	@Override
	@Transactional
	public Customer getCustomerdetails(String theUserName) {
	
		return customerDAO.getCustomerDetails(theUserName);
	}

	@Override
	@Transactional
	public void enrollGymClass(int theId, String name) {
		customerDAO.enrollGymClass(theId,name);
		
	}

}
