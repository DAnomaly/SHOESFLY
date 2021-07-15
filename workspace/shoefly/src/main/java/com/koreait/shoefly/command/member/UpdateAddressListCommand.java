package com.koreait.shoefly.command.member;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;

import com.koreait.shoefly.dao.MemberDAO;
import com.koreait.shoefly.dto.MemberAddress;

@Component
public class UpdateAddressListCommand implements MemberCommand {

	@Override
	public Map<String, Object> execute(SqlSession sqlSession, Model model) {

		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		
		long memberAddressNo = Long.parseLong(request.getParameter("memberAddressNo"));
		
		MemberDAO memberDAO = sqlSession.getMapper(MemberDAO.class);
		
		MemberAddress memberAddress = memberDAO.selectAddrByNo(memberAddressNo);
		
		if(memberAddress != null) {
			model.addAttribute("memberAddress", memberAddress);
		}
		
		return null;
	}

}
