package com.gymManagementSystem.GymCRM.service;

import java.util.List;

import com.gymManagementSystem.GymCRM.entity.FinanceObject;
import com.gymManagementSystem.GymCRM.entity.GymFinanceDetails;

public interface AdminService {
	
	public int getTotalEarning();
	
	public List<FinanceObject> getDetailedEarning();
	
	public List<GymFinanceDetails> getClasWiseEarning();
	
	public Integer getTotalEnrolled();
	
	public List<GymFinanceDetails> getEnrolledClass();
 
	public Integer getTotalMale();

	public Integer getTotalFemale();

	public Integer getTotalOther();

}
