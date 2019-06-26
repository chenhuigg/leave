package cn.edu.pdsu.filter;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import cn.edu.pdsu.pojo.User;
import cn.edu.pdsu.service.PremissionService;
//用于实现权限的控制
@Component
public class PremissionFilter implements HandlerInterceptor{
	@Autowired
	private PremissionService premissionService;
	
	@Override
	public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		
	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)
			throws Exception {
		
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object object) throws Exception {
		//用户所访问的路径
		String uri = request.getRequestURI();
		HttpSession session = request.getSession();
		//判断Session中urls是否为空
		//如果urls中包含，就通过
		@SuppressWarnings("unchecked")
		List<String> lists=(List<String>) session.getAttribute("urls");
		if(lists!=null) {
			for (String string : lists) {
				if(uri.contains(string)) {
					return true;
				}
			}
		}
		//获取所有需权限的路径
		List<String> links = premissionService.getAllLinks();
		for (String link : links) {
			if(uri.contains(link)) {
				//获取拥有权限的路径
				User user=(User) session.getAttribute("user");
				if(user==null) {
					//无权限
					response.sendError(402,"无权访问");
					return false;
				}
				List<String> myLists = premissionService.getLinksByPreission(user);
				//放到Session的urls中
				session.setAttribute("urls", myLists);
				if(myLists.contains(link)) {
					//有权限
					return true;
				}else {
					//无权限
					response.sendError(402,"无权访问");
					return false;
				}
			}
		}
		return true;
	}
	

}
