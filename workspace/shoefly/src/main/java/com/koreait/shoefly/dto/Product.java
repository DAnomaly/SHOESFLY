package com.koreait.shoefly.dto;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@ToString
@NoArgsConstructor
public class Product {

	// 상품번호 
    private String productNo;

    // 상품이름 
    private String productName;

    // 브랜드 
    private String brand;

    // 정가 
    private Long price;

    // 이미지 
    private String image;

    // 상태 
    private Integer state;
    
}
