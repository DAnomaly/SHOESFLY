package com.koreait.shoefly.command.member;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;

import com.koreait.shoefly.dao.MemberDAO;
import com.koreait.shoefly.dto.Member;
import com.koreait.shoefly.util.SecurityUtils;

@Component
public class UpdatePwCommand implements MemberCommand {

	@Override
	public Map<String, Object> execute(SqlSession sqlSession, Model model) {

		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		
		String pw = request.getParameter("pw");
		long memberNo = Long.parseLong(request.getParameter("memberNo"));
		
		Member member = new Member();
		member.setPw(SecurityUtils.sha256(pw));
		member.setMemberNo(memberNo);

		MemberDAO memberDAO = sqlSession.getMapper(MemberDAO.class);
		int count = memberDAO.updatePw(member);		
		
		if(count > 0) {
			HttpSession session = request.getSession();
			Member loginMember = (Member)session.getAttribute("loginMember");
			if(loginMember != null) {
				loginMember.setPw(SecurityUtils.sha256(pw));				
			}
		}
		
		return null;
	}

}
