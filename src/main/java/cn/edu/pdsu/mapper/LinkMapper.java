package cn.edu.pdsu.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

public interface LinkMapper {

	@Select("SELECT link FROM act_link")
	public List<String> getAll();
	
	//查找角色所对应的link
	@Select("SELECT act_link.link " + 
			"FROM act_link " + 
			"INNER JOIN act_p_l " + 
			"ON act_link.id=act_p_l.l_id " + 
			"INNER JOIN act_r_p " + 
			"ON act_p_l.p_id=act_r_p.permissionid " + 
			"WHERE act_r_p.roleid=#{roleid} ")
	public List<String> getLinkByRoleId(String roleid);

}
