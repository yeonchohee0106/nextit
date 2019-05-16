package kr.or.ych.member.service;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MemberMapper {

	
	
	/**
	 * 아이디와 비밀번호 입력받아 
	 * 값 있는지
	 * @param memberVo
	 * @return
	 * @throws Exception
	 */
	public MemberVo getLoginInfo(MemberVo memberVo) throws Exception;
	
	
	/**
	 * 회원목록 가져오기
	 * @param searchVo
	 * @return
	 * @throws Exception
	 */
	public List<MemberVo> selectMemberList(MemberSearchVo searchVo) throws Exception;
	
	/**
	 * 회원등록
	 * @param memberVo
	 * @throws Exception
	 */
	public void insertMemberInfo(MemberVo memberVo) throws Exception;
	
	
}
