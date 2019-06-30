package cn.edu.pdsu.pojo;

import java.util.HashSet;
import java.util.Set;

public class Permission {
	private String id;
	private String name;
	private String type;
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	private Set<Menu> menus=new HashSet<>();
	private Set<Link> links=new HashSet<>();
	@Override
	public boolean equals(Object obj) {
		Permission premission=(Permission) obj;
		return this.id.equals(premission.id);
	}
	public Set<Menu> getMenus() {
		return menus;
	}
	public void setMenus(Set<Menu> menus) {
		this.menus = menus;
	}
	public Set<Link> getLinks() {
		return links;
	}
	public void setLinks(Set<Link> links) {
		this.links = links;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Permission() {
		super();
	}
}
