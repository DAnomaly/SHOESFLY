package com.koreait.shoefly.controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

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
}
