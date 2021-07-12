package com.koreait.shoefly.controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.AllArgsConstructor;

@Controller
@RequestMapping("manager")
@AllArgsConstructor
public class ManagerController {

	private SqlSession sqlSession;
	
	@GetMapping(value= {"/","index.do"})
	public String index() {
		return "manager/index";
	}
	
}
