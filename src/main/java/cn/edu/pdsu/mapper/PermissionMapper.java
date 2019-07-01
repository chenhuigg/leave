package cn.edu.pdsu.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import cn.edu.pdsu.pojo.Link;
import cn.edu.pdsu.pojo.Menu;
import cn.edu.pdsu.pojo.Permission;

public interface PermissionMapper {

	@Select("SELECT * FROM act_permission ORDER BY time DESC")
	List<Permission> getAllPermission();

	@Select("SELECT * FROM act_permission p " + 
			"INNER JOIN act_r_p r_p " + 
			"ON p.id=r_p.permissionid " + 
			"WHERE r_p.roleid=#{id}")
	List<Permission> getPermissionByRoleId(String id);

	int addPermissions(Map<String, Object> map);

	int delPermissions(Map<String, Object> map);

	@Insert("INSERT INTO act_permission(id,name,type,time) VALUES(#{id},#{name},#{type},#{time}) ")
	int addPermission(Permission permission);

	@Insert("INSERT INTO act_menu(id,html) VALUES(#{id},#{html}) ")
	void addMenu(Menu menu);

	@Insert("INSERT INTO act_p_m(p_id,m_id) VALUES(#{p_id},#{m_id})")
	void addAct_p_m(@Param("p_id")String id,@Param("m_id") String id2);

	@Insert("INSERT INTO act_link(id,link) VALUES(#{id},#{link})")
	void addLink(Link link);

	@Insert("INSERT INTO act_p_l(p_id,l_id) VALUES(#{p_id},#{l_id})")
	void addAct_p_l(@Param("p_id")String id,@Param("l_id") String id2);

	int delListPermission(Permission permission);

	@Select("SELECT * FROM act_permission WHERE id=#{id}")
	Permission getPermissionById(String id);

	Permission getResourceByPermission(Permission permission);

	@Update("UPDATE act_permission SET name=#{name},type=#{type} WHERE id=#{id}")
	void updatePermission(Permission permission);

	@Update("UPDATE act_menu SET html=#{html} WHERE id=#{id}")
	void updateMenu(Menu menu);

	@Update("UPDATE act_link SET link=#{link} WHERE id=#{id}")
	void updateLink(Link link);

	
	
}
