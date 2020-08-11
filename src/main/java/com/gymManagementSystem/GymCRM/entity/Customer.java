package com.gymManagementSystem.GymCRM.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;



@Entity
@Table(name="Customer")
public class Customer {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	
	
	@NotNull(message="Address is Required")
	@Size(min=10, message = "Enter Valid Address")
	@Column(name="address")
	private String address;
	
	@NotNull(message="Age is Required")
	@Min(value=16, message="Atleast 16 years and older")
	@Max(value=85, message="Invalid. Too old")
	@Column(name="age")
	private Integer age;
	
	@NotNull(message="Blood Group Required")
	@Pattern(regexp="^(A|B|AB|O)[+-]$", message="Enter valid blood Group")
	@Column(name="blood_grp")
	private String bloodGrp;

	@NotNull(message="Email Required")
	@Pattern(regexp=".+\\@.+\\..+", message="Enter valid email")
	@Column(name="email")
	private String email;
	
	@NotNull(message="Firstname is Required")
	@Size(min=1, message = "More than a single character required")
	@Column(name="firstnm")
	private String firstnm;

	@Min(value=90, message="Short")
	@Max(value=300, message="Invalid, too tall")
	@Column(name="height")
	private int height;
	
	@NotNull(message="Lastname is Required")
	@Size(min=1, message = "More than a single character required")
	@Column(name="lastnm")
	private String lastnm;
	
	@Column(name="medical_hist")
	private String medicalHist;

	@NotNull(message="Ph. No Required")
	@Column(name="phone_num")
	private int phoneNum;
	
	@NotNull(message="Weight is Required")
	@Min(value=30, message="Invalid Weight")
	@Max(value=200, message="Invalid Weight")
	@Column(name="weight")
	private Integer weight;
	
	@NotNull(message="Please select gender")
	@Column(name="Gender")
	private String gender;
	
	
	@OneToOne
	@JoinColumn(name="username")
	private User user;



	public Customer(String address, Integer age, String bloodGrp, String email, String firstnm, int height, String lastnm,
			String medicalHist, int phoneNum, Integer weight,User user, String gender,List<GymClass> gymClassList) {
		this.address = address;
		this.age = age;
		this.bloodGrp = bloodGrp;
		this.email = email;
		this.firstnm = firstnm;
		this.height = height;
		this.lastnm = lastnm;
		this.medicalHist = medicalHist;
		this.phoneNum = phoneNum;
		this.weight = weight;
		this.user = user;
		this.gender = gender;
		this.gymClassList = gymClassList;
	}


	public String getGender() {
		return gender;
	}


	public void setGender(String gender) {
		this.gender = gender;
	}


	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	@ManyToMany(cascade = {CascadeType.MERGE, CascadeType.PERSIST, CascadeType.REFRESH, CascadeType.REMOVE})
	@JoinTable(
			name="Cust_GymClass",
			joinColumns=@JoinColumn(name="id"),
			inverseJoinColumns=@JoinColumn(name="class_id")
			)
	private List<GymClass> gymClassList;

	public List<GymClass> getGymClassList() {
		return gymClassList;
	}

	public void setGymClassList(List<GymClass> gymClassList) {
		this.gymClassList = gymClassList;
	}

	public Customer() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Integer getAge() {
		return this.age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public String getBloodGrp() {
		return this.bloodGrp;
	}

	public void setBloodGrp(String bloodGrp) {
		this.bloodGrp = bloodGrp;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getFirstnm() {
		return this.firstnm;
	}

	public void setFirstnm(String firstnm) {
		this.firstnm = firstnm;
	}

	public int getHeight() {
		return this.height;
	}

	public void setHeight(int height) {
		this.height = height;
	}

	public String getLastnm() {
		return this.lastnm;
	}

	public void setLastnm(String lastnm) {
		this.lastnm = lastnm;
	}

	public String getMedicalHist() {
		return this.medicalHist;
	}

	public void setMedicalHist(String medicalHist) {
		this.medicalHist = medicalHist;
	}

	public int getPhoneNum() {
		return this.phoneNum;
	}

	public void setPhoneNum(int phoneNum) {
		this.phoneNum = phoneNum;
	}

	public Integer getWeight() {
		return this.weight;
	}

	@Override
	public String toString() {
		return "Customer [id=" + id + ", address=" + address + ", age=" + age + ", bloodGrp=" + bloodGrp + ", email="
				+ email + ", firstnm=" + firstnm + ", height=" + height + ", lastnm=" + lastnm + ", medicalHist="
				+ medicalHist + ", phoneNum=" + phoneNum + ", weight=" + weight + "]";
	}



	public void setWeight(Integer weight) {
		this.weight = weight;
	}

}