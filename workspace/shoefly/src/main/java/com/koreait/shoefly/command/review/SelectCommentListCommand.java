package com.koreait.shoefly.command.review;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;

import com.koreait.shoefly.dao.ReviewDAO;
import com.koreait.shoefly.dto.ReviewComment;

@Component
public class SelectCommentListCommand implements ReviewCommand {

	@Override
	public Map<String, Object> execute(SqlSession sqlSession, Model model) {
		
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		
		int reviewNo = Integer.parseInt(request.getParameter("reviewNo"));
		
		ReviewDAO reviewDAO = sqlSession.getMapper(ReviewDAO.class);
		List<ReviewComment> commentList = reviewDAO.selectCommentList(reviewNo);
		
		Map<String, Object> resultMap = new HashMap<>();

		
		if (commentList.size() == 0) {
			resultMap.put("status", 500);
		}else {
			resultMap.put("status", 200);
			resultMap.put("commentList", commentList);
		}
		
		
		return resultMap;
	}

}
