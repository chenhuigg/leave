package cn.edu.pdsu.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import cn.edu.pdsu.pojo.Role;

public interface RoleMapper {
	/*
	 * 获取所有角色信息
	 */
	@Select("SELECT * FROM act_role")
	public List<Role> getAllRole();
	
}
