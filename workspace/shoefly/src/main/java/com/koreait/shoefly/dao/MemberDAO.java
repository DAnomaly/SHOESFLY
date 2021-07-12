package com.koreait.shoefly.dao;

import com.koreait.shoefly.dto.Member;

public interface MemberDAO {

	public Member login(Member member);
	
	public int idCheck(String id);

	
}
