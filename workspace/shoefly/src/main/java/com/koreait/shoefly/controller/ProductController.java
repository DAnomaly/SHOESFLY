package com.koreait.shoefly.controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.AllArgsConstructor;

@Controller
@RequestMapping("product")
@AllArgsConstructor
public class ProductController {

	private SqlSession sqlSession;
	
	@GetMapping("listPage.do")
	public String listPage() {
		return "product/list";
	}
	
}
