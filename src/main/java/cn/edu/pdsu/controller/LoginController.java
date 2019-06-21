package cn.edu.pdsu.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import cn.edu.pdsu.pojo.AjaxResult;
import cn.edu.pdsu.pojo.User;
import cn.edu.pdsu.service.LoginService;

/*
 * 用户登录界面
 */
@RestController
public class LoginController {
	@Autowired
	private LoginService loginService;
	
	@RequestMapping("/logined")
	public Object logined(User user,HttpSession session) {
		AjaxResult ajaxResult=new AjaxResult();
		try {
			User resultUser= loginService.getUser(user);
			if(resultUser!=null) {
				ajaxResult.setSuccess(true);
				session.setAttribute("user", resultUser);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ajaxResult;
	}
	
	@RequestMapping("/logout")
	public void logout(HttpSession session,HttpServletResponse response) throws IOException{
		session.invalidate();
		response.sendRedirect("login.html");
	}
	
}
