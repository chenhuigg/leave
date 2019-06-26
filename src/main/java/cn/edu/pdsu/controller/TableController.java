package cn.edu.pdsu.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import cn.edu.pdsu.pojo.AjaxResult;
import cn.edu.pdsu.pojo.Table;
import cn.edu.pdsu.pojo.User;
import cn.edu.pdsu.service.TableService;
import cn.edu.pdsu.service.UserService;

@RestController
public class TableController {
	
	@Autowired
	private TableService tableService;
	@Autowired
	private UserService userService;
	/*
	 * 提交请假申请
	 */
	@RequestMapping("/commit")
	public Object commit(Table table,HttpSession session) {
		AjaxResult ajaxResult=new AjaxResult();
		try {
			table.setFrom_time(table.getFrom_time().replace("T", " "));
			table.setTo_time(table.getTo_time().replace("T", " "));
			User user=(User) session.getAttribute("user");
			Map<String, Object> map=new HashMap<>();
			User teacher = userService.getUserByUserid(user);
			map.put("table", table);
			map.put("user", user);
			map.put("teacher", teacher);
			map.put("time", new SimpleDateFormat("yyyy-MM-dd hh:mm:ss").format(new Date()));
			int i= tableService.commit(map);
			if(i>0) {
				ajaxResult.setSuccess(true);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ajaxResult;
	}
	
	/*
	 * 查看请假申请列表
	 */
	@RequestMapping("/applylist")
	public Object applylist(HttpSession session) {
		AjaxResult ajaxResult=new AjaxResult();
		try {
			//查询用户请假列表
			User user=(User) session.getAttribute("user");
			List<Table> tables= tableService.applylist(user);
			User teacher=userService.getUserByUserid(user);
			if(teacher!=null) {
				ajaxResult.getMap().put("teachername", teacher.getUsername());
			}
			ajaxResult.setData(tables);
			ajaxResult.setSuccess(true);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ajaxResult;
	}
	
	/*
	 * 查看请假审批列表
	 */
	@RequestMapping("/approvelist")
	public Object approvelist(HttpSession session) {
		AjaxResult ajaxResult=new AjaxResult();
		try {
			//通过老师ID获得请假审批
			User user=(User) session.getAttribute("user");
			List<Table> tables = tableService.selectAllByApproveid(user);
			ajaxResult.setData(tables);
			ajaxResult.setSuccess(true);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ajaxResult;
	}
	
	/*
	 * 取消申请
	 */
	@RequestMapping("/cancle")
	public Object cancle(String id,HttpSession session) {
		AjaxResult ajaxResult=new AjaxResult();
		
		try {
			int i= tableService.cancle(id);
			if(i>0) {
				ajaxResult.setSuccess(true);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return ajaxResult;
	}
	
	/*
	 * 通过申请
	 * 状态变为2
	 */
	@RequestMapping("/access")
	public Object  access(String id,HttpSession session) {
		AjaxResult ajaxResult=new AjaxResult();
		try {
			User user=(User) session.getAttribute("user");
			if(user!=null) {
				Map<String, Object> map=new HashMap<>();
				map.put("id", id);
				map.put("approveid",user.getId());
				map.put("state", 2);
				int i= tableService.access(map);
				if(i>0) {
					ajaxResult.setSuccess(true);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ajaxResult;
	}
	/*
	 * 拒绝申请
	 * 状态变为1
	 */
	@RequestMapping("/refuse")
	public Object  refuse(String id,HttpSession session) {
		AjaxResult ajaxResult=new AjaxResult();
		try {
			User user=(User) session.getAttribute("user");
			Map<String, Object> map=new HashMap<>();
			map.put("id", id);
			map.put("approveid",user.getId());
			map.put("state", 1);
			int i= tableService.refuse(map);
			if(i>0) {
				ajaxResult.setSuccess(true);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ajaxResult;
	}
	/*
	 * 获取表单信息
	 */
	@RequestMapping("/getTable")
	public Object getTable(String id,HttpSession session) {
		AjaxResult ajaxResult=new AjaxResult();
		try {
			User user= (User)session.getAttribute("user");
			Map<String, Object> map=new HashMap<>();
			map.put("userid",user.getId());
			map.put("id", id);
			Table table= tableService.getTable(map);
			ajaxResult.setData(table);
			ajaxResult.setSuccess(true);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ajaxResult;
	}
	/*
	 * 修改表单信息
	 */
	@RequestMapping("/edit")
	public Object edit(Table table,HttpSession session) {
		AjaxResult ajaxResult=new AjaxResult();
		try {
			Map<String, Object> map=new HashMap<>();
			table.setFrom_time(table.getFrom_time().replace("T", " "));
			table.setTo_time(table.getTo_time().replace("T", " "));
			User user=(User) session.getAttribute("user");
			map.put("table", table);
			map.put("userid", user.getId());
			int i= tableService.edit(map);
			if(i==1) {
				ajaxResult.setSuccess(true);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ajaxResult;
	}
	
}
