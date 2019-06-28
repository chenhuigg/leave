package cn.edu.pdsu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.pdsu.mapper.UserMapper;
import cn.edu.pdsu.pojo.Page;
import cn.edu.pdsu.pojo.User;

@Service
public class UserService {
	@Autowired
	private UserMapper userMapper;

	//更新当前用户信息
	public int updateUser(User myUser) {
		return userMapper.updateUser(myUser);
	}
	
	//通过用户Id获取用户信息
	public User getUserByUserid(User user) {
		return userMapper.getUserByUserid(user);
	}

	public List<User> getLocationPageUser(Page page) {
		return userMapper.getUserByLimit(page);
	}

	public int addUser(User user) {
		return userMapper.addUser(user);
	}

	public int delUser(String id) {
		return userMapper.delUserById(id);
	}

	public int delUsers(String[] id) {
		return userMapper.delUsers(id);
	}

	public int editsave(User user) {
		
		return userMapper.updateUser(user);
	}


}
