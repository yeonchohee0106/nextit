package kr.or.ych.member.service;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MemberMapper {

	
	public MemberVo selectMemberList(String seqNo) throws Exception;
	
	/**
	 * 회원등록
	 * @param memberVo
	 * @throws Exception
	 */
	public void insertMemberInfo(MemberVo memberVo) throws Exception;
	
	
}
