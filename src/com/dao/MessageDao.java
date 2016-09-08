package com.dao;

import java.util.ArrayList;
import com.entity.Message;

public interface MessageDao {
	//�鿴��������
	public ArrayList<Message> getALlMsg();
	//ͨ����ҳ�鿴��������
	public ArrayList<Message> getALlMsgByPage(int n);
	//�������
	public boolean addMessage(Message msg);
	//ͨ��muser��ѯ��������
	public Message getMsgByUser(String muser);
	//ͨ��midɾ��������Ϣ
	public boolean deleteNews(int mid);
	//�ر���Դ
	public void close();
}
