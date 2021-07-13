package com.koreait.shoefly.command.manager;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;

import com.koreait.shoefly.dao.ManagerDAO;
import com.koreait.shoefly.dto.Faq;
import com.koreait.shoefly.dto.Page;
import com.koreait.shoefly.util.PagingUtils;

@Component
public class SelectListFaqManagerCommand implements ManagerCommand {

	private int recordPerPage = 5;
	private int pagePerBlock = 5;
	
	@Override
	public Map<String, Object> execute(SqlSession sqlSession, Model model) {
		ManagerDAO dao = sqlSession.getMapper(ManagerDAO.class);
		Map<String, Object> modelMap = model.asMap();
		HttpServletRequest request = (HttpServletRequest)modelMap.get("request");
		
		Map<String, Object> searchMap = new HashMap<>();
		String calumn = request.getParameter("calumn");
		String query = request.getParameter("query");
		if(query == null)
			query = "";
		if(calumn != null && !calumn.isEmpty())
			if(calumn.equals("POSTDATE")) {
				searchMap.put("calumn", calumn);
				searchMap.put("startDate", request.getParameter("startDate"));
				searchMap.put("endDate", request.getParameter("endDate"));
			} else {
				searchMap.put("calumn", calumn);
				searchMap.put("query", query);
			}
		
		String strNowpage = request.getParameter("page");
		int nowpage = Integer.parseInt(strNowpage == null || strNowpage.equals("") ? "1" : strNowpage);
		int totalRecord = dao.countFaq(searchMap);
		Page page = PagingUtils.getPage(nowpage, totalRecord, recordPerPage, pagePerBlock);

		searchMap.put("beginRecord", page.getBeginRecord());
		searchMap.put("endRecord", page.getEndRecord());
		List<Faq> list = dao.selectListFaq(searchMap);
		
		String path = "faqListPage.do";
		if(searchMap.get("query") != null) {
			path += "?query=" + (String)searchMap.get("query");
		}
		String paging = PagingUtils.getPaging(path, page);
		
		model.addAttribute("list", list);
		model.addAttribute("page", page);
		model.addAttribute("paging", paging);
		return null;
	}

}
