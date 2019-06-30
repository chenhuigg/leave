package cn.edu.pdsu.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Select;

import cn.edu.pdsu.pojo.Permission;

public interface PermissionMapper {

	@Select("SELECT * FROM act_permission")
	List<Permission> getAllPermission();

	@Select("SELECT * FROM act_permission p " + 
			"INNER JOIN act_r_p r_p " + 
			"ON p.id=r_p.permissionid " + 
			"WHERE r_p.roleid=#{id}")
	List<Permission> getPermissionById(String id);

	int addPermissions(Map<String, Object> map);

	int delPermissions(Map<String, Object> map);

}
