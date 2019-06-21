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
	
}
