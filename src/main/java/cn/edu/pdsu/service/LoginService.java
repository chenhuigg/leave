package cn.edu.pdsu.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.pdsu.mapper.UserMapper;
import cn.edu.pdsu.pojo.User;

@Service
public class LoginService {
	
	@Autowired
	private UserMapper userMapper;

	public User getUser(User user) {
		return userMapper.getUser(user);
	}
	
	
	
}
