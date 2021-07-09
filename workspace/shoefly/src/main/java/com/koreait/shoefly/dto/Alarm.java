package com.koreait.shoefly.dto;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@ToString
@NoArgsConstructor
public class Alarm {
	
	// 알람 일련번호 
    private int alarmNo;

    // 아이디 
    private String memberId;

    // 알람 내용 
    private String content;

    // 알림 읽음 여부 
    private Integer state;
    
}
