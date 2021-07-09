package com.koreait.shoefly.dto;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@ToString
@NoArgsConstructor
public class MemberAddress {

	// 주소일련번호 
    private long memberAddressNo;

    // 회원일련번호 
    private long memberNo;

    // 주소 
    private String addr1;

    // 상세주소 
    private String addr2;

    // 정상/삭제 
    private Integer state;
    
}
