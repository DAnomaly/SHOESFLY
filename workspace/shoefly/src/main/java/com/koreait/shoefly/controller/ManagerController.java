package com.koreait.shoefly.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.koreait.shoefly.command.manager.SelectListNoticeManagerCommand;
import com.koreait.shoefly.command.manager.SelectOneNoticeManagerCommand;

import lombok.AllArgsConstructor;

@Controller
@RequestMapping("manager")
@AllArgsConstructor
public class ManagerController {

	private SqlSession sqlSession;
	private SelectListNoticeManagerCommand selectListNoticeManagerCommand;
	private SelectOneNoticeManagerCommand selectOneNoticeManagerCommand;
	
	@GetMapping(value= {"/","index.do"})
	public String index() {
		return "manager/index";
	}
	
	@GetMapping("noticeListPage.do")
	public String noticeListPage(
			Model model,
			HttpServletRequest request) {
		model.addAttribute("request", request);
		selectListNoticeManagerCommand.execute(sqlSession, model);
		return "manager/noticeList";
	}

	@GetMapping("noticeInfoPage.do")
	public String noticeInfoPage(
			Model model,
			HttpServletRequest request) {
		model.addAttribute("request", request); 
		selectOneNoticeManagerCommand.execute(sqlSession, model);
		return "manager/noticeInfo";
	}
	
	@GetMapping("faqListPage.do")
	public String faqListPage() {
		return "manager/faqList";
	}
}
