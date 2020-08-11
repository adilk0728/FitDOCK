package com.gymManagementSystem.GymCRM.entity;


public class FinanceObject {
	
	
	private String firstnm;
	private Integer id;
	private int totalCost;
	private Integer payment;
	
	public FinanceObject(String firstnm, Integer id, Integer payment) {
		this.firstnm = firstnm;
		this.id = id;
		this.payment = payment;
	}
	
	
	public FinanceObject() {
		
	}
	
	
	public FinanceObject(int totalCost) {
		this.totalCost = totalCost;
	}


	public FinanceObject(String firstnm, Integer id, int totalCost, Integer payment) {
		this.firstnm = firstnm;
		this.id = id;
		this.totalCost = totalCost;
		this.payment = payment;
	}


	public String getfirstnm() {
		return firstnm;
	}
	public void setfirstnm(String firstnm) {
		this.firstnm = firstnm;
	}
	public Integer getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getTotalCost() {
		return totalCost;
	}
	public void setTotalCost(int totalCost) {
		this.totalCost = totalCost;
	}
	public Integer getpayment() {
		return payment;
	}
	public void setpayment(Integer payment) {
		this.payment = payment;
	}
	
	

}

