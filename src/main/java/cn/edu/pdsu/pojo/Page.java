package cn.edu.pdsu.pojo;

public class Page {
	private int locationPage;//当前页
	private int maxSize;//最大数量
	private int maxPage;//最大页数
	private int perSize=10;//每页显示数量
	public int getLocationPage() {
		return locationPage;
	}
	public void setLocationPage(int locationPage) {
		this.locationPage = locationPage;
	}
	public int getMaxSize() {
		return maxSize;
	}
	public void setMaxSize(int maxSize) {
		this.maxSize = maxSize;
	}
	public int getMaxPage() {
		return maxPage;
	}
	public void setMaxPage(int maxPage) {
		this.maxPage = maxPage;
	}
	public int getPerSize() {
		return perSize;
	}
	public void setPerSize(int perSize) {
		this.perSize = perSize;
	}
	
}
