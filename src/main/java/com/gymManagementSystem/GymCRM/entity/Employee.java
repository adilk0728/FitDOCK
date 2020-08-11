package com.gymManagementSystem.GymCRM.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;


@Entity
@Table(name="Employee")
public class Employee {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int em_id;

	@NotNull(message="Firstname is Required")
	@Size(min=5, message = "Enter Valid firstname")
	@Column(name="em_firstname")
	private String em_firstname;

	@NotNull(message="Lastname is Required")
	@Size(min=2, message = "Enter Valid lastname")
	@Column(name="em_lastname")
	private String em_lastname;

	@NotNull(message="Mobile no. is Required")
	@Column(name="em_mobile_num")
	private int em_mobile;

	@NotNull(message="Address is Required")
	@Size(min=10, message = "Enter Valid Address")
	@Column(name="em_add")
	private String em_add;
	
	
	@OneToOne(mappedBy="employee")
	private GymClass gymClass;
	
	public GymClass getGymClass() {
		return gymClass;
	}

	public void setGymClass(GymClass gymClass) {
		this.gymClass = gymClass;
	}

	public int getEm_id() {
		return em_id;
	}

	public void setEm_id(int em_id) {
		this.em_id = em_id;
	}

	public String getEm_firstname() {
		return em_firstname;
	}

	public void setEm_firstname(String em_firstname) {
		this.em_firstname = em_firstname;
	}

	public String getEm_lastname() {
		return em_lastname;
	}

	public void setEm_lastname(String em_lastname) {
		this.em_lastname = em_lastname;
	}

	public int getEm_mobile() {
		return em_mobile;
	}

	public void setEm_mobile(int em_mobile) {
		this.em_mobile = em_mobile;
	}

	public String getEm_add() {
		return em_add;
	}

	public void setEm_add(String em_add) {
		this.em_add = em_add;
	}

	public Employee(String em_firstname, String em_lastname, int em_mobile, String em_add) {
		this.em_firstname = em_firstname;
		this.em_lastname = em_lastname;
		this.em_mobile = em_mobile;
		this.em_add = em_add;
	}

	public Employee() {
	}

	@Override
	public String toString() {
		return "Employee [em_id=" + em_id + ", em_firstname=" + em_firstname + ", em_lastname=" + em_lastname
				+ ", em_mobile=" + em_mobile + ", em_add=" + em_add + "]";
	}

	


}
