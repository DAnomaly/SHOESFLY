package com.koreait.shoefly.command.product;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;

import com.koreait.shoefly.dao.ProductDAO;
@Component
public class InsertBuyApplicationCommand implements ProductCommand {

	@Override
	public Map<String, Object> execute(SqlSession sqlSession, Model model) {
		
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		HttpServletResponse response = (HttpServletResponse)map.get("response");
		
		String memberId = request.getParameter("memberId");
		String productName = request.getParameter("productName");
		int productSize = Integer.parseInt(request.getParameter("productSize"));
		long price = Long.parseLong(request.getParameter("price"));
		String addrName = request.getParameter("addrName");
		String addr1 = request.getParameter("addr1");
		String addr2 = request.getParameter("addr2");
		
		ProductDAO productDAO = sqlSession.getMapper(ProductDAO.class);
		
		//MEMBERADDRESS 테이블에도 주소 등록(STATE = 0)
		
		//구매신청테이블에 삽입
		int result = productDAO.insertBuyApplication(memberId, productName, productSize, price, addrName, addr1, addr2);
		return null;
	}

}
