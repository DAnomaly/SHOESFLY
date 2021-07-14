package com.koreait.shoefly.command.member;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;

@Component
public class LogoutCommand implements MemberCommand {

	@Override
	public Map<String, Object> execute(SqlSession sqlSession, Model model) {

		Map<String, Object> map = model.asMap();
		HttpSession session = (HttpSession)map.get("session");
		
		if(session.getAttribute("loginMember") != null) {
			session.invalidate();
		}
		
		return null;
	}

}
