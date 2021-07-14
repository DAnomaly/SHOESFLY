package com.koreait.shoefly.command.product;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;

import com.koreait.shoefly.dao.ProductDAO;
@Component
public class SelectAllListCommand implements ProductCommand {

	@Override
	public Map<String, Object> execute(SqlSession sqlSession, Model model) {
		
		ProductDAO productDAO = sqlSession.getMapper(ProductDAO.class);
		model.addAttribute("list", productDAO.selectAllList());
		
		logger.info("리스트가져왔다");
		return null;
	}

}
