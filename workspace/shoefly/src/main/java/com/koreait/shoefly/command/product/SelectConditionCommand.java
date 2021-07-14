package com.koreait.shoefly.command.product;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;

import com.koreait.shoefly.dao.ProductDAO;
@Component
public class SelectConditionCommand implements ProductCommand {

	@Override
	public Map<String, Object> execute(SqlSession sqlSession, Model model) {
		
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		String productName = request.getParameter("productName");
		String[] brands = request.getParameterValues("brand");
		String[] sizes = request.getParameterValues("size");
		Long MINPRICE = Long.parseLong(request.getParameter("minPrice") == "" ? "0" : request.getParameter("minPrice"));
		Long MAXPRICE = Long.parseLong(request.getParameter("maxPrice") == "" ? "9999999999" : request.getParameter("maxPrice"));
		
		//입력값이 없을경우 전체 조회
		if(productName == null) {
			productName = "";
		}
			//브랜드 체크가 없을경우 전체 브랜드 조회
		if(brands == null) {
			brands = new String[4];
			brands[0] = "Jordan";
			brands[1] = "Nike";
			brands[2] = "New Balance";
			brands[3] = "Adidas";
		}
		//사이즈 체크가 없을 경우 전체 사이즈 조회
		if(sizes == null) {
			sizes = new String[6];
			sizes[0] = "240";
			sizes[1] = "250";
			sizes[2] = "260";
			sizes[3] = "270";
			sizes[4] = "280";
			sizes[5] = "290";
		}

		Map<String, Object> paramMap = new HashMap<>();
		paramMap.put("PRODUCTNAME", productName);
		paramMap.put("BRANDS", brands);
		paramMap.put("SIZES", sizes);
		paramMap.put("MINPRICE", MINPRICE);
		paramMap.put("MAXPRICE", MAXPRICE);
		
		ProductDAO productDAO = sqlSession.getMapper(ProductDAO.class);
		logger.info("조회되었다.");
		
		model.addAttribute("list", productDAO.selectCondition(paramMap));
		return null;
	}

}
