package com.dao;

import java.util.ArrayList;
import com.entity.Emploe;

//Ա������
public interface EmploeDao {
	//Ա��ע�ᣨ�������⼰����𰸣�
	public boolean registerEmploe(Emploe emploe);
	//Ա��ע�ᣨ���������⼰����𰸣�
	public boolean registerEmploe2(Emploe emploe);
	//����Ա���Ա��
	 public boolean addEmploe(Emploe emploe);
	//ע���˻�
	public	boolean remove(int eid);
	
	//����Ա��
	public boolean updateEmploe(int eid,Emploe emploe);
	//ͨ�����ֲ�ѯԱ��
	public Emploe getEmploeByName(String ename);
	
	//ͨ����Ų�ѯԱ�� 
	public Emploe getEmploeById(int eid);
	
	//ͨ�����Ų�Ա��
	public ArrayList<Emploe> getEmploeByDname(String dname);
	//ͨ��pname�������Ա��
	public ArrayList<Emploe> getEmploeByPname(String pname);
	//ͨ��eid����pid
	public boolean updatePidByEid(int eid,int pid);
	//�鿴����Ա��
	public ArrayList<Emploe> getAllEmploe();
	//ͨ����ҳ�鿴����Ա��
	public ArrayList<Emploe> getAllEmploeByPage(int pageNow);
	//��¼
	public int emploeLogin(int eid, String epassword);
	//�ر���Դ
	public void close();
}	
