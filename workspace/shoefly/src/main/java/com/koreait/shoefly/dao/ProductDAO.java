package com.koreait.shoefly.dao;

import java.util.List;
import java.util.Map;

import com.koreait.shoefly.dto.Product;

public interface ProductDAO {
	public List<Product> selectAllList();
	public List<Product> selectCondition(Map<String, Object> paramMap);
	public Product selectProductByProductNo(String productNo);
}
