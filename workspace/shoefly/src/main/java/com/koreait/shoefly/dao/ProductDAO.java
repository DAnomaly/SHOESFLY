package com.koreait.shoefly.dao;

import java.util.List;
import java.util.Map;

import com.koreait.shoefly.dto.MemberAddress;
import com.koreait.shoefly.dto.Product;

public interface ProductDAO {
	public List<Product> selectAllList(Map<String, Object> listMap);
	public List<Product> selectCondition(Map<String, Object> paramMap);
	public Product selectProductByProductNo(String productNo);
	public Long selectBuyPriceBySize(int productSize, String productName);
	public Long selectSellPriceBySize(int productSize, String productName);
	public int countProduct();
	public int countConditionProduct(Map<String, Object> paramMap);
	public Product buyApplication(String productName, int productSize);
	public Long hightPriceInBuy(String productName, int productSize);
	public Long lowPriceInSell(String productName, int productSize);
	public List<MemberAddress> selectMemberAddr(String memberId);
}