package cn.edu.pdsu.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.pdsu.mapper.PageMapper;

@Service
public class PageService {
	@Autowired
	private PageMapper pageMapper;

	public int getMaxSize() {
		return pageMapper.getCount();
	}
	
	
	
}
