package com.koreait.shoefly.dao;

import com.koreait.shoefly.dto.Member;

public interface MemberDAO {

	public Member login(Member member);
	
	public int idCheck(String memberId);

	public int join(Member member);

	public int emailOrCheck(String email);
	
	public Member findId(String email);
	
	public String idExists(String memberId);
	
	public Member findPw(Member member);
	
	public Member idEmailEquals(String memberId);
	
	public int updatePw(Member member);


}
