package kr.or.ych.member.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.ych.member.service.MemberMapper;
import kr.or.ych.member.service.MemberSearchVo;
import kr.or.ych.member.service.MemberService;
import kr.or.ych.member.service.MemberVo;


@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	private MemberMapper memberMapper;
	
	@Override
	public void insertMemberInfo(MemberVo memberVo) throws Exception {
		
		memberMapper.insertMemberInfo(memberVo);
	}
	
	
	@Override
	public List<MemberVo> selectMemberList(MemberSearchVo searchVo) throws Exception {

		List<MemberVo> memberList = memberMapper.selectMemberList(searchVo);
		
		return memberList;
	}


	@Override
	public MemberVo getLoginInfo(MemberVo memberVo) throws Exception {

		return memberMapper.getLoginInfo(memberVo);
	}
}
