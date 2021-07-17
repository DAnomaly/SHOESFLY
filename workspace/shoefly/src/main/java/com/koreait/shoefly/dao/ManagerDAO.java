package com.koreait.shoefly.dao;

import java.util.List;
import java.util.Map;

import com.koreait.shoefly.dto.Faq;
import com.koreait.shoefly.dto.Member;
import com.koreait.shoefly.dto.MemberAddress;
import com.koreait.shoefly.dto.Notice;
import com.koreait.shoefly.dto.Product;
import com.koreait.shoefly.dto.ProductDetail;
import com.koreait.shoefly.dto.Review;

public interface ManagerDAO {

	// MEMBER
	public int countMember(Map<String, Object> map);
	public List<Member> selectListMember(Map<String, Object> map);
	public Member selectOneMember(long memberNo);
	public int deleteMember(Map<String, Object> map);
	public List<MemberAddress> selectListMemberAddress(Long memberNo);
	public int updateMemberPw(Member member);
	
	// PRODUCT
	public int countProduct(Map<String, Object> map);
	public List<Product> selectListProduct(Map<String, Object> map);
	public Product selectOneProdcut(String productNo);
	public List<ProductDetail> selectListProductDetail(String productName);
	public int insertProduct(Product product);
	public int insertProductDetail(ProductDetail productDetail);
	public int updateProductState(Product product);
	public int countProductBuyForProduct(String productNo);
	public int countProductSellForProduct(String productNo);
	public int countReviewForProduct(String productNo);
	public int deleteProductDetails(String productNo);
	public int deleteProduct(String productNo);
	
	// NOTICE/FAQ
	public int countNotice(Map<String, Object> map);
	public List<Notice> selectListNotice(Map<String, Object> map);
	public int countFaq(Map<String, Object> map);
	public List<Faq> selectListFaq(Map<String, Object> map);
	public Notice selectOneNotice(long noticeNo);
	public Faq selectOneFaq(long faqNo);
	public int insertNotice(Notice notice);
	public int updateNotice(Notice notice);
	public int deleteNotice(long noticeNo);
	public int insertFaq(Faq faq);
	public int updateFaq(Faq faq);
	public int deleteFaq(long faqNo);
	
	// REVIEW
	public int countReview();
	public List<Review> selectListReview(Map<String, Object> pageMap);
	public int deleteReview(Review review);
	public int restoreReview(Review review);
}
