package com.koreait.shoefly.command.member;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;

import com.koreait.shoefly.dao.MemberDAO;

@Component
public class EmailOrCheckCommand implements MemberCommand {

	@Override
	public Map<String, Object> execute(SqlSession sqlSession, Model model) {
		
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		
		String email = request.getParameter("email");
		MemberDAO memberDAO = sqlSession.getMapper(MemberDAO.class);
		
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("count", memberDAO.emailOrCheck(email));
		
		return result;
	}

}
