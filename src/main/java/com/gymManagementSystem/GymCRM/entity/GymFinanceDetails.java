package com.gymManagementSystem.GymCRM.entity;

public class GymFinanceDetails {
	
	
	private Integer class_id;
	
	private String class_nm;
	
	private Integer cost;
	
	private Integer count;


	public Integer getCount() {
		return count;
	}


	public void setCount(Integer count) {
		this.count = count;
	}


	public GymFinanceDetails() {

	}
	
//	public GymFinanceDetails(Integer class_id, String class_nm, Integer count) {
//		this.class_id = class_id;
//		this.class_nm = class_nm;
//		this.count = count;
//	}
	

	public GymFinanceDetails(Integer class_id, String class_nm, Integer cost) {
		this.class_id = class_id;
		this.class_nm = class_nm;
		this.cost = cost;
	}

	public Integer getClass_id() {
		return class_id;
	}

	public void setClass_id(Integer class_id) {
		this.class_id = class_id;
	}

	public String getClass_nm() {
		return class_nm;
	}

	public void setClass_nm(String class_nm) {
		this.class_nm = class_nm;
	}

	public Integer getCost() {
		return cost;
	}

	public void setCost(Integer cost) {
		this.cost = cost;
	}

}