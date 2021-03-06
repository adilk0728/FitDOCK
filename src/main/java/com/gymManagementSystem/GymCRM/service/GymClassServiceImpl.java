package com.gymManagementSystem.GymCRM.service;


import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gymManagementSystem.GymCRM.DAO.GymClassDAO;
import com.gymManagementSystem.GymCRM.entity.GymClass;
import com.gymManagementSystem.GymCRM.entity.GymFinanceDetails;

@Service
public class GymClassServiceImpl implements GymClassService {

	
	@Autowired
	private GymClassDAO gymClassDAO;
	
	@Override
	@Transactional
	public List<GymClass> getGymClass() {
		return gymClassDAO.getGymClass();
	}

	@Override
	@Transactional
	public void saveGymClass(GymClass theGymClass) {
		gymClassDAO.saveGymClass(theGymClass);

	}

	@Override
	@Transactional
	public GymClass getGymClass(int theId) {
		return gymClassDAO.getGymClass(theId);
	}

	@Override
	@Transactional
	public void deleteGymClass(int theId) {
		gymClassDAO.deleteGymClass(theId);

	}

	@Override
	@Transactional
	public List<GymClass> getGymClassCustomer(String currentUser) {
		return	gymClassDAO.getGymClassCustomer(currentUser);
	}

	@Override
	@Transactional
	public List<GymClass> getFeedback(String currentUser) {
		
		return gymClassDAO.getFeedback(currentUser);
	}

	@Override
	@Transactional
	public void saveFeedback(String currentUser, float res, String comment, int class_id) {
		
		gymClassDAO.saveFeedback(currentUser, res, comment, class_id);
	}

	@Override
	@Transactional
	public List<GymFinanceDetails> getTrainerFeedback(String currentUser) {
		return gymClassDAO.getTrainerFeedback(currentUser);
	}

	@Override
	@Transactional
	public void savetrainerfeedback(float res, int class_id, String currentUser) {
		gymClassDAO.savetrainerfeedback(res, class_id, currentUser);
		
	}


}
