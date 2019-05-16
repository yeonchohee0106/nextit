package kr.or.ych.member.service;

import java.util.List;

public interface MemberService {

	
	/**
	 * login 아이디 비밀번호를 입력하여 
	 * 해당하는 값이 db에 있는지 
	 * 
	 * @param memberVo
	 * @return
	 * @throws Exception
	 */
	public MemberVo getLoginInfo(MemberVo memberVo) throws Exception;
	
	/**
	 * seqNo값으로 회원리스트 가져오기
	 * @param seqNo
	 * @return
	 * @throws Exception
	 */
	public List<MemberVo> selectMemberList(MemberSearchVo searchVo) throws Exception;
	
	/**
	 * 회원가입(insert)
	 * @param memberVo
	 * @throws Exception
	 */
	public void insertMemberInfo(MemberVo memberVo) throws Exception;
	
}
