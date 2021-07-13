package com.koreait.shoefly.dao;

import java.util.List;

import com.koreait.shoefly.dto.Product;

public interface ProductDAO {
	public List<Product> selectAllList();
	public List<Product> selectCondition(String size);
}
