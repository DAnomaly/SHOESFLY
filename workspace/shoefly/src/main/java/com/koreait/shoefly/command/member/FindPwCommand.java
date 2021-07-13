package com.koreait.shoefly.command.member;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;

import com.koreait.shoefly.dao.MemberDAO;
import com.koreait.shoefly.dto.Member;

@Component
public class FindPwCommand implements MemberCommand {

	@Override
	public Map<String, Object> execute(SqlSession sqlSession, Model model) {

		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		
		String memberId = request.getParameter("memberId");
		String email = request.getParameter("email");
		
		Member member = new Member();
		member.setMemberId(memberId);
		member.setEmail(email);
		
		MemberDAO memberDAO = sqlSession.getMapper(MemberDAO.class);
		
		Member findMember = memberDAO.findPw(member);
		
		if(findMember != null) {	
			model.addAttribute("findMember", findMember);
		}
		
		return null;
	}

}
