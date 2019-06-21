package cn.edu.pdsu.pojo;

public class Premission {
	private String id;
	private char type;
	private String link;
	private String menu;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public char getType() {
		return type;
	}
	public void setType(char type) {
		this.type = type;
	}
	public String getLink() {
		return link;
	}
	public void setLink(String link) {
		this.link = link;
	}
	public String getMenu() {
		return menu;
	}
	public void setMenu(String menu) {
		this.menu = menu;
	}
	public Premission() {
		super();
	}
}
