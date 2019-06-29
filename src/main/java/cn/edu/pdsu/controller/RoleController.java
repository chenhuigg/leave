package cn.edu.pdsu.controller;

import java.util.List;

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

}
