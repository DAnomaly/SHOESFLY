package com.koreait.shoefly.controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.AllArgsConstructor;

@Controller
@RequestMapping("notice")
@AllArgsConstructor
public class NoticeController {

	private SqlSession sqlSession;
	
	@GetMapping("noticeListPage.do")
	public String noticeListPage() {
		return "notice/noticeList";
	}
	
	@GetMapping("faqListPage.do")
	public String faqListPage() {
		return "notice/faqList";
	}
	
}
