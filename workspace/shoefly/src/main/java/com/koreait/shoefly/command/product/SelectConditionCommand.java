package com.koreait.shoefly.command.product;

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
		String[] sizes = request.getParameterValues("size");
		String productName = request.getParameter("productName");
		
		//size checkbox 배열값 콤마로 연결시켜서 전달
		String size = "";
		for(int i = 0 ;i < sizes.length ; i++) {
			if(sizes.length == 1) {
				size = sizes[0];
			}else {
				size = sizes[0];
				for(int j = 1 ; j < sizes.length ; j++) {
					size += ", " + sizes[j];
				}
			}
		}

		System.out.println(size);
		ProductDAO productDAO = sqlSession.getMapper(ProductDAO.class);
		
		model.addAttribute("list", productDAO.selectCondition(size));
		logger.info("size전달했다");
		return null;
	}

}
