package com.entity;

public class Dept {
	private int did;		//���ű��
	private String dname;	//������
	private String daddr;
	private int dnumber;
	private int eid;		//���ž���Ա�����
	private int dstatus;
	
	public Dept(){}

	public int getDid() {
		return did;
	}

	public void setDid(int did) {
		this.did = did;
	}

	public String getDname() {
		return dname;
	}

	public void setDname(String dname) {
		this.dname = dname;
	}

	public String getDaddr() {
		return daddr;
	}

	public void setDaddr(String daddr) {
		this.daddr = daddr;
	}

	public int getDnumber() {
		return dnumber;
	}

	public void setDnumber(int dnumber) {
		this.dnumber = dnumber;
	}

	public int getEid() {
		return eid;
	}

	public void setEid(int eid) {
		this.eid = eid;
	}

	public int getDstatus() {
		return dstatus;
	}

	public void setDstatus(int dstatus) {
		this.dstatus = dstatus;
	}
	
}
