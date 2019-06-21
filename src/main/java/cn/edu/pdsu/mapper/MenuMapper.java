package cn.edu.pdsu.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

public interface MenuMapper {
	
	//查找角色所对应的menu
	@Select("SELECT act_menu.html " + 
			"FROM act_menu " + 
			"INNER JOIN act_p_m " + 
			"ON act_menu.id=act_p_m.m_id " + 
			"INNER JOIN act_r_p " + 
			"ON act_p_m.p_id=act_r_p.permissionid " + 
			"WHERE act_r_p.roleid=#{roleid} ")
	public List<String> getMenuByRoleId(String roleid);

}
