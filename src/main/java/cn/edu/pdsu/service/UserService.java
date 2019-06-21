package cn.edu.pdsu.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.pdsu.mapper.UserMapper;
import cn.edu.pdsu.pojo.User;

@Service
public class UserService {
	@Autowired
	private UserMapper userMapper;

	//�޸��û���Ϣ
	public int updateUser(User myUser) {
		return userMapper.updateUser(myUser);
	}
	
	//���ѧ����Ӧ����ʦ
	public User getUserByUserid(User user) {
		return userMapper.getUserByUserid(user);
	}
	

}
