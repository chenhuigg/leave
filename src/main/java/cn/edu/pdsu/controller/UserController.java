package cn.edu.pdsu.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import cn.edu.pdsu.pojo.AjaxResult;
import cn.edu.pdsu.pojo.User;
import cn.edu.pdsu.service.UserService;

@RestController
public class UserController {
	@Autowired
	private UserService userService;
	
	@RequestMapping("/getUser")
	public Object getUser(HttpSession session) {
		AjaxResult ajaxResult=new AjaxResult();
		try {
			User user=(User) session.getAttribute("user");
			if(user!=null) {
				ajaxResult.setData(user.getUsername());
				ajaxResult.setSuccess(true);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ajaxResult;
	}
	
	@RequestMapping("/getUserDetail")
	public Object getUserDetail(HttpSession session) {
		AjaxResult ajaxResult=new AjaxResult();
		try {
			User user=(User)session.getAttribute("user");
			ajaxResult.setData(user);
			ajaxResult.setSuccess(true);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ajaxResult;
	}
	
	@RequestMapping("/updateUser")
	public Object updateUser(User user,HttpSession session) {
		AjaxResult ajaxResult=new AjaxResult();
		try {
			User sessionUser=(User) session.getAttribute("user");
			sessionUser.setUsername(user.getUsername());
			sessionUser.setPassword(user.getPassword());
			int i=userService.updateUser(sessionUser);
			if(i>0) {
				session.setAttribute("user",sessionUser);
				ajaxResult.setSuccess(true);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ajaxResult;
	}

}
