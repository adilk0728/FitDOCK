package com.gymManagementSystem.GymCRM.service;

import java.util.List;

import com.gymManagementSystem.GymCRM.entity.Employee;

public interface EmployeeService {
	public List<Employee> getEmployees();

	public void saveEmployee(Employee theEmployee);
	

	public Employee getEmployee(int theId);

	public void deleteEmployee(int theId);

}
