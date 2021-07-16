package com.koreait.shoefly.command.manager;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;

import com.koreait.shoefly.dao.ManagerDAO;
import com.koreait.shoefly.dto.Product;

@Component
public class UpdateProdcutStateManagerCommand implements ManagerCommand{

	@Override
	public Map<String, Object> execute(SqlSession sqlSession, Model model) {
		ManagerDAO dao = sqlSession.getMapper(ManagerDAO.class);
		Map<String, Object> modelMap = model.asMap();
		HttpServletRequest request = (HttpServletRequest)modelMap.get("request");
		
		String productNo = request.getParameter("no");
		int state = Integer.parseInt(request.getParameter("state"));
		
		Product product = new Product();
		product.setProductNo(productNo);
		product.setState(state);
		
		dao.updateProductState(product);
		
		return null;
	}
	
}
