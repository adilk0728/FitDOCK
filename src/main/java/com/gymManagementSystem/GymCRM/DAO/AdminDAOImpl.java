package com.gymManagementSystem.GymCRM.DAO;


import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.hibernate.transform.Transformers;
import org.hibernate.type.FloatType;
import org.hibernate.type.IntegerType;
import org.hibernate.type.StringType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gymManagementSystem.GymCRM.entity.FinanceObject;
import com.gymManagementSystem.GymCRM.entity.GymFinanceDetails;


@Repository
public class AdminDAOImpl implements AdminDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public int getTotalEarning() {
		Session currentSession = sessionFactory.getCurrentSession();
		
//		Query theQuery = currentSession.createSQLQuery("select sum(payment) from "
//				+ "(select c.id, c.firstnm, sum(g.class_cost) as payment  from Customer c "
//				+ "join Cust_GymClass r on c.id=r.id join GymClass g on r.class_id=g.class_id group by c.id) as f");
//		
		
		
		Integer total = (Integer) currentSession.createSQLQuery("select COALESCE(sum(payment), 0) as payment from (select c.id, c.firstnm, sum(g.class_cost) as payment"
				+ "  from Customer c join Cust_GymClass r on c.id=r.id join GymClass g on"
				+ " r.class_id=g.class_id group by c.id) as f")
				.addScalar("payment", new IntegerType())
				.uniqueResult();
		
	int newtot = total.intValue();
	return newtot;
	
	}

	@SuppressWarnings("deprecation")
	@Override
	public List<FinanceObject> getDetailedEarning() {
		
		Session currentSession = sessionFactory.getCurrentSession();
		

//		List<FinanceObject> fin = (List<FinanceObject>) currentSession.createSQLQuery("select c.id, c.firstnm, sum(g.class_cost) as payment  from Customer c join Cust_GymClass r on"
//				+ " c.id=r.id join GymClass g on r.class_id=g.class_id group by c.id").addScalar("id", new IntegerType()).addScalar("payment", new IntegerType()).list();
//		
		Query theQuery = currentSession.createSQLQuery("select c.id, c.firstnm, sum(g.class_cost) as payment  from Customer c join Cust_GymClass r on"
				+ " c.id=r.id join GymClass g on r.class_id=g.class_id group by c.id").addScalar("id", new IntegerType()).addScalar("firstnm", new StringType()).addScalar("payment", new IntegerType());
		theQuery.setResultTransformer(Transformers.aliasToBean(FinanceObject.class));
		
		List<FinanceObject> result = theQuery.list();
		List<FinanceObject> fin= new ArrayList<>();
		for(int i=0; i<result.size(); i++) {
			FinanceObject fobj = new FinanceObject();
			FinanceObject fobjtemp = result.get(i);
			fobj.setId(fobjtemp.getId());
			fobj.setfirstnm(fobjtemp.getfirstnm());
			fobj.setpayment(fobjtemp.getpayment());
			fin.add(fobj);
		}
		
		
		return fin;
	}

	@SuppressWarnings("deprecation")
	@Override
	public List<GymFinanceDetails> getClassWiseEarning() {
		Session currentSession = sessionFactory.getCurrentSession();		
		
		Query theQuery = currentSession.createSQLQuery("select cg.class_id, g.class_nm, count(cg.id)*g.class_cost as cost from Cust_GymClass"
				+ " cg join GymClass g on cg.class_id = g.class_id group by g.class_id").addScalar("class_id", new IntegerType())
				.addScalar("class_nm", new StringType()).addScalar("cost", new IntegerType());
		
		theQuery.setResultTransformer(Transformers.aliasToBean(GymFinanceDetails.class));
		
		List<GymFinanceDetails> result = theQuery.list();
		List<GymFinanceDetails> gymFin= new ArrayList<>();
		for(int i=0; i<result.size(); i++) {
			GymFinanceDetails fobj = new GymFinanceDetails();
			GymFinanceDetails fobjtemp = result.get(i);
			fobj.setClass_id(fobjtemp.getClass_id());
			fobj.setClass_nm(fobjtemp.getClass_nm());
			fobj.setCost(fobjtemp.getCost());
			gymFin.add(fobj);
		}
		
		
		return gymFin;
	}

	@SuppressWarnings("deprecation")
	@Override
	public Integer getTotalEnrolled() {
		
		Session currentSession = sessionFactory.getCurrentSession();	
		
		Integer totalCust = (Integer) currentSession.createSQLQuery("select count(distinct(id)) as custCount from Cust_GymClass").addScalar("custCount", new IntegerType()).uniqueResult();
		
		
		return totalCust;
		
	}

	@Override
	public List<GymFinanceDetails> getEnrolledClass() {
		Session currentSession = sessionFactory.getCurrentSession();
		
		Query theQuery = currentSession.createSQLQuery("select cg.class_id, g.class_nm, count(distinct(cg.id)) as count from Cust_GymClass cg inner join"
				+ " GymClass g on g.class_id=cg.class_id group by cg.class_id").addScalar("class_id", new IntegerType())
				.addScalar("class_nm", new StringType()).addScalar("count", new IntegerType());
		
		theQuery.setResultTransformer(Transformers.aliasToBean(GymFinanceDetails.class));
		
		List<GymFinanceDetails> result = theQuery.list();
		List<GymFinanceDetails> gymClassCount= new ArrayList<>();
		for(int i=0; i<result.size(); i++) {
			GymFinanceDetails fobj = new GymFinanceDetails();
			GymFinanceDetails fobjtemp = result.get(i);
			fobj.setClass_id(fobjtemp.getClass_id());
			fobj.setClass_nm(fobjtemp.getClass_nm());
			fobj.setCount(fobjtemp.getCount());
			gymClassCount.add(fobj);
		}
		
		
		return gymClassCount;
		
	}
	
	@SuppressWarnings("deprecation")
	@Override
	public Integer getTotalMale() {
		
		Session currentSession = sessionFactory.getCurrentSession();	
		
		Integer totalCust = (Integer) currentSession.createSQLQuery("select count(*) as NumMale from Customer where Gender='Male'").addScalar("NumMale", new IntegerType()).uniqueResult();
		
		
		return totalCust;
		
	}
	
	@SuppressWarnings("deprecation")
	@Override
	public Integer getTotalFemale() {
		
		Session currentSession = sessionFactory.getCurrentSession();	
		
		Integer totalCust = (Integer) currentSession.createSQLQuery("select count(*) as NumFemale from Customer where Gender='Female'").addScalar("NumFemale", new IntegerType()).uniqueResult();
		
		
		return totalCust;
		
	}
	
	@SuppressWarnings("deprecation")
	@Override
	public Integer getTotalOther() {
		
		Session currentSession = sessionFactory.getCurrentSession();	
		
		Integer totalCust = (Integer) currentSession.createSQLQuery("select count(*) as NumOther from Customer where Gender='Other'").addScalar("NumOther", new IntegerType()).uniqueResult();
		
		
		return totalCust;
		
	}
	
	
	@SuppressWarnings("deprecation")
	@Override
	public List<GymFinanceDetails> getRatingsAndFeedback() {
		Session currentSession = sessionFactory.getCurrentSession();		
		
		Query theQuery = currentSession.createSQLQuery("Select c.username, g.class_nm, g.class_typ, cg.rating, cg.feedback from Cust_GymClass cg join Customer c on cg.id=c.id join GymClass g "
				+ "on cg.class_id=g.class_id where rating is not null && "
				+ "feedback is not null").addScalar("username", new StringType())
				.addScalar("class_nm", new StringType()).addScalar("class_typ", new StringType()).addScalar("rating", new FloatType()).addScalar("feedback", new StringType());
		
		theQuery.setResultTransformer(Transformers.aliasToBean(GymFinanceDetails.class));
		
		List<GymFinanceDetails> result = theQuery.list();
		List<GymFinanceDetails> feedbackList= new ArrayList<>();
		for(int i=0; i<result.size(); i++) {
			GymFinanceDetails fobj = new GymFinanceDetails();
			GymFinanceDetails fobjtemp = result.get(i);
			fobj.setUsername(fobjtemp.getUsername());
			fobj.setClass_nm(fobjtemp.getClass_nm());
			fobj.setClass_typ(fobjtemp.getClass_typ());
			fobj.setRating(fobjtemp.getRating());
			fobj.setFeedback(fobjtemp.getFeedback());
			feedbackList.add(fobj);
		}
		
		
		return feedbackList;
	}
	
	

}
