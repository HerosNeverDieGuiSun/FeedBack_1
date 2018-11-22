package com.hgd.ebp.domain;

import java.sql.Timestamp;

public class Ordertotal {
	private int oid;
	private int lid;
	private String desc;
	private Timestamp commitTime;
	private double amount;
	private int uid;
	private String telno;
	public Ordertotal(int oid, int lid, String desc, Timestamp commitTime, double amount, int uid, String telno) {
		super();
		this.oid = oid;
		this.lid = lid;
		this.desc = desc;
		this.commitTime = commitTime;
		this.amount = amount;
		this.uid = uid;
		this.telno = telno;
	}
	public int getOid() {
		return oid;
	}
	public void setOid(int oid) {
		this.oid = oid;
	}
	public int getLid() {
		return lid;
	}
	public void setLid(int lid) {
		this.lid = lid;
	}
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	public Timestamp getCommitTime() {
		return commitTime;
	}
	public void setCommitTime(Timestamp commitTime) {
		this.commitTime = commitTime;
	}
	public double getAmount() {
		return amount;
	}
	public void setAmount(double amount) {
		this.amount = amount;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getTelno() {
		return telno;
	}
	public void setTelno(String telno) {
		this.telno = telno;
	}
	
	
	
}
