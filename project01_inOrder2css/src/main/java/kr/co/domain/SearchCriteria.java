package kr.co.domain;

public class SearchCriteria extends Criteria{

	private String searchType;
	private String keyword;
	private int tab1;
	
	public int getTab1() {
		return tab1;
	}
	public void setTab1(int tab1) {
		this.tab1 = tab1;
	}
	public String getSearchType() {
		return searchType;
	}
	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	@Override
	public String toString() {
		return super.toString() + " SearchCriteria [searchType=" + searchType + ", keyword="
				+ keyword + "]";
	}
}


