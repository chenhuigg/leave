package cn.edu.pdsu.pojo;

import java.util.HashMap;
import java.util.Map;

public class AjaxResult {
	private boolean success;
	private Object data;
	private Map<String,Object> map=new HashMap<>();
	public Map<String, Object> getMap() {
		return map;
	}
	public void setMap(Map<String, Object> map) {
		this.map = map;
	}
	public boolean isSuccess() {
		return success;
	}
	public void setSuccess(boolean success) {
		this.success = success;
	}
	public Object getData() {
		return data;
	}
	public void setData(Object data) {
		this.data = data;
	}
	public AjaxResult() {
		super();
	}
}
