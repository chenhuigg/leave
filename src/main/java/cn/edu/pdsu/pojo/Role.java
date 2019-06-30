package cn.edu.pdsu.pojo;

import java.util.HashSet;
import java.util.Set;

public class Role {
	private String id;
	private String rolename;
	private String time;
	private Set<Permission> premissions=new HashSet<>();
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getRolename() {
		return rolename;
	}
	public void setRolename(String rolename) {
		this.rolename = rolename;
	}
	public Role() {
		super();
	}
	public Set<Permission> getPremissions() {
		return premissions;
	}
	public void setPremissions(Set<Permission> premissions) {
		this.premissions = premissions;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	
}
