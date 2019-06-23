package com.niit.ecom.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Component
@Table
public class Supplier
{
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int supId;
	private String supName;
	private long supnumber;
	
	public int getSupId() {
		return supId;
	}
	public void setSupId(int supId) {
		this.supId = supId;
	}
	public String getSupName() {
		return supName;
	}
	public void setSupName(String supName) {
		this.supName = supName;
	}
	public long getSupnumber() {
		return supnumber;
	}
	public void setSupnumber(long supnumber) {
		this.supnumber = supnumber;
	}
}
