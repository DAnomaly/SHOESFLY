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

import com.koreait.shoefly.command.product.SelectAllListCommand;
import com.koreait.shoefly.command.product.SelectConditionCommand;
import com.koreait.shoefly.command.product.SelectPriceBySizeCommand;
import com.koreait.shoefly.command.product.SelectProductByProductNo;

import lombok.AllArgsConstructor;

@Controller
@RequestMapping("product")
@AllArgsConstructor
public class ProductController {

	private SqlSession sqlSession;
	private SelectAllListCommand selectAllListCommand;
	private SelectConditionCommand selectConditionCommand;
	private SelectProductByProductNo selectProductByProductNo;
	private SelectPriceBySizeCommand selectPriceBySizeCommand;
	//전체 상품 종류 조회
	@GetMapping("listPage.do")
	public String listPage(HttpServletRequest request,
						   Model model) {
		model.addAttribute("request", request);
		selectAllListCommand.execute(sqlSession, model);
		return "product/list";
	}
	//제품 선택 조건에 따른 조회(검색, 브랜드, 사이즈, 가격범위)
	@PostMapping("selectCondition.do")
	public String selectCondition(HttpServletRequest request,
								  Model model) {
		model.addAttribute("request", request);
		selectConditionCommand.execute(sqlSession, model);
		return "product/list";
	}
	
	//제품 상세 페이지로 이동
	@GetMapping("viewProductPage.do")
	public String viewProductPage(HttpServletRequest request,
								  Model model) {
		model.addAttribute("request", request);
		selectProductByProductNo.execute(sqlSession, model);
		return "product/productView";
	}
	
	//제품 사이즈 선택시 즉시판매가, 즉시구매가 조회
	@PostMapping(value = "selectPriceBySize.do", produces = "application/json; charset=utf-8")
	@ResponseBody
	public Map<String, Object> selectPriceBySize(HttpServletRequest request,
												 Model model){
		model.addAttribute("request", request);
		return selectPriceBySizeCommand.execute(sqlSession, model);
	}
}
