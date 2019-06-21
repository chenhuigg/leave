package cn.edu.pdsu.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.pdsu.mapper.UserMapper;
import cn.edu.pdsu.pojo.User;

@Service
public class UserService {
	@Autowired
	private UserMapper userMapper;

	//修改用户信息
	public int updateUser(User myUser) {
		return userMapper.updateUser(myUser);
	}
	
	//获得学生对应的老师
	public User getUserByUserid(User user) {
		return userMapper.getUserByUserid(user);
	}
	

}
