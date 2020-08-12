package com.gymManagementSystem.GymCRM.DAO;

import java.util.List;

import com.gymManagementSystem.GymCRM.entity.FinanceObject;
import com.gymManagementSystem.GymCRM.entity.GymFinanceDetails;

public interface AdminDAO {
	
	public int getTotalEarning();
	
	public List<FinanceObject> getDetailedEarning();
	
	public List<GymFinanceDetails> getClassWiseEarning();
	
	public Integer getTotalEnrolled();
	
	public List<GymFinanceDetails> getEnrolledClass();

	public Integer getTotalMale();

	public Integer getTotalFemale();

	public Integer getTotalOther();

	public List<GymFinanceDetails> getRatingsAndFeedback();

}
