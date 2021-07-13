package com.koreait.shoefly.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.koreait.shoefly.command.review.SelectListReviewCommand;

import lombok.AllArgsConstructor;

@Controller
@RequestMapping("review")
@AllArgsConstructor
public class ReviewController {

	private SqlSession sqlSession;
	private SelectListReviewCommand selectListReviewCommand;

	@GetMapping("reviewListPage.do")
	public String listPage(HttpServletRequest request, Model model) {
		model.addAttribute("request", request);
		selectListReviewCommand.execute(sqlSession, model);
		return "review/list";
	}
	
	
	
	
}
