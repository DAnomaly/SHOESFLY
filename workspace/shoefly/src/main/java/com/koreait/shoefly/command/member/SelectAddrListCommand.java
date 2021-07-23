package com.koreait.shoefly.command.member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;

import com.koreait.shoefly.dao.MemberDAO;
import com.koreait.shoefly.dto.MemberAddress;

@Component
public class SelectAddrListCommand implements MemberCommand {

	@Override
	public Map<String, Object> execute(SqlSession sqlSession, Model model) {

		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		
		MemberDAO memberDAO = sqlSession.getMapper(MemberDAO.class);
		
		long memberNo = Long.parseLong(request.getParameter("memberNo"));
		
		List<MemberAddress> list = memberDAO.selectAddrList(memberNo);

		Map<String, Object> result = new HashMap<String, Object>();
		result.put("list", list);
		result.put("exists", list.size() > 0);
		
		return result;
	}

}
