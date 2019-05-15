package kr.or.ych.member.service;

import java.util.List;

public interface MemberService {

	
	/**
	 * seqNo값으로 회원리스트 가져오기
	 * @param seqNo
	 * @return
	 * @throws Exception
	 */
	public MemberVo selectMemberList(String seqNo) throws Exception;
	
	/**
	 * 회원가입(insert)
	 * @param memberVo
	 * @throws Exception
	 */
	public void insertMemberInfo(MemberVo memberVo) throws Exception;
	
}
