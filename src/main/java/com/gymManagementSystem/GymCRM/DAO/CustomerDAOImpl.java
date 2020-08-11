package com.gymManagementSystem.GymCRM.DAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gymManagementSystem.GymCRM.entity.Customer;


@Repository
public class CustomerDAOImpl implements CustomerDAO {
	
	@Autowired
	private SessionFactory getsessionFactory; 

	@Override
	public List<Customer> getCustomers() {

			// get current hibernate session
			Session currentSession = getsessionFactory.getCurrentSession();

			// create query
			Query<Customer> theQuery = currentSession.createQuery("from Customer order by id", Customer.class);

			// execute query and get result

			List<Customer> customers = theQuery.getResultList();

			// return results
			return customers;

		}

	@Override
	public void saveCustomer(Customer theCustomer) {

		Session currentSession = getsessionFactory.getCurrentSession();

		currentSession.saveOrUpdate(theCustomer);
		

	}

	@Override
	public Customer getCustomer(int theId) {
		
		Session currentSession = getsessionFactory.getCurrentSession();
		Customer theCustomer = currentSession.get(Customer.class, theId);

		return theCustomer;

	}

	@Override
	public void deleteCustomer(int theId) {

		Session currentSession = getsessionFactory.getCurrentSession();

		Query theQuery = currentSession.createQuery("delete from Customer where id=:cust_id ");
		theQuery.setParameter("cust_id", theId);
		theQuery.executeUpdate();
		
	}

	@Override
	public Customer getCustomerDetails(String theUserName) {
	
		Session currentSession = getsessionFactory.getCurrentSession();

		Query theQuery = currentSession.createQuery("from Customer where username=:username", Customer.class);
		theQuery.setParameter("username",theUserName );
		Customer theCustomer = (Customer) theQuery.uniqueResult();
			  return theCustomer;
			
	}

	@SuppressWarnings("deprecation")
	@Override
	public void enrollGymClass(int theId, String name) {
		
		Session currentSession = getsessionFactory.getCurrentSession();
		
//		Query theQuery = currentSession.createQuery("Select Customer.id from Customer inner join User on "
//				+ "Customer.user.username=User.username where Customer.user.username=:theName");
		
		Query theQuery = currentSession.createSQLQuery("Select Customer.id from Customer inner join users on Customer.username=users.username "
				+ "where Customer.username=:theName");
		//theQuery.setParameter("theName", name);
		theQuery.setString("theName", name);
		int cust_id = (int) theQuery.uniqueResult();
		//Query theNewQuery = currentSession.createQuery("insert into Cust_GymClass (id, class_id) values (:customerID,:gymClassID)");
		Query theNewQuery = currentSession.createSQLQuery("insert into Cust_GymClass (id, class_id) values (:customerID,:gymClassID)");
		theNewQuery.setParameter("customerID",cust_id);
		theNewQuery.setParameter("gymClassID",theId);
		theNewQuery.executeUpdate();
	}

}
