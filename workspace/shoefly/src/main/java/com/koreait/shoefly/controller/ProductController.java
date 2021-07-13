package com.koreait.shoefly.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.koreait.shoefly.command.product.SelectAllListCommand;
import com.koreait.shoefly.command.product.SelectConditionCommand;

import lombok.AllArgsConstructor;

@Controller
@RequestMapping("product")
@AllArgsConstructor
public class ProductController {

	private SqlSession sqlSession;
	private SelectAllListCommand selectAllListCommand;
	private SelectConditionCommand selectConditionCommand;
	
	@GetMapping("listPage.do")
	public String listPage(HttpServletRequest request,
						   Model model) {
		model.addAttribute("request", request);
		selectAllListCommand.execute(sqlSession, model);
		return "product/list";
	}
		
	@PostMapping("selectCondition.do")
	public String selectCondition(HttpServletRequest request,
								  Model model) {
		model.addAttribute("request", request);
		selectConditionCommand.execute(sqlSession, model);
		return "product/list";
	}
}
