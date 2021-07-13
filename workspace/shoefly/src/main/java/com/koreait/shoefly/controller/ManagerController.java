package com.koreait.shoefly.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.koreait.shoefly.command.manager.DeleteNoticeManagerCommand;
import com.koreait.shoefly.command.manager.InsertOrUpdateNoticeManagerCommand;
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
	private InsertOrUpdateNoticeManagerCommand insertOrUpdateNoticeManagerCommand;
	private DeleteNoticeManagerCommand deleteNoticeManagerCommand;
	
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
	
	@ResponseBody
	@PostMapping(value="insertNotice.do",
				 produces="application/json; charset=UTF-8")
	public Map<String, Object> insertNotice(
			Model model,
			HttpServletRequest request) {
		model.addAttribute("request", request);
		return insertOrUpdateNoticeManagerCommand.execute(sqlSession, model);
	}

	@ResponseBody
	@PostMapping(value="deleteNotice.do",
				 produces="application/json; charset=UTF-8")
	public Map<String, Object> deleteNotice(
			Model model,
			HttpServletRequest request){
		model.addAttribute("request", request);
		return deleteNoticeManagerCommand.execute(sqlSession, model);
	}
	
	
	@GetMapping("faqListPage.do")
	public String faqListPage() {
		return "manager/faqList";
	}
}
