package cn.edu.pdsu.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import cn.edu.pdsu.pojo.AjaxResult;
import cn.edu.pdsu.pojo.Page;
import cn.edu.pdsu.pojo.User;
import cn.edu.pdsu.service.PageService;
import cn.edu.pdsu.service.UserService;

@RestController
public class UserController {
	@Autowired
	private UserService userService;
	@Autowired
	private PageService pageService;
	
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
	
	//返回内容
	//返回分页（当前页，共几页）
	@RequestMapping(value="/getLocationPageUser")
	public Object getLocationPageUser(@RequestParam(value="locationPage",defaultValue="0")int locationPage) {
		AjaxResult ajaxResult=new AjaxResult();
		try {
			//获取最大数
			int maxSize=pageService.getMaxSize();
			//计算最大页数
			int maxPage=(maxSize%10)==0?(maxSize/10):(maxSize/10)+1;
			Page page=new Page();
			page.setLocationPage(locationPage);
			page.setMaxSize(maxSize);
			page.setMaxPage(maxPage);
			page.setIndex(locationPage*page.getPerSize());
			//获得用户列表
			List<User> users= userService.getLocationPageUser(page);
			Map<String, Object> map=new HashMap<>();
			map.put("page", page);
			map.put("users", users);
			ajaxResult.setData(map);
			ajaxResult.setSuccess(true);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ajaxResult;
	}

}
