package com.koreait.shoefly.command.member;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;

import com.koreait.shoefly.dao.MemberDAO;
import com.koreait.shoefly.dto.Member;
import com.koreait.shoefly.util.SecurityUtils;

@Component
public class LoginCommand implements MemberCommand {

	@Override
	public Map<String, Object> execute(SqlSession sqlSession, Model model) {

		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		
		String memberId = request.getParameter("memberId");
		String pw = request.getParameter("pw");
		
		Member member = new Member();
		member.setMemberId(memberId);
		member.setPw(SecurityUtils.sha256(pw));
		
		MemberDAO memberDAO = sqlSession.getMapper(MemberDAO.class);
		
		Member loginMember = memberDAO.login(member);
		
		if(loginMember != null) {
			request.getSession().setAttribute("loginMember", loginMember);
		}
		
		return null;
	}

}
