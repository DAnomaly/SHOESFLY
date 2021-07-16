package com.koreait.shoefly.command.manager;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;

import com.koreait.shoefly.dao.ManagerDAO;
import com.koreait.shoefly.dto.Product;
import com.koreait.shoefly.dto.ProductDetail;

@Component
public class SelectOneProductManagerCommand implements ManagerCommand {

	@Override
	public Map<String, Object> execute(SqlSession sqlSession, Model model) {
		ManagerDAO dao = sqlSession.getMapper(ManagerDAO.class);
		Map<String, Object> modelMap = model.asMap();
		HttpServletRequest request = (HttpServletRequest)modelMap.get("request");
		
		String productNo = request.getParameter("no");
		
		Product product = dao.selectOneProdcut(productNo);
		model.addAttribute("product", product);
		
		List<ProductDetail> details = dao.selectListProductDetail(product.getProductName());
		
		return null;
	}
	
}
