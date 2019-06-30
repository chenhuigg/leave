package cn.edu.pdsu.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.pdsu.mapper.LinkMapper;
import cn.edu.pdsu.mapper.MenuMapper;
import cn.edu.pdsu.mapper.PermissionMapper;
import cn.edu.pdsu.pojo.Permission;
import cn.edu.pdsu.pojo.User;

@Service
public class PermissionService {
	@Autowired
	private LinkMapper linkMapper;
	@Autowired
	private MenuMapper menuMapper;
	@Autowired 
	private PermissionMapper permissionMapper;
	
	//获取所有需权限的链接
	public List<String> getAllLinks(){
		return linkMapper.getAll();
	}
	
	//获取所有权限
	public List<Permission> getAllPermission() {
		return permissionMapper.getAllPermission();
	}
	
	//获取拥有权限的路径
	public List<String> getLinksByPerission(User user){
		//获取角色id
		String roleid = user.getRoleid();
		//通过roleid查找角色有权限的链接
		return linkMapper.getLinkByRoleId(roleid);
	}
	
	//获取菜单
	public List<String> getMenuByPerission(User user){
		//获取角色id
		String roleid = user.getRoleid();
		//通过roleid查找角色所拥有的菜单
		return menuMapper.getMenuByRoleId(roleid);
	}

	/*
	 * 根据角色id获取角色已分配的权限
	 */
	public List<Permission> getHadPermissionByPermissionId(String id) {
		return permissionMapper.getPermissionById(id);
	}

	public int addPermissions(Map<String, Object> map) {
		return permissionMapper.addPermissions(map);
	}

	public int delPermissions(Map<String, Object> map) {
		return permissionMapper.delPermissions(map);
	}

	

}
