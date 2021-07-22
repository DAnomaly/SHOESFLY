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
import com.koreait.shoefly.dto.ProductBuy;

@Component
public class ProductBuyCommand implements MemberCommand {
	
	@Override
	public Map<String, Object> execute(SqlSession sqlSession, Model model) {
		
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		HttpSession session = request.getSession();
		
		Member loginMember = (Member)session.getAttribute("loginMember");
		String memberId = loginMember.getMemberId();
	
		MemberDAO memberDAO = sqlSession.getMapper(MemberDAO.class);
		
		List<ProductBuy> buyingList0 = memberDAO.selectListBuy(0, memberId);
	    List<ProductBuy> buyingList1 = memberDAO.selectListBuy(1, memberId);
	    List<ProductBuy> buyingList2 = memberDAO.selectListBuy(2, memberId);
	    List<ProductBuy> buyingList3 = memberDAO.selectListBuy(3, memberId);
		
		model.addAttribute("buyRequestList", buyingList0);
		model.addAttribute("buyingList", buyingList1);
		model.addAttribute("ShippingList", buyingList2);
		model.addAttribute("buyCompleted", buyingList3);
	
		
		return null;
	}

}
