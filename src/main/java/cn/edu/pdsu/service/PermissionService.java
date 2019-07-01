package cn.edu.pdsu.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.pdsu.mapper.LinkMapper;
import cn.edu.pdsu.mapper.MenuMapper;
import cn.edu.pdsu.mapper.PermissionMapper;
import cn.edu.pdsu.pojo.Link;
import cn.edu.pdsu.pojo.Menu;
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
		return permissionMapper.getPermissionByRoleId(id);
	}

	public int addPermissions(Map<String, Object> map) {
		return permissionMapper.addPermissions(map);
	}

	/*
	 * 为角色增加权限
	 */
	public int delPermissions(Map<String, Object> map) {
		return permissionMapper.delPermissions(map);
	}
	
	/*
	 * 增加新权限（菜单）
	 */
	public boolean addMenuPermission(Map<String, Object> map) {
		Permission permission= (Permission) map.get("permission");
		Menu menu= (Menu) map.get("menu");
		//将权限信息插入act_permission表
		permissionMapper.addPermission(permission);
		//将权限信息插入act_menu
		permissionMapper.addMenu(menu);
		//将权限信息插入act_p_m
		permissionMapper.addAct_p_m(permission.getId(),menu.getId());
		return true;
	}
	/*
	 * 增加新权限（链接）
	 */
	public boolean addLinkPermission(Map<String, Object> map) {
		Permission permission= (Permission) map.get("permission");
		Link link= (Link) map.get("link");
		//将权限信息插入act_permission表
		permissionMapper.addPermission(permission);
		//将权限信息插入act_link
		permissionMapper.addLink(link);
		//将权限信息插入act_p_l
		permissionMapper.addAct_p_l(permission.getId(),link.getId());
		return true;
	}

	public int delListPermission(Permission permission) {
		return permissionMapper.delListPermission(permission);
	}

	/*
	 * 根据权限Id获取权限详情
	 */
	public Permission getPermissionById(String id) {
		return permissionMapper.getPermissionById(id);
	}

	/*
	 * 通过权限id和权限类型获得资源
	 */
	public Permission getResourceByPermission(Permission permission) {
		return permissionMapper.getResourceByPermission(permission);
	}

	public boolean updatePermission(Map<String, Object> map) {
		//获取权限信息
		Permission permission=(Permission) map.get("permission");
		String resourceid=(String) map.get("resourceid");
		String resource=(String) map.get("resource");
		//更新权限表
		permissionMapper.updatePermission(permission);
		//获取资源信息
		if(permission.getType().equals("0")) {
			Menu menu=new Menu();
			menu.setId(resourceid);
			menu.setHtml(resource);
			//更新菜单表
			permissionMapper.updateMenu(menu);
		}else if(permission.getType().equals("1")) {
			Link link=new Link();
			link.setId(resourceid);
			link.setLink(resource);
			//更新链接表
			permissionMapper.updateLink(link);
		}

		//更新资源表
		
		return true;
	}


	

}
