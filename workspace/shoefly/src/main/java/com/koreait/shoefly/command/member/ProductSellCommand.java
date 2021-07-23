package com.koreait.shoefly.command.member;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;

import com.koreait.shoefly.dao.MemberDAO;
import com.koreait.shoefly.dto.Member;
import com.koreait.shoefly.dto.ProductSell;

@Component
public class ProductSellCommand implements MemberCommand {

	@Override
	public Map<String, Object> execute(SqlSession sqlSession, Model model) {
		
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		HttpSession session = request.getSession();
		
		Member loginMember = (Member)session.getAttribute("loginMember");
		String memberId = loginMember.getMemberId();

		MemberDAO memberDAO = sqlSession.getMapper(MemberDAO.class);
		
		List<ProductSell> saleList0 = memberDAO.selectListSell(0, memberId);
		List<ProductSell> saleList1 = memberDAO.selectListSell(1, memberId);
		List<ProductSell> saleList2 = memberDAO.selectListSell(2, memberId);
		List<ProductSell> saleList3 = memberDAO.selectListSell(3, memberId);
		
		model.addAttribute("sellRequestList", saleList0);
		model.addAttribute("waitingForSale", saleList1);
		model.addAttribute("soldOut", saleList2);
		model.addAttribute("sellCompleted", saleList3);
		
		return null;
	}

}
