package cn.edu.pdsu.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import cn.edu.pdsu.pojo.AjaxResult;
import cn.edu.pdsu.pojo.User;
import cn.edu.pdsu.service.PremissionService;

@RestController
public class MenuController {
	@Autowired
	private PremissionService premissionService;
	
	@RequestMapping("/menu")
	public Object getMenu(HttpSession session) {
		AjaxResult ajaxResult=new AjaxResult();
		try {
			User user=(User) session.getAttribute("user");
			if(user!=null) {
				List<String> menus = premissionService.getMenuByPreission(user);
				ajaxResult.setData(menus);
				ajaxResult.setSuccess(true);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ajaxResult;
	}

}
