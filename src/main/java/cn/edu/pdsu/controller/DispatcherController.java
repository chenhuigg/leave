package cn.edu.pdsu.controller;

import org.springframework.stereotype.Controller;
/**
 * 专门负责页面跳转
 */
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class DispatcherController {
	/*
	 * 跳转到登陆页
	 */
	@RequestMapping("/login.html")
	public String login() {
		return "login";
	}
	
	/*
	 * 跳转到权限列表页
	 */
	@RequestMapping("/permissions.html")
	public String permissions() {
		return "permissions";
	}
	
	/*
	 * 跳转到申请列表
	 */
	@RequestMapping("/applylist.html")
	public String applylist() {
		return "applylist";
	}
	
	/*
	 * 跳转到审批列表
	 */
	@RequestMapping("/approvelist.html")
	public String approvelist() {
		return "approvelist";
	}
	
	/*
	 * 跳转到用户首页
	 */
	@RequestMapping("/usermain.html")
	public String usermain() {
		return "usermain";
	}
	
	/*
	 * 跳转到请假申请
	 */
	@RequestMapping("/writenote.html")
	public String writenote() {
		return "writenote";
	}
	/*
	 * 跳转到修改申请页
	 */
	@RequestMapping("/editnote.html")
	public String editnote() {
		return "editnote";
	}
	/*
	 * 跳转到用户列表
	 */
	@RequestMapping("/userlist.html")
	public String userlist() {
		return "userlist";
	}
	/*
	 * 跳转到用户编辑界面
	 */
	@RequestMapping("/useredit.html")
	public String useredit() {
		return "useredit";
	}
	/*
	 * 跳转到用户添加界面
	 */
	@RequestMapping("/useradd.html")
	public String useradd() {
		return "useradd";
	}
	/*
	 * 跳转到角色列表
	 */
	@RequestMapping("/rolelist.html")
	public String rolelist() {
		return "rolelist";
	}
	/*
	 * 跳转到新增角色
	 */
	@RequestMapping("/roleadd.html")
	public String roleadd() {
		return "roleadd";
	}
}
