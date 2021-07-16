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

import com.koreait.shoefly.command.manager.DeleteFaqManagerCommand;
import com.koreait.shoefly.command.manager.DeleteMemberAddressManagerCommand;
import com.koreait.shoefly.command.manager.DeleteMemberManagerCommand;
import com.koreait.shoefly.command.manager.DeleteNoticeManagerCommand;
import com.koreait.shoefly.command.manager.DeleteReviewCommand;
import com.koreait.shoefly.command.manager.InsertOrUpdateFaqManagerCommand;
import com.koreait.shoefly.command.manager.InsertOrUpdateMemberAddressManagerCommand;
import com.koreait.shoefly.command.manager.InsertOrUpdateNoticeManagerCommand;
import com.koreait.shoefly.command.manager.RestoreReviewCommand;
import com.koreait.shoefly.command.manager.SelectListFaqManagerCommand;
import com.koreait.shoefly.command.manager.SelectListMemberAddressManagerCommand;
import com.koreait.shoefly.command.manager.SelectListMemberManagerCommand;
import com.koreait.shoefly.command.manager.SelectListNoticeManagerCommand;
import com.koreait.shoefly.command.manager.SelectListProductManagerCommand;
import com.koreait.shoefly.command.manager.SelectListReviewCommand;
import com.koreait.shoefly.command.manager.SelectOneFaqManagerCommand;
import com.koreait.shoefly.command.manager.SelectOneMemberManagerCommand;
import com.koreait.shoefly.command.manager.SelectOneNoticeManagerCommand;
import com.koreait.shoefly.command.manager.SelectOneProductManagerCommand;
import com.koreait.shoefly.command.manager.UpdateMemberPwManagerCommand;
import com.koreait.shoefly.command.manager.UpdateProdcutStateManagerCommand;

import lombok.AllArgsConstructor;

@Controller
@RequestMapping("manager")
@AllArgsConstructor
public class ManagerController {

	// SQL
	private SqlSession sqlSession;
	// MEMBER
	private SelectListMemberManagerCommand selectListMemberManagerCommand;
	private SelectOneMemberManagerCommand selectOneMemberManagerCommand;
	private DeleteMemberManagerCommand deleteMemberManagerCommand;
	private SelectListMemberAddressManagerCommand selectListMemberAddressManagerCommand;
	private InsertOrUpdateMemberAddressManagerCommand insertOrUpdateMemberAddressManagerCommand;
	private DeleteMemberAddressManagerCommand deleteMemberAddressManagerCommand;
	private UpdateMemberPwManagerCommand updateMemberPwManagerCommand;
	// PRODUCT
	private SelectListProductManagerCommand selectListProductManagerCommand;
	private SelectOneProductManagerCommand selectOneProductManagerCommand;
	private UpdateProdcutStateManagerCommand updateProdcutStateManagerCommand;
	// NOTICE
	private SelectListNoticeManagerCommand selectListNoticeManagerCommand;
	private SelectOneNoticeManagerCommand selectOneNoticeManagerCommand;
	private InsertOrUpdateNoticeManagerCommand insertOrUpdateNoticeManagerCommand;
	private DeleteNoticeManagerCommand deleteNoticeManagerCommand;
	// FAQ
	private SelectListFaqManagerCommand selectListFaqManagerCommand;
	private SelectOneFaqManagerCommand selectOneFaqMangerCommand;
	private InsertOrUpdateFaqManagerCommand insertOrUpdateFaqManagerCommand;
	private DeleteFaqManagerCommand deleteFaqManagerCommand;
	// REVIEW
	private SelectListReviewCommand selectListReviewCommand;
	private DeleteReviewCommand deleteReviewCommand;
	private RestoreReviewCommand restoreReviewCommand;
	
	
	// INDEX
	@GetMapping(value= {"/","index.do"})
	public String index() {
		return "manager/index";
	}
	
	// MEMBER
	@GetMapping(value="memberListPage.do")
	public String memberListPage() {
		return "manager/memberList";
	}
	
	@ResponseBody
	@PostMapping(value="memberList.do",
				 produces="application/json; charset=UTF-8")
	public Map<String, Object> memberList(
			Model model,
			HttpServletRequest request) {
		model.addAttribute("request", request);
		return selectListMemberManagerCommand.execute(sqlSession, model);
	}
	
	@GetMapping(value="memberInfoPage.do")
	public String memberInfoPage(
			Model model,
			HttpServletRequest request) {
		model.addAttribute("request", request);
		selectOneMemberManagerCommand.execute(sqlSession, model);
		return "manager/memberInfo";
	}
	
	@ResponseBody
	@GetMapping(value="deleteMember.do",
			 	produces="application/json; charset=UTF-8")
	public Map<String, Object> deleteMember(
			Model model,
			HttpServletRequest request) {
		model.addAttribute("request", request);
		return deleteMemberManagerCommand.execute(sqlSession, model);
	}
	
	@GetMapping(value="memberAddressPage.do")
	public String selectListAddress(
			Model model,
			HttpServletRequest request) {
		model.addAttribute("request", request);
		selectListMemberAddressManagerCommand.execute(sqlSession, model);
		return "manager/memberAddress";
	}
	
	@ResponseBody
	@PostMapping(value="updateMemberAddress.do",
			    produces="text/html; charset=UTF-8")
	public String updateAddress(
			Model model,
			HttpServletRequest request) {
		model.addAttribute("request", request);
		return insertOrUpdateMemberAddressManagerCommand.execute(sqlSession, model).get("response").toString(); 
	}
	
	@ResponseBody
	@GetMapping(value="deleteMemberAddress.do",
			    produces="text/html; charset=UTF-8")
	public String deleteAddress(
			Model model,
			HttpServletRequest request) {
		model.addAttribute("request", request);
		return deleteMemberAddressManagerCommand.execute(sqlSession, model).get("response").toString();
	}
	
	@ResponseBody
	@GetMapping(value="updateMemberPw.do",
		    produces="text/html; charset=UTF-8")
	public String updateMemberPw(
			Model model,
			HttpServletRequest request) {
		model.addAttribute("request", request);
		return updateMemberPwManagerCommand.execute(sqlSession, model).get("response").toString();
	}
	
	// PRODUCT
	@GetMapping(value="productListPage.do")
	public String productListPage() {
		return "manager/productList";
	}
	
	@ResponseBody
	@GetMapping(value="selectListProduct.do",
				produces="application/json; charset=UTF-8")
	public Map<String, Object> selectListProduct(
			Model model,
			HttpServletRequest request) {
		model.addAttribute("request", request);
		return selectListProductManagerCommand.execute(sqlSession, model);
	}

	@GetMapping(value="productInfoPage.do")
	public String productInfoPage(
			Model model,
			HttpServletRequest request) {
		model.addAttribute("request", request);
		selectOneProductManagerCommand.execute(sqlSession, model);
		return "manager/productInfo";
	}
	
	@GetMapping(value="updateProductState.do")
	public String updateProductState(
			Model model,
			HttpServletRequest request) {
		model.addAttribute("request", request);
		updateProdcutStateManagerCommand.execute(sqlSession, model);
		return "redirect:productInfoPage.do?no=" + request.getParameter("no");
	}
	
	// NOTICE
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
	
	// FAQ
	@GetMapping("faqListPage.do")
	public String faqListPage(
			Model model,
			HttpServletRequest request) {
		model.addAttribute("request", request);
		selectListFaqManagerCommand.execute(sqlSession, model);
		return "manager/faqList";
	}
	
	@GetMapping("faqInfoPage.do")
	public String faqInfoPage(
			Model model,
			HttpServletRequest request) {
		model.addAttribute("request", request); 
		selectOneFaqMangerCommand.execute(sqlSession, model);
		return "manager/faqInfo";
	}

	@ResponseBody
	@PostMapping(value="insertFaq.do",
				 produces="application/json; charset=UTF-8")
	public Map<String, Object> insertFaq(
			Model model,
			HttpServletRequest request) {
		model.addAttribute("request", request);
		return insertOrUpdateFaqManagerCommand.execute(sqlSession, model);
	}
	
	@ResponseBody
	@PostMapping(value="deleteFaq.do",
				 produces="application/json; charset=UTF-8")
	public Map<String, Object> deleteFaq(
			Model model,
			HttpServletRequest request) {
		model.addAttribute("request", request);
		return deleteFaqManagerCommand.execute(sqlSession, model);
	}
	
	// REVIEW
	@GetMapping("reviewListPage.do")
	public String reviewListPage(HttpServletRequest request,
								 Model model) {
		model.addAttribute("request", request);
		selectListReviewCommand.execute(sqlSession, model);
		return "manager/reviewList";
	}
	
	@GetMapping("deleteReview.do")
	public String deleteReview(HttpServletRequest request,
							   Model model) {
		model.addAttribute("request", request);
		deleteReviewCommand.execute(sqlSession, model);
		return "redirect:reviewListPage.do";
	}
	
	@GetMapping("restoreReview.do")
	public String restoreReview(HttpServletRequest request,
								Model model) {
		model.addAttribute("request", request);
		restoreReviewCommand.execute(sqlSession, model);
		return "redirect:reviewListPage.do";
	}
}
