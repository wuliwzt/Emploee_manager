package com.dao;

import com.entity.Manager;

public interface ManagerDao {
	//����Ա�˺�mname������mpassword��¼
	public int managerLogin(String mname,String mpassword);
	//ͨ��mid���Ĺ���Ա����
	public boolean mupdatePassword(int mid,String newPsw);
	//ͨ���˺Ż�ù���Ա
	public Manager getMangerByName(String mname);
	//�ر���Դ
	public void close();
}
