package com.koreait.shoefly.command.member;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;

import com.koreait.shoefly.dao.MemberDAO;
import com.koreait.shoefly.dto.Member;
import com.koreait.shoefly.dto.MemberAddress;

@Component
public class DeleteAddressCommand implements MemberCommand {

	@Override
	public Map<String, Object> execute(SqlSession sqlSession, Model model) {

		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		HttpSession session = request.getSession();
		
		Member loginMember = (Member)session.getAttribute("loginMember");
		
		long memberAddressNo = Long.parseLong(request.getParameter("memberAddressNo"));
		long memberNo = loginMember.getMemberNo();
		
		MemberAddress memberAddress = new MemberAddress();
		memberAddress.setMemberAddressNo(memberAddressNo);
		memberAddress.setMemberNo(memberNo);
		
		MemberDAO memberDAO = sqlSession.getMapper(MemberDAO.class);
		memberDAO.deleteMemberAddress(memberAddress);
		
		return null;
	}

}
