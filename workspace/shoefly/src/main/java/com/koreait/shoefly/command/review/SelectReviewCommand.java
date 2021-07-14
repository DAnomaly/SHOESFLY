package com.koreait.shoefly.command.review;

import java.net.URLDecoder;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;

import com.koreait.shoefly.dao.ReviewDAO;
import com.koreait.shoefly.dto.Review;

@Component
public class SelectReviewCommand implements ReviewCommand {

	@Override
	public Map<String, Object> execute(SqlSession sqlSession, Model model) {

		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		
		int reviewNo = Integer.parseInt(request.getParameter("reviewNo"));
		
		ReviewDAO reviewDAO = sqlSession.getMapper(ReviewDAO.class);
		
		Review review = reviewDAO.selectReview(reviewNo);
		model.addAttribute("review", review);
		
		try {
			model.addAttribute("filename", URLDecoder.decode(review.getImage(), "UTF-8"));
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}

}
