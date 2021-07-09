package com.koreait.shoefly.dto;

import java.sql.Date;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@ToString
@NoArgsConstructor
public class Member {

	// 회원일련번호 
    private long memberNo;

    // 아이디 
    private String memberId;

    // 비밀번호 
    private String pw;

    // 이름 
    private String name;

    // 이메일 
    private String email;

    // 가입일 
    private Date regdate;

    // 관리자여부 
    private Integer manager;

    // 정상/탈퇴 
    private Integer state;
    
}
