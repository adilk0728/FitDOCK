package com.gymManagementSystem.GymCRM.entity;

public class GymFinanceDetails {
	
	
	private Integer class_id;
	
	private String class_nm;
	
	private Integer cost;
	
	private Integer count;
	
	private String em_firstname;
	
	public String getEm_firstname() {
		return em_firstname;
	}
	
	private int var1;
	
	private int var2;
	private int var3;
	private int var4;
	private int var5;
	
	private String comment;
	

	public String getComment() {
		return comment;
	}


	public void setComment(String comment) {
		this.comment = comment;
	}


	public int getVar1() {
		return var1;
	}


	public void setVar1(int var1) {
		this.var1 = var1;
	}


	public int getVar2() {
		return var2;
	}


	public void setVar2(int var2) {
		this.var2 = var2;
	}


	public int getVar3() {
		return var3;
	}


	public void setVar3(int var3) {
		this.var3 = var3;
	}


	public int getVar4() {
		return var4;
	}


	public void setVar4(int var4) {
		this.var4 = var4;
	}


	public int getVar5() {
		return var5;
	}


	public void setVar5(int var5) {
		this.var5 = var5;
	}


	public void setEm_firstname(String em_firstname) {
		this.em_firstname = em_firstname;
	}

	private String class_typ;
	
	private String username;
	
	private Float rating;
	
	private String feedback;
	
	
	public String getClass_typ() {
		return class_typ;
	}


	public void setClass_typ(String class_typ) {
		this.class_typ = class_typ;
	}


	public String getUsername() {
		return username;
	}


	public void setUsername(String username) {
		this.username = username;
	}


	public Float getRating() {
		return rating;
	}


	public void setRating(Float rating) {
		this.rating = rating;
	}


	public String getFeedback() {
		return feedback;
	}


	public void setFeedback(String feedback) {
		this.feedback = feedback;
	}


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
