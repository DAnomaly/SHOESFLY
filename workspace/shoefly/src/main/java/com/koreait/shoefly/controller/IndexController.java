package com.koreait.shoefly.controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.AllArgsConstructor;

@Controller
@AllArgsConstructor
public class IndexController {
	
	// field
	private SqlSession sqlSession;

	// mapping
	@GetMapping("/")
	public String index() {
		return "index";
	}
	
}
