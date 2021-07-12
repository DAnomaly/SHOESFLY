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

import com.koreait.shoefly.command.member.IdCheckCommand;
import com.koreait.shoefly.command.member.LoginCommand;
import com.koreait.shoefly.command.member.LogoutCommand;
import com.koreait.shoefly.command.member.VerifyCodeCommand;

import lombok.AllArgsConstructor;

@Controller
@RequestMapping("member")
@AllArgsConstructor
public class MemberController {

	// field
	private SqlSession sqlSession;
	
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
	
	// 로그인
	@PostMapping("login.do")
	public String login(HttpServletRequest request,
						Model model) {
		model.addAttribute("request", request);
		LoginCommand loginCommand = new LoginCommand();
		loginCommand.execute(sqlSession, model);
		
		return "redirect:/";
	}
	
	// 로그아웃
	@GetMapping("logout.do")
	public String logout(HttpSession session,
						 Model model) {
		model.addAttribute("session", session);
		LogoutCommand logoutCommand = new LogoutCommand();
		logoutCommand.execute(sqlSession, model);
		
		return "redirect:/";
	}
	
	// 아이디 중복검사
	@GetMapping(value="idCheck.do", 
				produces="application/json; utf-8")
	@ResponseBody
	public Map<String, Object> idCheck(HttpServletRequest request,
									   Model model) {
		model.addAttribute("request", request);
		IdCheckCommand idCheckCommand = new IdCheckCommand();
		
		return idCheckCommand.execute(sqlSession, model);
	}
	
	// 이메일 인증코드 발송
	@GetMapping(value="verifyCode.do",
				produces="application/json; utf-8")
	@ResponseBody
	public Map<String, Object> verifyCode(HttpServletRequest request,
										  Model model){
		model.addAttribute("request", request);
		VerifyCodeCommand verifyCodeCommand = new VerifyCodeCommand();
		return verifyCodeCommand.execute(sqlSession, model);
	}
	
}
