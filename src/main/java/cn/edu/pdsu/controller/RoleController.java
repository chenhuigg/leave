package cn.edu.pdsu.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import cn.edu.pdsu.pojo.AjaxResult;
import cn.edu.pdsu.pojo.Permission;
import cn.edu.pdsu.pojo.Role;
import cn.edu.pdsu.service.PermissionService;
import cn.edu.pdsu.service.RoleService;

@RestController
public class RoleController {
	@Autowired
	private RoleService roleService;
	@Autowired
	private PermissionService permissionService;
	/*
	 * 获取所有角色信息
	 */
	@RequestMapping("/getAllRole")
	public Object getAllRole() {
		AjaxResult ajaxResult=new AjaxResult();
		try {
			List<Role> role = roleService.getAllRole();
			ajaxResult.setData(role);
			ajaxResult.setSuccess(true);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ajaxResult;
	}
	/*
	 * 新增角色
	 */
	@RequestMapping("/roleadd")
	public Object roleAdd(Role role) {
		AjaxResult ajaxResult=new AjaxResult();
		try {
			role.setId(UUID.randomUUID().toString());
			role.setTime(new SimpleDateFormat("yyyy-MM-dd hh:mm:ss").format(new Date()));
			int i=roleService.roleAdd(role);
			if(i==1) {
				ajaxResult.setSuccess(true);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ajaxResult;
	}
	/*
	 * 删除角色
	 */
	@RequestMapping("/delrole")
	public Object delRole(String id) {
		AjaxResult ajaxResult=new AjaxResult();
		try {
			int i= roleService.delRole(id);
			if(i==1) {
				ajaxResult.setSuccess(true);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ajaxResult;
	}
	
	/*
	 * 获取角色的名称，权限信息（已分配权限、未分配权限）
	 */
	@RequestMapping("/getPermissionInfoById")
	public Object getPermissionInfoById(String id) {
		AjaxResult ajaxResult=new AjaxResult();
		try {
			//获取角色信息
			Role role= roleService.getRoleById(id);
			//获取所有权限信息
			List<Permission> allPermissions = permissionService.getAllPermission();
			//获取已分配权限信息
			List<Permission> hadPermissions= permissionService.getHadPermissionByPermissionId(id);
			//获取未分配权限信息
			List<Permission> unPermissions = getUnPermission(allPermissions, hadPermissions);
			Map<String, Object> map=new HashMap<>();
			map.put("role", role);
			map.put("hadPermissions", hadPermissions);
			map.put("unPermissions", unPermissions);
			ajaxResult.setData(map);
			ajaxResult.setSuccess(true);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ajaxResult;
	}
	private List<Permission> getUnPermission(List<Permission> allPermissions,List<Permission> hadPermissions){
		List<Permission> permissions=new LinkedList<>();
		for (Permission permission : allPermissions) {
			if(!(hadPermissions.contains(permission))) {
				permissions.add(permission);
			}
		}
		return permissions;
	}
	
	/*
	 * 添加权限
	 */
	@RequestMapping("/addPermission")
	public Object addPermission(String [] ids,String id) {
		AjaxResult ajaxResult=new AjaxResult();
		try {
			Map<String, Object> map=new HashMap<>();
			map.put("ids", ids);
			map.put("roleid", id);
			//添加权限
			int i=permissionService.addPermissions(map);
			if(i>0) {
				ajaxResult.setSuccess(true);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ajaxResult;
	}
	/*
	 * 删除权限
	 */
	@RequestMapping("/delPermission")
	public Object delPermission(String [] ids,String id) {
		AjaxResult ajaxResult=new AjaxResult();
		try {
			Map<String, Object> map=new HashMap<>();
			map.put("ids", ids);
			map.put("roleid", id);
			//删除权限
			int i=permissionService.delPermissions(map);
			if(i>0) {
				ajaxResult.setSuccess(true);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ajaxResult;
	}

}
