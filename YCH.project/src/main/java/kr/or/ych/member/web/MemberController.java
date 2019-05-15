package kr.or.ych.member.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import kr.or.ych.member.service.MemberSearchVo;
import kr.or.ych.member.service.MemberService;
import kr.or.ych.member.service.MemberVo;

@Controller
@RequestMapping(value = "/member")
public class MemberController {

	private final Logger log = LoggerFactory.getLogger(this.getClass());

	@Autowired
	private MemberService memberService;

	/**
	 * 회원가입 페이지(View)
	 * 
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/memberFront.ch")
	public String insertMemberFront() throws Exception {

		return "member/memberInsertFront";
	}

	/**
	 * 회원가입(Proc)
	 * @param modelAndView
	 * @param memberVo
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/memberInsertProc.ch")
	public ModelAndView insertMemberInfoProc(
				ModelAndView modelAndView,
				@ModelAttribute(name="member") MemberVo memberVo,
				HttpServletRequest request
			) throws Exception{
		
		
		memberVo.setUsrIp(request.getRemoteAddr());
		
		
		log.debug("memberVo : {}", memberVo );
		log.debug("memberVo : {}", memberVo );
		log.debug("memberVo : {}", memberVo );
		log.debug("memberVo : {}", memberVo );
		
		
		
		
		try {
			memberService.insertMemberInfo(memberVo);
			RedirectView redirectView = new RedirectView();
			redirectView.setUrl("/member/memberList.ch");
			modelAndView.setView(redirectView);
		} catch (Exception e) {
			modelAndView.setViewName("/member/memberInsertFront");
			e.printStackTrace();
		}

		return modelAndView;
	}

	/**
	 * 회원목록 가져오기 (select) 
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/memberList.ch")
	public String getMemberListFront(
				Model model,
				@ModelAttribute(name="searchVo") MemberSearchVo searchVo
			) throws Exception{
		
		
		
		MemberVo memberVo = memberService.selectMemberList(searchVo.getSeqNo());
		model.addAttribute("memberList", memberVo);
		
		log.debug("memberList {} :", memberVo);
		log.debug("memberList {} :", memberVo);
		log.debug("memberList {} :", memberVo);
		
		log.debug("searchVo {} :", searchVo);
		
		return "member/memberList";
	}
}
