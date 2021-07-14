package com.koreait.shoefly.dao;

import java.util.List;
import java.util.Map;

import com.koreait.shoefly.dto.Product;
import com.koreait.shoefly.dto.Review;
import com.koreait.shoefly.dto.ReviewComment;

public interface ReviewDAO {

	public int countReview(Map<String, Object> map);
	
	public List<Review> selectListReview(Map<String, Object> map);
	
	public List<Product> selectProduct();
	
	public int insertReview(String loginId, String prductName, String title, String content, String filename);
	
	public Review selectReview(int reviewNo);
	
	public int updateReview(String title, String content, String productName, String filename, int reviewNo);
	
	
	// ================= review comment ========================================================================
	
	public List<ReviewComment> selectCommentList(int reviewNo);
	
	public int insertComment(int reviewNo, String memberId, String context);
	
}
