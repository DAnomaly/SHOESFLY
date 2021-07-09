package com.koreait.shoesfly.dto;

import java.sql.Date;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@ToString
@NoArgsConstructor
public class Notice {

	// 공지 일련번호 
    private long noticeNo;

    // 아이디 
    private String memberId;

    // 공지 제목 
    private String title;

    // 공지 내용 
    private String content;

    // 공지 작성일 
    private Date postdate;

    // 정상/삭제 
    private Integer state;
    
}
