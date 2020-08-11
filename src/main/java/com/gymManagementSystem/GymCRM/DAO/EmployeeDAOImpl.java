package com.gymManagementSystem.GymCRM.DAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gymManagementSystem.GymCRM.entity.Employee;

@Repository
public class EmployeeDAOImpl implements EmployeeDAO {
	
	@Autowired
	private SessionFactory sessionFactory; 

	@Override
	public List<Employee> getEmployees() {
		// get current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();

		// create query
		Query<Employee> theQuery = currentSession.createQuery("from Employee order by id", Employee.class);

		// execute query and get result

		List<Employee> employee = theQuery.getResultList();

		// return results
		return employee;
	}

	@Override
	public void saveEmployee(Employee theEmployee) {
		Session currentSession = sessionFactory.getCurrentSession();

		currentSession.saveOrUpdate(theEmployee);
		

	}

	@Override
	public Employee getEmployee(int theId) {
		Session currentSession = sessionFactory.getCurrentSession();
		Employee theEmployee = currentSession.get(Employee.class, theId);

		return theEmployee;
	}

	@Override
	public void deleteEmployee(int theId) {
		Session currentSession = sessionFactory.getCurrentSession();

		Query theQuery = currentSession.createQuery("delete from Employee where id=:em_id ");
		theQuery.setParameter("em_id", theId);
		theQuery.executeUpdate();

	}

}
