package com.koreait.shoefly.dao;

import java.util.List;

import com.koreait.shoefly.dto.Member;
import com.koreait.shoefly.dto.MemberAddress;

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

	public int deleteMember(long memberNo);
	
	public int updateName(Member member);
	
	public List<MemberAddress> selectAddrList(long memberNo);

}
