package com.koreait.shoefly.command.product;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;

import com.koreait.shoefly.dao.ProductDAO;
@Component
public class SelectProductByProductNoCommand implements ProductCommand {

	@Override
	public Map<String, Object> execute(SqlSession sqlSession, Model model) {
		
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		
		//제품번호 가져오기
		String productNo = request.getParameter("productNo");
		String productName = request.getParameter("productName");

		ProductDAO productDAO = sqlSession.getMapper(ProductDAO.class);
		model.addAttribute("product", productDAO.selectProductByProductNo(productNo));
		
		model.addAttribute("size240", productDAO.selectSize240(productName) == null ? 0 : productDAO.selectSize240(productName));
		model.addAttribute("size250", productDAO.selectSize250(productName) == null ? 0 : productDAO.selectSize250(productName));
		model.addAttribute("size260", productDAO.selectSize260(productName) == null ? 0 : productDAO.selectSize260(productName));
		model.addAttribute("size270", productDAO.selectSize270(productName) == null ? 0 : productDAO.selectSize270(productName));
		model.addAttribute("size280", productDAO.selectSize280(productName) == null ? 0 : productDAO.selectSize280(productName));
		model.addAttribute("size290", productDAO.selectSize290(productName) == null ? 0 : productDAO.selectSize290(productName));
		
		return null;
	}

}
