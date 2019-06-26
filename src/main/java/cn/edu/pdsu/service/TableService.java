package cn.edu.pdsu.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.pdsu.mapper.TableMapper;
import cn.edu.pdsu.pojo.Table;
import cn.edu.pdsu.pojo.User;

@Service
public class TableService {
	@Autowired
	private TableMapper tableMapper;
	
	public List<Table> applylist(User user) {
	 	return tableMapper.selectAll(user);
	}
	
	public List<Table> selectAllByApproveid(User user){
		return tableMapper.selectAllByApproveid(user);
	}

	public int commit(Map<String, Object> map) {
		return tableMapper.insertTable(map);
	}

	public int cancle(String id) {
		return tableMapper.deleteTable(id);
	}

	public int refuse(Map<String, Object> map) {
		return tableMapper.updateState(map);
	}

	public int access(Map<String, Object> map) {
		return tableMapper.updateState(map);
	}

	public Table getTable(Map<String, Object> map) {
		return tableMapper.getTableById(map);
	}

	public int edit(Map<String, Object> map) {
		return tableMapper.updateTableByIdAndUserId(map);
	}


}
