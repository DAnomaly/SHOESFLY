package com.koreait.shoesfly.dto;

import com.koreait.shoesfly.util.PagingUtils;

import lombok.Data;
import lombok.ToString;

/**
 * Paging 작업을 위한 DTO
 * 
 * @see PagingUtils
 * @author 박세환
 */
@Data
@ToString
public class Page {
	private int page;
	private int totalRecord;
	private int recordPerPage;
	private int beginRecord;
	private int endRecord;
	private int totalPage;
	private int pagePerBlock;
	private int beginPage;
	private int endPage;
}