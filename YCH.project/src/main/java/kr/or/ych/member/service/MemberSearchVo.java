package kr.or.ych.member.service;

import org.apache.commons.lang3.builder.ToStringBuilder;

public class MemberSearchVo {

	
	private String searchType;
	private String searchText;
	private String seqNo;
	
	
	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this.getClass());
	}

	public String getSearchType() {
		return searchType;
	}

	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}

	public String getSearchText() {
		return searchText;
	}

	public void setSearchText(String searchText) {
		this.searchText = searchText;
	}

	public String getSeqNo() {
		return seqNo;
	}

	public void setSeqNo(String seqNo) {
		this.seqNo = seqNo;
	}
	
	
}
