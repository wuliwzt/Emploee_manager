package com.dao;

import java.util.ArrayList;

import com.entity.Post;
public interface PostDao {
	//��������ְλ
	public ArrayList<Post> getAllPost();
	//�鿴ְλ
	public Post getPostById(int pid);
	//�ر���Դ
	public void close();
}
