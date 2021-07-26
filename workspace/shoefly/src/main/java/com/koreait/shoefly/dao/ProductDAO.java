package com.koreait.shoefly.dao;

import java.util.List;
import java.util.Map;

import com.koreait.shoefly.dto.MemberAddress;
import com.koreait.shoefly.dto.Product;

public interface ProductDAO {
	public List<Product> selectAllList(Map<String, Object> listMap);
	public List<Product> selectCondition(Map<String, Object> paramMap);
	public Product selectProductByProductNo(String productNo);
	public Long selectBuyPriceBySizeNoId(int productSize, String productName);
	public Long selectSellPriceBySizeNoId(int productSize, String productName);
	public Long selectBuyPriceBySize(int productSize, String productName, String memberId);
	public Long selectSellPriceBySize(int productSize, String productName, String memberId);
	public long selectProductSellNo(int productSize, String productName, String memberId);	//판매상품 번호찾기
	public int countProduct();
	public int countConditionProduct(Map<String, Object> paramMap);
	public Product buyApplication(String productName, int productSize);
	public List<MemberAddress> selectMemberAddr(String memberId);
	public int insertNewAddress(String memberId, String addrName, String addr1, String addr2);
	public long maxMemberAddressNo();
	public int insertBuyApplication(String memberId, String productName, int productSize, long price, long MemberAddressNo);;
	public int insertSellApplication(String memberId, String productName, int productSize, long price, long MemberAddressNo);;
	public int insertBuy(String memberId, String productName, int productSize, long price, long MemberAddressNo);
	public long selectMaxProductBuyNo();
	public int updateSellProduct(long MaxproductBuyNo, long productSellNo);
}