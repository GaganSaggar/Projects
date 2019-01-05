package com.niec.citizen.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Component
@Table
public class Electricity {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String username;
	private long scnum;
	private long acnum;
	private long ero;
	private long amount;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public long getScnum() {
		return scnum;
	}
	public void setScnum(long scnum) {
		this.scnum = scnum;
	}
	public long getAcnum() {
		return acnum;
	}
	public void setAcnum(long acnum) {
		this.acnum = acnum;
	}
	public long getEro() {
		return ero;
	}
	public void setEro(long ero) {
		this.ero = ero;
	}
	public long getAmount() {
		return amount;
	}
	public void setAmount(long amount) {
		this.amount = amount;
	}
	
}
