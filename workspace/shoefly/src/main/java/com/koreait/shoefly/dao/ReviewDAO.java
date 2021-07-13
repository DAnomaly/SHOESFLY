package com.koreait.shoefly.dao;

import java.util.List;
import java.util.Map;

import com.koreait.shoefly.dto.Review;

public interface ReviewDAO {

	public int countReview(Map<String, Object> map);
	public List<Review> selectListReview(Map<String, Object> map);
	
}
