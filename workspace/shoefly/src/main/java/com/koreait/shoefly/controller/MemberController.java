package com.koreait.shoefly.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.koreait.shoefly.command.member.DeleteAddressCommand;
import com.koreait.shoefly.command.member.DeleteMemberCommand;
import com.koreait.shoefly.command.member.EmailOrCheckCommand;
import com.koreait.shoefly.command.member.FindIdCommand;
import com.koreait.shoefly.command.member.FindPwCommand;
import com.koreait.shoefly.command.member.IdCheckCommand;
import com.koreait.shoefly.command.member.IdExistsCommand;
import com.koreait.shoefly.command.member.JoinCommand;
import com.koreait.shoefly.command.member.LoginCommand;
import com.koreait.shoefly.command.member.LogoutCommand;
import com.koreait.shoefly.command.member.SelectAddrListCommand;
import com.koreait.shoefly.command.member.UpdateAddressCommand;
import com.koreait.shoefly.command.member.UpdateAddressListCommand;
import com.koreait.shoefly.command.member.UpdateNameCommand;
import com.koreait.shoefly.command.member.UpdatePwCommand;
import com.koreait.shoefly.command.member.VerifyCodeCommand;

import lombok.AllArgsConstructor;

@Controller
@RequestMapping("member")
@AllArgsConstructor
public class MemberController {

	// field
	private SqlSession sqlSession;
	private LoginCommand loginCommand;
	private LogoutCommand logoutCommand;
	private IdCheckCommand idCheckCommand;
	private VerifyCodeCommand verifyCodeCommand;
	private JoinCommand joinCommand;
	private EmailOrCheckCommand emailOrCheckCommand;
	private FindIdCommand findIdCommand;
	private FindPwCommand findPwCommand;
	private IdExistsCommand idExistsCommand;
	private UpdatePwCommand updatePwCommand;
	private DeleteMemberCommand deleteMemberCommand;
	private UpdateNameCommand updateNameCommand;
	private SelectAddrListCommand selectAddrListCommand;
	private UpdateAddressListCommand updateAddressListCommand;
	private UpdateAddressCommand updateAddressCommand;
	private DeleteAddressCommand deleteAddressCommand;
	
	// 페이지 이동
	@GetMapping("loginPage.do")
	public String loginPage() {
		return "member/login";
	}
	
	@GetMapping("joinPage.do")
	public String joinPage() {
		return "member/join";
	}
	
	@GetMapping("myPage.do")
	public String myPage() {
		return "member/my";
	}
	
	@GetMapping("findIdPage.do")
	public String findIdPage() {
		return "member/findId";
	}
	
	@GetMapping("findPwPage.do")
	public String findPwPage() {
		return "member/findPw";
	}
	
	@GetMapping("updatePwPage.do")
	public String updatePwPage(
			Model model,
			HttpSession session) {
		model.addAttribute("findMember", session.getAttribute("loginMember"));
		return "member/changePw";
	}
	
	@GetMapping("addressPage.do")
	public String addressPage() {
		return "member/address";
	}
	
	@GetMapping("insertAddress.do")
	public String insertAddress() {
		return "member/insertAddr";
	}
	
	// 로그인
	@PostMapping("login.do")
	public String login(HttpServletRequest request,
						Model model) {
		model.addAttribute("request", request);
		loginCommand.execute(sqlSession, model);		
		return "redirect:/";
	}
	
	// 로그아웃
	@GetMapping("logout.do")
	public String logout(HttpSession session,
						 Model model) {
		model.addAttribute("session", session);		
		logoutCommand.execute(sqlSession, model);		
		return "redirect:/";
	}
	
	// 아이디 중복검사
	@GetMapping(value="idCheck.do", 
				produces="application/json; charset=utf-8")
	@ResponseBody
	public Map<String, Object> idCheck(HttpServletRequest request,
									   Model model) {
		model.addAttribute("request", request);	
		return idCheckCommand.execute(sqlSession, model);
	}
	
	// 이메일 중복검사
	@GetMapping(value="emailOrCheck.do",
				produces="application/json; charset=utf-8")
	@ResponseBody
	public Map<String, Object> emailOrCheck(HttpServletRequest request,
											Model model) {
		model.addAttribute("request", request);
		return emailOrCheckCommand.execute(sqlSession, model);
	}
	
	// 이메일 인증코드 발송
	@GetMapping(value="verifyCode.do",
				produces="application/json; charset=utf-8")
	@ResponseBody
	public Map<String, Object> verifyCode(HttpServletRequest request,
										  Model model){
		model.addAttribute("request", request);				
		return verifyCodeCommand.execute(sqlSession, model);
	}
	
	// 회원가입
	@PostMapping("join.do")
	public String join(HttpServletRequest request,
					   Model model) {
		model.addAttribute("request", request);
		joinCommand.execute(sqlSession, model);
		return "redirect:/";
	}
	
	// 아이디 찾기
	@PostMapping("findId.do")
	public String findId(HttpServletRequest request,
						 Model model) {
		model.addAttribute("request", request);
		findIdCommand.execute(sqlSession, model);
		return "member/findIdResult";
	}
	
	// 아이디 존재여부
	@GetMapping(value="idExists.do",
				produces="application/json; charset=utf-8")
	@ResponseBody
	public Map<String, Object> idExists(HttpServletRequest request,
										Model model){
		model.addAttribute("request", request);
		return idExistsCommand.execute(sqlSession, model);
	}
	
	
	// 비밀번호 찾기
	@PostMapping("findPw.do")
	public String findPw(HttpServletRequest request,
						 Model model) {
		model.addAttribute("request", request);
		findPwCommand.execute(sqlSession, model);
		return "member/changePw";	
	}
	
	// 비밀번호 변경
	@PostMapping("updatePw.do")
	public String updatePw(HttpServletRequest request,
						   Model model) {
		model.addAttribute("request", request);
		updatePwCommand.execute(sqlSession, model);
		return "index";
	}
	
	// 회원탈퇴
	@GetMapping("deleteMember.do")
	public String deleteMember(HttpServletRequest request,
							   Model model) {
		model.addAttribute("request", request);
		deleteMemberCommand.execute(sqlSession, model);
		return "index";
	}
	
	// 이름 변경
	@PostMapping("updateName.do")
	public String updateName(HttpServletRequest request,
							 Model model) {
		model.addAttribute("request", request);
		updateNameCommand.execute(sqlSession, model);
		return "index";
	}
	
	// 주소 리스트 가져오기
	@PostMapping(value="selectAddressList.do",
				produces="application/json; charset=utf-8")
	@ResponseBody
	public Map<String, Object> selectAddrList(HttpServletRequest request,
											  Model model) {
		model.addAttribute("request", request);
		return selectAddrListCommand.execute(sqlSession, model);
	}
	
	// 주소 수정 리스트 가져오기
	@GetMapping("updateAddressList.do")
	public String updateAddressList(HttpServletRequest request,
												 Model model) {
		model.addAttribute("request", request);
		updateAddressListCommand.execute(sqlSession, model);
		return "member/updateAddress";
	}
	
	// 주소 수정
	@PostMapping("updateAddress.do")
	public String updateAddress(HttpServletRequest request,
							    Model model) {
		model.addAttribute("request", request);
		updateAddressCommand.execute(sqlSession, model);
		return "redirect:myPage.do";
	}
	
	// 주소 삭제
	@GetMapping("deleteAddress.do")
	public String deleteAddress(HttpServletRequest request,
								Model model) {
		model.addAttribute("request", request);
		deleteAddressCommand.execute(sqlSession, model);
		return "redirect:myPage.do";
	}
}
