package com.hrm.domain;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class EmployeeTimeSheet {

	@Id@GeneratedValue
	private long employeeId;
	private String dateAttended;
	private float hoursWorked;
	private String comments;
	
	public EmployeeTimeSheet(){
	}
	
	public EmployeeTimeSheet(long employeeId, String dateAttended, float hoursWorked, String comments) {
		super();
		this.employeeId = employeeId;
		this.dateAttended = dateAttended;
		this.hoursWorked = hoursWorked;
		this.comments = comments;
	}
	
	public long getEmployeeId() {
		return employeeId;
	}
	public void setEmployeeId(long employeeId) {
		this.employeeId = employeeId;
	}
	public String getDateAttended() {
		return dateAttended;
	}
	public void setDateAttended(String dateAttended) {
		this.dateAttended = dateAttended;
	}
	public float getHoursWorked() {
		return hoursWorked;
	}
	public void setHoursWorked(float hoursWorked) {
		this.hoursWorked = hoursWorked;
	}
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
	
	
	
}

