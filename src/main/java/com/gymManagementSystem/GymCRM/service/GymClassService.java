package com.gymManagementSystem.GymCRM.service;


import java.util.List;

import com.gymManagementSystem.GymCRM.entity.GymClass;
import com.gymManagementSystem.GymCRM.entity.GymFinanceDetails;

public interface GymClassService {
	

	public List<GymClass> getGymClass();

	public void saveGymClass(GymClass theGymClass);

	public GymClass getGymClass(int theId);

	public void deleteGymClass(int theId);

	public List<GymClass> getGymClassCustomer(String currentUser);

	public List<GymClass> getFeedback(String currentUser);

	public void saveFeedback(String currentUser, float res, String comment, int class_id);
	
	public List<GymFinanceDetails> getTrainerFeedback(String currentUser);

	public void savetrainerfeedback(float res, int class_id, String currentUser);
}
