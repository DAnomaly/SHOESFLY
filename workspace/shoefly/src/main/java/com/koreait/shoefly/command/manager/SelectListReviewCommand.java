package com.koreait.shoefly.command.manager;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;

import com.koreait.shoefly.dao.ManagerDAO;
import com.koreait.shoefly.dto.Page;
import com.koreait.shoefly.dto.Review;
import com.koreait.shoefly.util.PagingUtils;

@Component
public class SelectListReviewCommand implements ManagerCommand {

	private int recordPerPage = 5;
	private int pagePerBlock = 5;
	
	@Override
	public Map<String, Object> execute(SqlSession sqlSession, Model model) {
		
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		
		ManagerDAO managerDAO = sqlSession.getMapper(ManagerDAO.class);
		
		String strNowPage = request.getParameter("page");
		int nowPage = Integer.parseInt(strNowPage == null || strNowPage.equals("") ? "1" : strNowPage);
		int totalRecord = managerDAO.countReview();
		Page page = PagingUtils.getPage(nowPage, totalRecord, recordPerPage, pagePerBlock);
		Map<String, Object> pageMap = new HashMap<>();
		pageMap.put("beginRecord", page.getBeginRecord());
		pageMap.put("endRecord", page.getEndRecord());
		List<Review> review = managerDAO.selectListReview(pageMap);
		String path = "reviewListPage.do";
		
		String paging = PagingUtils.getPaging(path, page);
		
		model.addAttribute("review", review);
		model.addAttribute("page", page);
		model.addAttribute("paging", paging);
		
		return null;
	}

}
