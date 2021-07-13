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
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.koreait.shoefly.command.review.InsertReviewCommand;
import com.koreait.shoefly.command.review.SelectListReviewCommand;
import com.koreait.shoefly.command.review.SelectProductCommand;
import com.koreait.shoefly.command.review.SelectReviewCommand;

import lombok.AllArgsConstructor;

@Controller
@RequestMapping("review")
@AllArgsConstructor
public class ReviewController {

	private SqlSession sqlSession;
	private SelectListReviewCommand selectListReviewCommand;
	private SelectProductCommand selectProductCommand;
	private InsertReviewCommand insertReviewCommand;
	private SelectReviewCommand selectReviewCommand;

	@GetMapping("reviewListPage.do")
	public String listPage(HttpServletRequest request, Model model) {
		model.addAttribute("request", request);
		selectListReviewCommand.execute(sqlSession, model);
		return "review/list";
	}
	
	@GetMapping("insertReviewPage.do")
	public String inserinsertReviewPage() {
		return "review/insertReviewPage";
	}
	
	@PostMapping(value="selectProduct.do", produces="application/json; charset=utf-8")
	@ResponseBody
	public Map<String, Object> selectProduct(Model model) {
		return selectProductCommand.execute(sqlSession, model);
	}
	
	@PostMapping(value="insertReview.do")
	public String insertReview(MultipartHttpServletRequest multipartRequest, Model model) {
		model.addAttribute("multipartRequest", multipartRequest);
		insertReviewCommand.execute(sqlSession, model);
		return "redirect:reviewListPage.do";
	}
	
	@GetMapping(value="selectReview.do") 
	public String selectReview(HttpServletRequest request, Model model) {
		model.addAttribute("request", request);
		selectReviewCommand.execute(sqlSession, model);
		return "review/selectReview";
	}
	
	
}
