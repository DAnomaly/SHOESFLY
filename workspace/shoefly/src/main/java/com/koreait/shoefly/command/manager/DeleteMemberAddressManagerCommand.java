package com.koreait.shoefly.command.manager;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;

import com.koreait.shoefly.dao.ManagerDAO;

@Component
public class DeleteMemberAddressManagerCommand implements ManagerCommand {
	
	@Override
	public Map<String, Object> execute(SqlSession sqlSession, Model model) {
		ManagerDAO dao = sqlSession.getMapper(ManagerDAO.class);
		Map<String, Object> modelMap = model.asMap();
		HttpServletRequest request = (HttpServletRequest)modelMap.get("request");
		
		long memberAddressNo = Long.parseLong(request.getParameter("no"));
		long memberNo = Long.parseLong(request.getParameter("memberNo"));
		int result = dao.deleteMemberAddress(memberAddressNo);
		
		Map<String, Object> resultMap = new HashMap<>();
		
		StringBuilder sb = new StringBuilder();
		if( result > 0) {
			sb.append("<script>");
			sb.append("alert('정상적으로 삭제되었습니다.');");
			sb.append("location.href='memberAddressPage.do?memberNo=" + memberNo + "';");
			sb.append("</script>");
		} else {
			sb.append("<script>");
			sb.append("alert('오류가 발생했습니다.');");
			sb.append("history.back();");
			sb.append("</script>");
		}
		resultMap.put("response", sb.toString());
		
		return resultMap;
	}

}
