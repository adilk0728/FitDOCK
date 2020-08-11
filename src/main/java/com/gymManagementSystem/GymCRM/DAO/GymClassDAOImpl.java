package com.gymManagementSystem.GymCRM.DAO;


import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gymManagementSystem.GymCRM.entity.GymClass;

@Repository
public class GymClassDAOImpl implements GymClassDAO {
	
	@Autowired
	private SessionFactory sessionFactory; 

	@Override
	public List<GymClass> getGymClass() {
		// get current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();

		// create query
		Query<GymClass> theQuery = currentSession.createQuery("from GymClass order by class_id", GymClass.class);

		// execute query and get result

		List<GymClass> GymClass = theQuery.getResultList();

		// return results
		return GymClass;
	}

	@Override
	public void saveGymClass(GymClass theGymClass) {
		Session currentSession = sessionFactory.getCurrentSession();

		currentSession.saveOrUpdate(theGymClass);

	}

	@Override
	public GymClass getGymClass(int theId) {
		Session currentSession = sessionFactory.getCurrentSession();
		GymClass theGymClass = currentSession.get(GymClass.class, theId);

		return theGymClass;
	}

	@Override
	public void deleteGymClass(int theId) {
		Session currentSession = sessionFactory.getCurrentSession();

		Query theQuery = currentSession.createQuery("delete from GymClass where id=:class_id");
		theQuery.setParameter("class_id", theId);
		theQuery.executeUpdate();
	}

	@SuppressWarnings("deprecation")
	@Override
	public List<GymClass> getGymClassCustomer(String currentUser) {
		Session currentSession = sessionFactory.getCurrentSession();
		
		@SuppressWarnings("unchecked")
		Query<GymClass> theQuery = currentSession.createSQLQuery("select distinct g.* from Cust_GymClass cg join GymClass g  on cg.class_id=g.class_id join Customer c on cg.id=c.id where cg.class_id not in  (select class_id"
				+ " from Cust_GymClass where id=(select id from Customer where username=:currentUser))").addEntity(GymClass.class);
		theQuery.setString("currentUser", currentUser);
		List<GymClass> enrolledList = theQuery.list();
		
		return enrolledList;
		
		
	}
	
	@SuppressWarnings("deprecation")
	@Override
	public List<GymClass> getFeedback(String currentUser) {
		
		Session currentSession = sessionFactory.getCurrentSession();
		@SuppressWarnings("unchecked")
		Query<GymClass> theQuery = currentSession.createSQLQuery("select g.* FROM GymClass g join Cust_GymClass cg on g.class_id=cg.class_id join Customer c on"
				+ " c.id=cg.id where cg.rating is NULL && cg.feedback is NULL && c.username=:currentUser").addEntity(GymClass.class);
		theQuery.setString("currentUser", currentUser);
		List<GymClass> feedbackList = theQuery.list();
		
		return feedbackList;
	}

	@SuppressWarnings("deprecation")
	@Override
	public void saveFeedback(String currentUser, float res, String comment) {
		
		Session currentSession = sessionFactory.getCurrentSession();
		
		Query theQuery = currentSession.createSQLQuery("Select Customer.id from Customer inner join users on Customer.username=users.username "
				+ "where Customer.username=:theName");
		//theQuery.setParameter("theName", name);
		theQuery.setString("theName", currentUser);
		int cust_id = (int) theQuery.uniqueResult();
		//Query theNewQuery = currentSession.createQuery("insert into Cust_GymClass (id, class_id) values (:customerID,:gymClassID)");
//		UPDATE Cust_GymClass SET rating = :result, feedback = :feedback WHERE id = :customerID
		Query theNewQuery = currentSession.createSQLQuery("UPDATE Cust_GymClass SET rating = :result, feedback = :feedback WHERE id = :customerID");
//		insert into Cust_GymClass (rating, feedback) values (:result,:feedback) where id=:customerID
		theNewQuery.setParameter("result",res);
		theNewQuery.setParameter("feedback",comment);
		theNewQuery.setParameter("customerID",cust_id);
		theNewQuery.executeUpdate();
		
	}

}
