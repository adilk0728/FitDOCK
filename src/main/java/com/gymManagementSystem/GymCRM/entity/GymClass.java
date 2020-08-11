package com.gymManagementSystem.GymCRM.entity;

import java.sql.Timestamp;
import java.util.ArrayList;
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
import javax.persistence.SqlResultSetMapping;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;




//@SqlResultSetMapping(
//		name="GymClassMapping",
//		entities = @javax.persistence.EntityResult(
//				entityClass = GymClass.class,
//				fields= {
//						@FieldResult(name="class_id", column = "id"),
//						@FieldResult(name="class_nm", column = "nm"),
//						@FieldResult(name="class_typ", column = "typ"),
//						@FieldResult(name="class_cost", column = "cost"),
//						@FieldResult(name="class_desp", column = "desp")
//						
//				}
//				
//				)
//		)
@Entity
@Table(name="GymClass")
public class GymClass {

	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int class_id;
	
	@NotNull(message="Class Name is Required")
	@Size(min=3, message = "Enter Valid name")
	@Column(name="class_nm")
	private String class_nm;

	
	@Column(name="class_typ")
	private String class_typ;
	
	@Min(value=100, message="cannot be < 100")
	@Max(value=10000, message="cannot be > 10000")
	@NotNull(message="Class Cost is Required")
	@Column(name="class_cost")
	private int class_cost;

	@NotNull(message="Class Description is Required")
	@Size(min=15, message = "Enter Valid Description")
	@Column(name="class_desp")
	private String class_desp;

	@NotNull(message="Class time/date is Required")
	@Column(name="class_date_time")
	private Timestamp class_date_time;

	@Min(value=1, message="Cannot be lesser than 1 hr")
	@Max(value=3, message="cannot be > 3 hrs")
	@NotNull(message="Duration is Required")
	@Column(name="class_duration")
	private int class_duration;
	
	public List<Customer> getCustomerList() {
		return customerList;
	}

	public void setCustomerList(List<Customer> customerList) {
		this.customerList = customerList;
	}

	@OneToOne
	@JoinColumn(name="em_id")
	private Employee employee;

	
	@ManyToMany(cascade = {CascadeType.MERGE, CascadeType.PERSIST, CascadeType.REFRESH})
	@JoinTable(
			name="Cust_GymClass",
			joinColumns=@JoinColumn(name="class_id"),
			inverseJoinColumns=@JoinColumn(name="id")
			)
	private List<Customer> customerList;
	
	public Employee getEmployee() {
		return employee;
	}

	public void setEmployee(Employee employee) {
		this.employee = employee;
	}

	public int getClass_id() {
		return class_id;
	}

	public void setClass_id(int class_id) {
		this.class_id = class_id;
	}

	public String getClass_nm() {
		return class_nm;
	}

	public void setClass_nm(String class_nm) {
		this.class_nm = class_nm;
	}

	public String getClass_typ() {
		return class_typ;
	}

	public void setClass_typ(String class_typ) {
		this.class_typ = class_typ;
	}

	public int getClass_cost() {
		return class_cost;
	}

	public void setClass_cost(int class_cost) {
		this.class_cost = class_cost;
	}

	public String getClass_desp() {
		return class_desp;
	}

	public void setClass_desp(String class_desp) {
		this.class_desp = class_desp;
	}

	public java.util.Date getClass_date_time() {
		return class_date_time;
	}

	public void setClass_date_time(Timestamp class_date_time) {
		this.class_date_time = class_date_time;
	}

	public int getClass_duration() {
		return class_duration;
	}

	public void setClass_duration(int class_duration) {
		this.class_duration = class_duration;
	}


	public void addCustomer(Customer theCustomer) {
		if(customerList==null) {
			customerList=new ArrayList<>();
		}
		customerList.add(theCustomer);
	}

	public GymClass(String class_nm, String class_typ, int class_cost, String class_desp, Timestamp class_date_time,
			int class_duration, Employee employee) {
		this.class_nm = class_nm;
		this.class_typ = class_typ;
		this.class_cost = class_cost;
		this.class_desp = class_desp;
		this.class_date_time = class_date_time;
		this.class_duration = class_duration;
		this.employee = employee;
	}

	public GymClass() {
	}

	@Override
	public String toString() {
		return "GymClass [class_id=" + class_id + ", class_nm=" + class_nm + ", class_typ=" + class_typ + ", class_cost="
				+ class_cost + ", class_desp=" + class_desp + ", class_date_time=" + class_date_time
				+ ", class_duration=" + class_duration + "]";
	}
	
	
	@Transient
	private String comment;
	
	@Transient
	private int var1;
	@Transient
	private int var2;
	@Transient
	private int var3;
	@Transient
	private int var4;
	@Transient
	private int var5;

	
	
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


	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}
	
	
	
}
