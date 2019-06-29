package cn.edu.pdsu.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import cn.edu.pdsu.pojo.AjaxResult;
import cn.edu.pdsu.pojo.Role;
import cn.edu.pdsu.service.RoleService;

@RestController
public class RoleController {
	@Autowired
	private RoleService roleService;
	
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

}
