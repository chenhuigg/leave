package cn.edu.pdsu.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
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
	
	/*
	 * 新增用户
	 */
	@RequestMapping("/addUser")
	public Object adduser(User user) {
		AjaxResult ajaxResult=new AjaxResult();
		try {
			//默认角色(学生)
			if(user.getRoleid()==null||user.getRoleid()=="") {
				user.setRoleid("1");
			}
			//默认管理者-1
			if(user.getUserid()==null||user.getUserid()=="") {
				user.setUserid("-1");
			}
			user.setPassword("123");
			user.setTime(new SimpleDateFormat("yyyy-MM-dd hh:mm:ss").format(new Date()));
			int i= userService.addUser(user);
			if(i==1) {
				ajaxResult.setSuccess(true);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ajaxResult;
	}
	
	@RequestMapping("/delUser")
	public Object delUser(String id) {
		AjaxResult ajaxResult=new AjaxResult();
		try {
			int i=userService.delUser(id);
			if(i==1) {
				ajaxResult.setSuccess(true);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ajaxResult;
	}
	
	/*
	 * 删除多个用户
	 */
	@RequestMapping("/delUsers")
	public Object delUsers(String[] id) {
		AjaxResult ajaxResult=new AjaxResult();
		try {
			int i=userService.delUsers(id);
			if(i>0) {
				ajaxResult.setSuccess(true);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ajaxResult;
	}
	
	/*
	 * 通过ID获取用户信息
	 */
	@RequestMapping("/getUserById")
	public Object getUserById(String id) {
		AjaxResult ajaxResult=new AjaxResult();
		try {
			User user=new User();
			user.setUserid(id);
			user = userService.getUserByUserid(user);
			if(user!=null) {
				ajaxResult.setData(user);
				ajaxResult.setSuccess(true);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ajaxResult;
	}
	/*
	 * 修改用户
	 */
	@RequestMapping("/editsave")
	public Object editsave(User user) {
		System.out.println(user.getId());
		System.out.println(user.getUsername());
		AjaxResult ajaxResult=new AjaxResult();
		try {
			int i= userService.editsave(user);
			if(i==1) {
				ajaxResult.setSuccess(true);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ajaxResult;
	}
	
}
