package com.koreait.shoefly.command.member;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;

import com.koreait.shoefly.dao.MemberDAO;
import com.koreait.shoefly.dto.Member;

@Component
public class UpdateNameCommand implements MemberCommand {

	@Override
	public Map<String, Object> execute(SqlSession sqlSession, Model model) {

		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		HttpSession session = request.getSession();
		
		String name = request.getParameter("name");
		Member loginMember = (Member)session.getAttribute("loginMember");
		long memberNo = loginMember.getMemberNo();
		System.out.println(name + ", " + memberNo);
		Member member = new Member();
		member.setName(name);
		member.setMemberNo(memberNo);
		
		MemberDAO memberDAO = sqlSession.getMapper(MemberDAO.class);
		int count = memberDAO.updateName(member);
		System.out.println(count);
		if(count > 0) {
			if(loginMember != null) {
				loginMember.setName(name);			
			}
		}
		
		return null;
	}

}
