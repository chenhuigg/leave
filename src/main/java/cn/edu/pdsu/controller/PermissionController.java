package cn.edu.pdsu.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import cn.edu.pdsu.pojo.AjaxResult;
import cn.edu.pdsu.pojo.Link;
import cn.edu.pdsu.pojo.Menu;
import cn.edu.pdsu.pojo.Permission;
import cn.edu.pdsu.service.PermissionService;

@RestController
public class PermissionController {
	@Autowired
	private PermissionService permissionService;
	
	/*
	 * 获得权限列表
	 */
	@RequestMapping("/getPermissionList")
	public Object getPermissionList() {
		AjaxResult ajaxResult=new AjaxResult();
		try {
			List<Permission> allPermission = permissionService.getAllPermission();
			if(allPermission!=null) {
				ajaxResult.setData(allPermission);
				ajaxResult.setSuccess(true);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ajaxResult;
	}
	/*
	 * 增加权限
	 */
	@RequestMapping("/addPermission")
	public Object addPermission(Permission permission,String value) {
		AjaxResult ajaxResult=new AjaxResult();
		boolean bool;
		try {
			//权限id
			String permissionId=UUID.randomUUID().toString();
			//资源id
			String resourceId=UUID.randomUUID().toString();
			permission.setId(permissionId);
			permission.setTime(new SimpleDateFormat("yyyy-MM-dd hh:mm:ss").format(new Date()));
			Map<String, Object> map=new HashMap<>();
			map.put("permission", permission);
			if(permission.getType().equals("0")) {
				Menu menu=new Menu();
				menu.setId(resourceId);
				menu.setHtml(value);
				map.put("menu", menu);
				bool= permissionService.addMenuPermission(map);
				ajaxResult.setSuccess(bool);
			}else if(permission.getType().equals("1")) {
				Link link=new Link();
				link.setId(resourceId);
				link.setLink(value);
				map.put("link", link);
				bool=permissionService.addLinkPermission(map);
				ajaxResult.setSuccess(bool);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ajaxResult;
	}
	/*
	 * 删除权限（列表页，单个权限）
	 */
	@RequestMapping("/delListPermission")
	public Object delListPermission(Permission permission) {
		AjaxResult ajaxResult=new AjaxResult();
		try {
			int i=permissionService.delListPermission(permission);
			if(i>0) {
				ajaxResult.setSuccess(true);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ajaxResult;
	}
	
	/*
	 * 根据权限Id获取权限详情
	 */
	@RequestMapping("/getPermissionDetailById")
	public Object getPermissionDetailById(String id) {
		AjaxResult ajaxResult=new AjaxResult();
		try {
			//通过权限id查找权限信息，获得type
			Permission permission= permissionService.getPermissionById(id);
			//通过type获得权限具体信息
			if(permission!=null) {
				Permission permission2= permissionService.getResourceByPermission(permission);
				if(permission2!=null) {
					permission.setLink(permission2.getLink());
					permission.setMenu(permission2.getMenu());
					if(permission!=null) {
						ajaxResult.setData(permission);
						ajaxResult.setSuccess(true);
					}
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ajaxResult;
	}
	
	/*
	 * 更新权限内容
	 */
	@RequestMapping("/putPermission")
	public Object putPermission(Permission permission,String resourceid,String resource) {
		AjaxResult ajaxResult =new AjaxResult();
		System.out.println(permission.getId());
		System.out.println(permission.getName());
		System.out.println(permission.getType());
		System.out.println(resourceid);
		System.out.println(resource);
		try {
			Map<String, Object> map=new HashMap<>();
			map.put("permission", permission);
			map.put("resourceid", resourceid);
			map.put("resource", resource);
			//更新权限的内容
			boolean bool=permissionService.updatePermission(map);
			if(bool) {
				ajaxResult.setSuccess(true);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ajaxResult;
	}
}
