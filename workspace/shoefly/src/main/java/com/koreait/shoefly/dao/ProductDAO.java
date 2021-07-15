package com.koreait.shoefly.dao;

import java.util.List;
import java.util.Map;

import com.koreait.shoefly.dto.Product;
import com.koreait.shoefly.dto.ProductBuy;
import com.koreait.shoefly.dto.ProductSell;

public interface ProductDAO {
	public List<Product> selectAllList();
	public List<Product> selectCondition(Map<String, Object> paramMap);
	public Product selectProductByProductNo(String productNo);
	public ProductSell selectBuyPriceBySize(int size, String productName);
	public ProductBuy selectSellPriceBySize(int size, String productName);
}