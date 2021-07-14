package com.koreait.shoefly.command.manager;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;

import com.koreait.shoefly.dao.ManagerDAO;

@Component
public class DeleteMemberManagerCommand implements ManagerCommand{

	@Override
	public Map<String, Object> execute(SqlSession sqlSession, Model model) {
		ManagerDAO dao = sqlSession.getMapper(ManagerDAO.class);
		Map<String, Object> modelMap = model.asMap();
		HttpServletRequest request = (HttpServletRequest)modelMap.get("request");
		
		long memberNo = Long.parseLong(request.getParameter("memberNo"));
		int state = Integer.parseInt(request.getParameter("state"));
		state = state == 0 ? -1 : 0;
		
		Map<String, Object> searchMap = new HashMap<>();
		searchMap.put("memberNo", memberNo);
		searchMap.put("state", state);
		
		int result = dao.deleteMember(searchMap);
		
		Map<String, Object> resultMap = new HashMap<>();
		resultMap.put("result", result > 0);
		
		return resultMap;
	}
	
}
