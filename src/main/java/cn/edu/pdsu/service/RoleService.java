package cn.edu.pdsu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.pdsu.mapper.RoleMapper;
import cn.edu.pdsu.pojo.Role;

@Service
public class RoleService {
	@Autowired
	private RoleMapper roleMapper;

	public List<Role> getAllRole() {
		return roleMapper.getAllRole();
	}
	
	

}
