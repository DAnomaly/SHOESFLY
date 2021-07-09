package com.koreait.shoesfly.dto;

import java.sql.Date;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@ToString
@NoArgsConstructor
public class ProductBuy {

	// 구매 일련번호 
    private int productBuyNo;

    // 아이디 
    private String memberId;

    // 상품 일련번호 
    private int productDetailNo;

    // 구매가격 
    private Long price;

    // 구매자주소 
    private int memberAddressNo;

    // 구매등록일자 
    private Date postdate;

    // 구매완료일자 
    private Date buydate;

    // 등록/취소/구매완료 
    private Integer state;
    
}
