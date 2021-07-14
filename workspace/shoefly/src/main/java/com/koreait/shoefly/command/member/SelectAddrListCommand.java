package com.koreait.shoefly.command.member;

import java.util.HashMap;
import java.util.List;
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
public class SelectAddrListCommand implements MemberCommand {

	@Override
	public Map<String, Object> execute(SqlSession sqlSession, Model model) {

		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		//HttpSession session = request.getSession();
		//Member loginMember = (Member)session.getAttribute("loginMember");
		
		//long memberNo = loginMember.getMemberNo();
		
		MemberDAO memberDAO = sqlSession.getMapper(MemberDAO.class);
		
		long memberNo = Long.parseLong(request.getParameter("memberNo"));
		
		List<MemberAddress> list = memberDAO.selectAddrList(memberNo);
		System.out.println(list);
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("list", list);
		result.put("exists", list.size() > 0);
		
		return result;
	}

}
