package com.gymManagementSystem.GymCRM.DAO;


import java.util.List;

import com.gymManagementSystem.GymCRM.entity.GymClass;

public interface GymClassDAO {
	
	public List<GymClass> getGymClass();

	public void saveGymClass(GymClass theGymClass);

	public GymClass getGymClass(int theId);

	public void deleteGymClass(int theId);
	
	public List<GymClass> getGymClassCustomer(String currentUser);

	public List<GymClass> getFeedback(String currentUser);

	public void saveFeedback(String currentUser, float res, String comment);

}
