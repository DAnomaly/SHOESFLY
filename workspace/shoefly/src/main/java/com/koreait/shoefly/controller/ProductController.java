package com.koreait.shoefly.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.koreait.shoefly.command.product.SelectBuyApplicationCommand;
import com.koreait.shoefly.command.product.SelectBuyCompleteCommand;
import com.koreait.shoefly.command.product.SelectBuyNowCommand;
import com.koreait.shoefly.command.product.InsertBuyApplicationCommand;
import com.koreait.shoefly.command.product.InsertBuyCommand;
import com.koreait.shoefly.command.product.InsertSellApplicationCommand;
import com.koreait.shoefly.command.product.InsertSellCommand;
import com.koreait.shoefly.command.product.SelectAllListCommand;
import com.koreait.shoefly.command.product.SelectConditionCommand;
import com.koreait.shoefly.command.product.SelectPriceBySizeCommand;
import com.koreait.shoefly.command.product.SelectProductByProductNoCommand;
import com.koreait.shoefly.command.product.SelectSellApplicationCommand;
import com.koreait.shoefly.command.product.SelectSellCompleteCommand;
import com.koreait.shoefly.command.product.SelectSellNowCommand;

import lombok.AllArgsConstructor;

@Controller
@RequestMapping("product")
@AllArgsConstructor
public class ProductController {

	private SqlSession sqlSession;
	private SelectAllListCommand selectAllListCommand;
	private SelectConditionCommand selectConditionCommand;
	private SelectProductByProductNoCommand selectProductByProductNoCommand;
	private SelectPriceBySizeCommand selectPriceBySizeCommand;
	private SelectBuyApplicationCommand selectBuyApplicationCommand;
	private SelectSellApplicationCommand selectSellApplicationCommand;
	private InsertBuyApplicationCommand insertBuyApplicationCommand;
	private SelectBuyNowCommand selectBuyNowCommand;
	private SelectSellNowCommand selectSellNowCommand;
	private InsertSellApplicationCommand insertSellApplicationCommand;
	private InsertBuyCommand insertBuyCommand;
	private InsertSellCommand insertSellCommand;
	private SelectSellCompleteCommand selectSellCompleteCommand;
	private SelectBuyCompleteCommand selectBuyCompleteCommand;
	
	//?????? ?????? ?????? ??????
	@GetMapping("productListPage.do")
	public String listPage(HttpServletRequest request,
						   Model model) {
		model.addAttribute("request", request);
		selectAllListCommand.execute(sqlSession, model);
		return "product/productList";
	}
	//?????? ?????? ????????? ?????? ??????(??????, ?????????, ?????????, ????????????)
	@GetMapping("selectCondition.do")
	public String selectCondition(HttpServletRequest request,
								  Model model) {
		model.addAttribute("request", request);
		selectConditionCommand.execute(sqlSession, model);
		return "product/productList";
	}
	
	//?????? ?????? ???????????? ??????
	@GetMapping("viewProductPage.do")
	public String viewProductPage(HttpServletRequest request,
								  Model model) {
		model.addAttribute("request", request);
		selectProductByProductNoCommand.execute(sqlSession, model);
		return "product/productView";
	}
	
	//AJAX??????_?????? ????????? ????????? ???????????????, ??????????????? ??????
	@GetMapping(value="selectPriceBySize.do", produces="application/json; charset=utf-8")
	@ResponseBody
	public Map<String, Object> selectPriceBySize(HttpServletRequest request,
												 HttpSession session,
												 Model model){
		model.addAttribute("request", request);
		model.addAttribute("session", session);
		return selectPriceBySizeCommand.execute(sqlSession, model);
	}
	
	//?????????????????????
	@PostMapping("buyNow.do")
	public String buy(HttpServletRequest request,
					  HttpSession session,
				      Model model) {
		model.addAttribute("request", request);
		model.addAttribute("session", session);
		selectBuyNowCommand.execute(sqlSession, model);
		return "product/buyNow";
	}
	
	//?????????????????????
	@PostMapping("sellNow.do")
	public String sellNow(HttpServletRequest request,
			 			  HttpSession session,
						  Model model) {
		model.addAttribute("request", request);
		model.addAttribute("session", session);
		selectSellNowCommand.execute(sqlSession, model);
		return "product/sellNow";
	}
	
	//??????????????? ??????
	@PostMapping("buyApplication.do")
	public String buyApplication(HttpServletRequest request,
								 HttpSession session,
			   					 Model model) {
		model.addAttribute("request", request);
		model.addAttribute("session", session);
		selectBuyApplicationCommand.execute(sqlSession, model);
		return "product/buyApplication";
	}
	
	//??????????????? ??????
	@PostMapping("sellApplication.do")
	public String sellApplication(HttpServletRequest request,
								  HttpSession session,
				   				  Model model) {
		model.addAttribute("request", request);
		model.addAttribute("session", session);
		selectSellApplicationCommand.execute(sqlSession, model);
		return "product/sellApplication";
	}
	
	/**
	 * ?????? ????????? ?????????
	 *
	 * @author ?????????
	 * @return
	 */
	@RequestMapping("jusoPopup.do")
	public String jsuoPopup() {
		return "common/jusoPopup";
	}
	
	//??????????????? ??????
	@PostMapping("insertBuyApplication.do")
	public String insertBuyApplication(HttpServletRequest request,
									   HttpServletResponse response,
			 						   Model model) {
		model.addAttribute("request", request);
		model.addAttribute("response", response);
		insertBuyApplicationCommand.execute(sqlSession, model);
		return null;
	}
	
	//??????????????? ??????
	@PostMapping("insertSellApplication.do")
	public String insertSellApplication(HttpServletRequest request,
									    HttpServletResponse response,
			 						    Model model) {
		model.addAttribute("request", request);
		model.addAttribute("response", response);
		insertSellApplicationCommand.execute(sqlSession, model);
		return null;
	}
	
	//??????
	@PostMapping("buy.do")
	public String buy(HttpServletRequest request,
					  HttpServletResponse response,
					  HttpSession session,
					  Model model) {
		model.addAttribute("request", request);
		model.addAttribute("response", response);
		model.addAttribute("session", session);
		insertBuyCommand.execute(sqlSession, model);
		return null;
	}

	//??????
	@PostMapping("sell.do")
	public String sell(HttpServletRequest request,
					  HttpServletResponse response,
					  HttpSession session,
					  Model model) {
		model.addAttribute("request", request);
		model.addAttribute("response", response);
		model.addAttribute("session", session);
		insertSellCommand.execute(sqlSession, model);
		return null;
	}
	
	//????????????
	@GetMapping("sellComplete.do")
	public String sellComplete(HttpServletRequest request,
							   HttpSession session,
							   Model model) {
		model.addAttribute("request", request);
		model.addAttribute("session", session);
		selectSellCompleteCommand.execute(sqlSession, model);
		return "product/sellComplete";
	}
	
	//????????????
	@GetMapping("buyComplete.do")
	public String buyComplete(HttpServletRequest request,
			   HttpSession session,
			   Model model) {
		model.addAttribute("request", request);
		model.addAttribute("session", session);
		selectBuyCompleteCommand.execute(sqlSession, model);
		return "product/buyComplete";
	}
	
	//???????????????, ??????????????? PopUp
	@GetMapping("applicationInfoPopUp.do")
	public String applicationInfoPopUp() {
		return "product/applicationInfoPopUp";
	}
}
