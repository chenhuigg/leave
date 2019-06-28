package cn.edu.pdsu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.pdsu.mapper.LinkMapper;
import cn.edu.pdsu.mapper.MenuMapper;
import cn.edu.pdsu.pojo.User;

@Service
public class PremissionService {
	@Autowired
	private LinkMapper linkMapper;
	@Autowired
	private MenuMapper menuMapper;
	
	//获取所有需权限的链接
	public List<String> getAllLinks(){
		return linkMapper.getAll();
	}
	
	//获取拥有权限的路径
	public List<String> getLinksByPreission(User user){
		//获取角色id
		String roleid = user.getRoleid();
		//通过roleid查找角色有权限的链接
		return linkMapper.getLinkByRoleId(roleid);
	}
	
	//获取菜单
	public List<String> getMenuByPreission(User user){
		//获取角色id
		String roleid = user.getRoleid();
		//通过roleid查找角色所拥有的菜单
		return menuMapper.getMenuByRoleId(roleid);
	}

}