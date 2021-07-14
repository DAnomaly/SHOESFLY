package com.koreait.shoefly.command.manager;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;

import com.koreait.shoefly.dao.ManagerDAO;
import com.koreait.shoefly.dto.MemberAddress;

@Component
public class InsertOrUpdateMemberAddressManagerCommand implements ManagerCommand {

	private Map<String, Object> resultMap;
	private HttpServletRequest request;
	private ManagerDAO dao;

	@Override
	public Map<String, Object> execute(SqlSession sqlSession, Model model) {
		this.dao = sqlSession.getMapper(ManagerDAO.class);
		Map<String, Object> modelMap = model.asMap();
		this.request = (HttpServletRequest)modelMap.get("request");
		this.resultMap = new HashMap<>();
		
		String no = request.getParameter("no");
		if(no.equals("0")) {
			insertMemberAddress();  
		} else {
			updateMemberAddress(); 
		}
		
		return resultMap;
	}
	
	private void insertMemberAddress() {
		long memberNo = Long.parseLong(request.getParameter("memberNo"));
		String name = request.getParameter("name");
		String addr1 = request.getParameter("addr1");
		String addr2 = request.getParameter("addr2");
		
		MemberAddress memberAddress = new MemberAddress();
		memberAddress.setMemberNo(memberNo);
		memberAddress.setName(name);
		memberAddress.setAddr1(addr1);
		memberAddress.setAddr2(addr2);
		
		int result = dao.insertMemberAddress(memberAddress);
		
		StringBuilder sb = new StringBuilder();
		if( result > 0) {
			sb.append("<script>");
			sb.append("alert('정상적으로 주소가 추가되었습니다.');");
			sb.append("location.href='memberAddressPage.do?memberNo=" + memberNo + "';");
			sb.append("</script>");
		} else {
			sb.append("<script>");
			sb.append("alert('오류가 발생했습니다.');");
			sb.append("history.back();");
			sb.append("</script>");
		}
		resultMap.put("response", sb.toString());
	}

	private void updateMemberAddress() {
		long memberNo = Long.parseLong(request.getParameter("memberNo"));
		long memberAddressNo = Long.parseLong(request.getParameter("no"));
		String name = request.getParameter("name");
		String addr1 = request.getParameter("addr1");
		String addr2 = request.getParameter("addr2");

		MemberAddress memberAddress = new MemberAddress();
		memberAddress.setMemberAddressNo(memberAddressNo);
		memberAddress.setName(name);
		memberAddress.setAddr1(addr1);
		memberAddress.setAddr2(addr2);
		
		int result = dao.updateMemberAddress(memberAddress);
		
		StringBuilder sb = new StringBuilder();
		if( result > 0) {
			sb.append("<script>");
			sb.append("alert('정상적으로 주소가 수정되었습니다.');");
			sb.append("location.href='memberAddressPage.do?memberNo=" + memberNo + "';");
			sb.append("</script>");
		} else {
			sb.append("<script>");
			sb.append("alert('오류가 발생했습니다.');");
			sb.append("history.back();");
			sb.append("</script>");
		}

		resultMap.put("response", sb.toString());
	}
	
}
