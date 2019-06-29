package cn.edu.pdsu.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import cn.edu.pdsu.pojo.Role;

public interface RoleMapper {
	/*
	 * 获取所有角色信息
	 */
	@Select("SELECT * FROM act_role ORDER BY time DESC")
	public List<Role> getAllRole();

	@Insert("INSERT INTO act_role(id,rolename,time) VALUES(#{id},#{rolename},#{time})")
	public int insertRole(Role role);
	
}
