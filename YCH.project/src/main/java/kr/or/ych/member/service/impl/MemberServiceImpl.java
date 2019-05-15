package kr.or.ych.member.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.ych.member.service.MemberMapper;
import kr.or.ych.member.service.MemberService;
import kr.or.ych.member.service.MemberVo;


@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	private MemberMapper mapper;
	
	@Override
	public void insertMemberInfo(MemberVo memberVo) throws Exception {
		
			mapper.insertMemberInfo(memberVo);
	}
	
	
	@Override
	public MemberVo selectMemberList(String seqNo) throws Exception {

		MemberVo memberVo = mapper.selectMemberList(seqNo);
		
		return memberVo;
	}
}
