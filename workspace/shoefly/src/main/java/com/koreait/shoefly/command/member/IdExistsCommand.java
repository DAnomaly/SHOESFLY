package com.koreait.shoefly.command.member;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;

import com.koreait.shoefly.dao.MemberDAO;

@Component
public class IdExistsCommand implements MemberCommand {

	@Override
	public Map<String, Object> execute(SqlSession sqlSession, Model model) {

		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		
		String memberId = request.getParameter("memberId");
		
		MemberDAO memberDAO = sqlSession.getMapper(MemberDAO.class);
		
		String email = memberDAO.idExists(memberId);
		
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("email", email);
		
		return result;
	}

}
