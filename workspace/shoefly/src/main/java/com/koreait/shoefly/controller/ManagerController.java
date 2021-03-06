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
import com.koreait.shoefly.command.manager.DeleteMemberManagerCommand;
import com.koreait.shoefly.command.manager.DeleteNoticeManagerCommand;
import com.koreait.shoefly.command.manager.DeleteProductManagerCommand;
import com.koreait.shoefly.command.manager.DeleteReviewManagerCommand;
import com.koreait.shoefly.command.manager.InsertOrUpdateFaqManagerCommand;
import com.koreait.shoefly.command.manager.InsertOrUpdateNoticeManagerCommand;
import com.koreait.shoefly.command.manager.RestoreReviewManagerCommand;
import com.koreait.shoefly.command.manager.SelectListFaqManagerCommand;
import com.koreait.shoefly.command.manager.SelectListMemberAddressManagerCommand;
import com.koreait.shoefly.command.manager.SelectListMemberManagerCommand;
import com.koreait.shoefly.command.manager.SelectListNoticeManagerCommand;
import com.koreait.shoefly.command.manager.SelectListProductBuyManagerCommand;
import com.koreait.shoefly.command.manager.SelectListProductManagerCommand;
import com.koreait.shoefly.command.manager.SelectListProductSellManagerCommand;
import com.koreait.shoefly.command.manager.SelectListReviewManagerCommand;
import com.koreait.shoefly.command.manager.SelectOneFaqManagerCommand;
import com.koreait.shoefly.command.manager.SelectOneMemberAddressManagerCommand;
import com.koreait.shoefly.command.manager.SelectOneMemberManagerCommand;
import com.koreait.shoefly.command.manager.SelectOneNoticeManagerCommand;
import com.koreait.shoefly.command.manager.SelectOneProductManagerCommand;
import com.koreait.shoefly.command.manager.UpdateMemberPwManagerCommand;
import com.koreait.shoefly.command.manager.UpdateProdcutStateManagerCommand;
import com.koreait.shoefly.command.manager.UpdateProductBuyStateManagerCommand;
import com.koreait.shoefly.command.manager.UpdateProductSellStateManagerCommand;

import lombok.AllArgsConstructor;

/**
 * ????????? ????????? ????????????
 * 
 * @author ?????????
 */
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
	private UpdateMemberPwManagerCommand updateMemberPwManagerCommand;
	// PRODUCT
	private SelectListProductManagerCommand selectListProductManagerCommand;
	private SelectOneProductManagerCommand selectOneProductManagerCommand;
	private UpdateProdcutStateManagerCommand updateProdcutStateManagerCommand;
	private DeleteProductManagerCommand deleteProductManagerCommand;
	// PRDOCUT BUY
	private SelectListProductBuyManagerCommand selectListProductBuyManagerCommand;
	private SelectOneMemberAddressManagerCommand selectOneMemberAddressManagerCommand;
	private UpdateProductBuyStateManagerCommand updateProductBuyStateManagerCommand;
	// PRODUCT SELL
	private SelectListProductSellManagerCommand selectListProductSellManagerCommand;
	private UpdateProductSellStateManagerCommand updateProductSellStateManagerCommand;
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
	private SelectListReviewManagerCommand selectListReviewCommand;
	private DeleteReviewManagerCommand deleteReviewCommand;
	private RestoreReviewManagerCommand restoreReviewCommand;
	
	
	// MEMBER
	/**
	 * ???????????? ????????? (?????????)
	 */
	@GetMapping(value= {"/","memberListPage.do"})
	public String memberListPage() {
		return "manager/memberList";
	}
	
	/**
	 * ?????? ??????/?????? ????????? ??????
	 * 
	 * @see SelectListMemberManagerCommand
	 */
	@ResponseBody
	@PostMapping(value="memberList.do",
				 produces="application/json; charset=UTF-8")
	public Map<String, Object> memberList(
			Model model,
			HttpServletRequest request) {
		model.addAttribute("request", request);
		return selectListMemberManagerCommand.execute(sqlSession, model);
	}
	
	/**
	 * ???????????? ????????? (??????)
	 */
	@GetMapping(value="memberInfoPage.do")
	public String memberInfoPage(
			Model model,
			HttpServletRequest request) {
		model.addAttribute("request", request);
		selectOneMemberManagerCommand.execute(sqlSession, model);
		return "manager/memberInfo";
	}
	
	/**
	 * ?????? ????????????<br>
	 * ?????? JSON?????? ??????
	 * 
	 * @see DeleteMemberManagerCommand
	 */
	@ResponseBody
	@GetMapping(value="deleteMember.do",
			 	produces="application/json; charset=UTF-8")
	public Map<String, Object> deleteMember(
			Model model,
			HttpServletRequest request) {
		model.addAttribute("request", request);
		return deleteMemberManagerCommand.execute(sqlSession, model);
	}
	
	/**
	 * ?????? ???????????? ?????????
	 */
	@GetMapping(value="memberAddressPage.do")
	public String selectListAddress(
			Model model,
			HttpServletRequest request) {
		model.addAttribute("request", request);
		selectListMemberAddressManagerCommand.execute(sqlSession, model);
		return "manager/memberAddress";
	}
	
	/**
	 * ?????? ???????????? ?????????<br>
	 * ????????? ??????????????? ?????? ???????????? ??????<br>
	 * ??????????????? JSON?????? ??????
	 * 
	 * @see UpdateMemberPwManagerCommand
	 */
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
	/**
	 * ???????????? ?????????
	 */
	@GetMapping(value="productListPage.do")
	public String productListPage() {
		return "manager/productList";
	}
	
	/**
	 * ?????? ??????/?????? ????????? ??????<br>
	 * JSON ???????????? ??????
	 * 
	 * @see views/manager/productList.jsp 
	 * @see SelectListProductManagerCommand
	 */
	@ResponseBody
	@GetMapping(value="selectListProduct.do",
				produces="application/json; charset=UTF-8")
	public Map<String, Object> selectListProduct(
			Model model,
			HttpServletRequest request) {
		model.addAttribute("request", request);
		return selectListProductManagerCommand.execute(sqlSession, model);
	}

	/**
	 * ???????????? ?????????(??????)
	 * 
	 * @see SelectOneProductManagerCommand
	 */
	@GetMapping(value="productInfoPage.do")
	public String productInfoPage(
			Model model,
			HttpServletRequest request) {
		model.addAttribute("request", request);
		selectOneProductManagerCommand.execute(sqlSession, model);
		return "manager/productInfo";
	}
	
	/**
	 * ????????? ?????? ????????? ?????? (????????? / ??????)
	 * 
	 * @see UpdateProdcutStateManagerCommand
	 */
	@GetMapping(value="updateProductState.do")
	public String updateProductState(
			Model model,
			HttpServletRequest request) {
		model.addAttribute("request", request);
		updateProdcutStateManagerCommand.execute(sqlSession, model);
		return "redirect:productInfoPage.do?no=" + request.getParameter("no");
	}
	
	/**
	 * ????????? ??????<br>
	 * ?????????
	 * 
	 * @see DeleteProductManagerCommand
	 */
	@ResponseBody
	@RequestMapping(value="deleteProduct.do",
				 produces="application/json; charset=UTF-8")
	public Map<String, Object> deleteProduct(
			Model model,
			HttpServletRequest request) {
		model.addAttribute("request", request);
		return deleteProductManagerCommand.execute(sqlSession, model);
	}
	
	
	// PRDOCUT BUY
	/**
	 * ?????? ?????????????????? ????????? 
	 * 
	 * @see views/manager/productBuyList.jsp
	 */
	@GetMapping(value="productBuyListPage.do")
	public String productBuyListPage() {
		return "manager/productBuyList";
	}
	
	/**
	 * ?????? ???????????? ??????/?????? ????????? ??????<br>
	 * JSON?????? ?????? ??????
	 *
	 * @see SelectListProductBuyManagerCommand
	 */
	@ResponseBody
	@GetMapping(value="selectListProductBuy.do",
				produces="application/json; charset=UTF-8")
	public Map<String, Object> selectListProductBuy(
			Model model,
			HttpServletRequest request) {
		model.addAttribute("request", request);
		return selectListProductBuyManagerCommand.execute(sqlSession, model);
	}
	
	/**
	 * ?????? ?????? ?????? ??????<br>
	 * JSON?????? ?????? ??????
	 * 
	 * @see SelectOneMemberAddressManagerCommand
	 */
	@ResponseBody
	@GetMapping(value="selectOneMemberAddress.do",
				produces="application/json; charset=UTF-8")
	public Map<String, Object> selectOneMemberAddress(
			Model model,
			HttpServletRequest request) {
		model.addAttribute("request", request);
		return selectOneMemberAddressManagerCommand.execute(sqlSession, model);
	}
	
	/**
	 * ?????? ???????????? State ??????<br>
	 * JSON?????? ?????? ??????
	 *
	 * @see UpdateProductBuyStateManagerCommand
	 */
	@ResponseBody
	@GetMapping(value="updateProductBuyState.do",
				produces="application/json; charset=UTF-8")
	public Map<String, Object> updateProductBuyState(
			Model model,
			HttpServletRequest request) {
		model.addAttribute("request", request);
		return updateProductBuyStateManagerCommand.execute(sqlSession, model);
	}
	
	
	// PRODUCT SELL 
	/**
	 * ?????? ???????????? ?????? ?????????
	 *
	 * @see views/manager/productSellList.jsp
	 */
	@GetMapping(value="productSellListPage.do")
	public String productSellListPage() {
		return "manager/productSellList";
	}

	/**
	 * ?????? ???????????? ??????/?????? ????????? ??????<br>
	 * JSON?????? ??????
	 * 
	 * @see SelectListProductSellManagerCommand
	 */
	@ResponseBody
	@GetMapping(value="selectListProductSell.do",
				produces="application/json; charset=UTF-8")
	public Map<String, Object> selectListProductSell(
			Model model,
			HttpServletRequest request) {
		model.addAttribute("request", request);
		return selectListProductSellManagerCommand.execute(sqlSession, model);
	}
	
	/**
	 * ?????? ???????????? state ??????<br>
	 * ????????? JSON?????? ??????
	 *
	 * @see UpdateProductSellStateManagerCommand
	 */
	@ResponseBody
	@GetMapping(value="updateProductSellState.do",
				produces="application/json; charset=UTF-8")
	public Map<String, Object> updateProductSellState(
			Model model,
			HttpServletRequest request) {
		model.addAttribute("request", request);
		return updateProductSellStateManagerCommand.execute(sqlSession, model);
	}
	
	
	// NOTICE
	/**
	 * ???????????? ?????? ?????????
	 *
	 * @see SelectListNoticeManagerCommand
	 */
	@GetMapping("noticeListPage.do")
	public String noticeListPage(
			Model model,
			HttpServletRequest request) {
		model.addAttribute("request", request);
		selectListNoticeManagerCommand.execute(sqlSession, model);
		return "manager/noticeList";
	}

	/**
	 * ???????????? ?????? ????????? (??????)
	 *
	 * @see SelectOneNoticeManagerCommand
	 */
	@GetMapping("noticeInfoPage.do")
	public String noticeInfoPage(
			Model model,
			HttpServletRequest request) {
		model.addAttribute("request", request); 
		selectOneNoticeManagerCommand.execute(sqlSession, model);
		return "manager/noticeInfo";
	}
	
	/**
	 * ???????????? ??????/?????? ??????<br>
	 * ????????? JSON?????? ??????
	 *
	 * @see InsertOrUpdateNoticeManagerCommand
	 */
	@ResponseBody
	@PostMapping(value="insertNotice.do",
				 produces="application/json; charset=UTF-8")
	public Map<String, Object> insertNotice(
			Model model,
			HttpServletRequest request) {
		model.addAttribute("request", request);
		return insertOrUpdateNoticeManagerCommand.execute(sqlSession, model);
	}

	/**
	 * ???????????? ?????? ??????<br>
	 * ????????? JSON?????? ??????
	 *
	 * @see DeleteNoticeManagerCommand
	 */
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
	/**
	 * FAQ ????????? ?????? ?????????
	 *
	 * @see SelectListFaqManagerCommand
	 */
	@GetMapping("faqListPage.do")
	public String faqListPage(
			Model model,
			HttpServletRequest request) {
		model.addAttribute("request", request);
		selectListFaqManagerCommand.execute(sqlSession, model);
		return "manager/faqList";
	}
	
	/**
	 * ????????? ?????? ??? ?????? ?????????
	 *
	 * @see SelectOneFaqManagerCommand
	 */
	@GetMapping("faqInfoPage.do")
	public String faqInfoPage(
			Model model,
			HttpServletRequest request) {
		model.addAttribute("request", request); 
		selectOneFaqMangerCommand.execute(sqlSession, model);
		return "manager/faqInfo";
	}

	/**
	 * FAQ ?????? ??? ??????<br>
	 * JSON?????? ?????? ??????
	 * 
	 * @see InsertOrUpdateFaqManagerCommand
	 */
	@ResponseBody
	@PostMapping(value="insertFaq.do",
				 produces="application/json; charset=UTF-8")
	public Map<String, Object> insertFaq(
			Model model,
			HttpServletRequest request) {
		model.addAttribute("request", request);
		return insertOrUpdateFaqManagerCommand.execute(sqlSession, model);
	}
	
	/**
	 * FAQ ??????<br>
	 * JSON?????? ?????? ??????
	 *
	 * @see DeleteFaqManagerCommand
	 */
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
	/**
	 * ???????????? ?????????
	 *  
	 * @author ?????????
	 */
	@GetMapping("reviewListPage.do")
	public String reviewListPage(HttpServletRequest request,
								 Model model) {
		model.addAttribute("request", request);
		selectListReviewCommand.execute(sqlSession, model);
		return "manager/reviewList";
	}
	
	/**
	 * ????????? ?????????????????????.<br>
	 * reviewListPage.do??? ??????????????? ?????????.
	 * 
	 * @author ?????????
	 * @see DeleteReviewManagerCommand
	 */
	@GetMapping("deleteReview.do")
	public String deleteReview(HttpServletRequest request,
							   Model model) {
		model.addAttribute("request", request);
		deleteReviewCommand.execute(sqlSession, model);
		return "redirect:reviewListPage.do";
	}
	
	/**
	 * ??????????????? ????????? ???????????????.<br>
	 * reviewListPage.do??? ??????????????? ?????????.
	 * 
	 * @author ?????????
	 * @see RestoreReviewManagerCommand
	 */
	@GetMapping("restoreReview.do")
	public String restoreReview(HttpServletRequest request,
								Model model) {
		model.addAttribute("request", request);
		restoreReviewCommand.execute(sqlSession, model);
		return "redirect:reviewListPage.do";
	}
}
