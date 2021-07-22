package com.koreait.shoefly.command.product;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;

import com.koreait.shoefly.dao.ProductDAO;
@Component
public class SelectPriceBySizeCommand implements ProductCommand {

	@Override
	public Map<String, Object> execute(SqlSession sqlSession, Model model) {
		
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		
		int productSize = Integer.parseInt(request.getParameter("productSize"));
		String productName = request.getParameter("productName");
		
		ProductDAO productDAO = sqlSession.getMapper(ProductDAO.class);
		Map<String, Object> resultMap = new HashMap<>();
		//즉시구매가격
		resultMap.put("buyPrice", productDAO.selectBuyPriceBySize(productSize, productName));
		//즉시판매가격
		resultMap.put("sellPrice", productDAO.selectSellPriceBySize(productSize, productName));

		return resultMap;
	}

}
