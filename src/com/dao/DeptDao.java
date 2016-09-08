package com.dao;

import java.util.ArrayList;

import com.entity.Dept;

public interface DeptDao {
	//�鿴����
	public Dept getDeptById(int did);
	//�������в���
	public ArrayList<Dept> getAllDept();
	//ͨ����ҳ�������в���
	public ArrayList<Dept> getAllDeptByPage(int n);
	//��Ӳ���
	public boolean insertDept(Dept dept);
	//���²���
	public boolean updateDept(int did,Dept dept);
	//�ر���Դ
	public void close();
}
