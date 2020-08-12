package com.gymManagementSystem.GymCRM.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gymManagementSystem.GymCRM.DAO.AdminDAO;
import com.gymManagementSystem.GymCRM.entity.FinanceObject;
import com.gymManagementSystem.GymCRM.entity.GymFinanceDetails;

@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminDAO adminDAO;
	
	@Override
	@Transactional
	public int getTotalEarning() {
		return adminDAO.getTotalEarning();
	}

	@Override
	@Transactional
	public List<FinanceObject> getDetailedEarning() {
		return adminDAO.getDetailedEarning();
	}

	@Override
	@Transactional
	public List<GymFinanceDetails> getClasWiseEarning() {
		return adminDAO.getClassWiseEarning();
	}

	@Override
	@Transactional
	public Integer getTotalEnrolled() {		
		return adminDAO.getTotalEnrolled();
	}

	@Override
	@Transactional
	public List<GymFinanceDetails> getEnrolledClass() {
		
		return adminDAO.getEnrolledClass();
	}

	@Override
	@Transactional
	public Integer getTotalMale() {
		return adminDAO.getTotalMale();
	}

	@Override
	@Transactional
	public Integer getTotalFemale() {
		
		 return adminDAO.getTotalFemale();
	}

	@Override
	@Transactional
	public Integer getTotalOther() {
		
		return adminDAO.getTotalOther();
	}

	@Override
	@Transactional
	public List<GymFinanceDetails> getRatingsAndFeedback() {
		
		return adminDAO.getRatingsAndFeedback();
	}

}
